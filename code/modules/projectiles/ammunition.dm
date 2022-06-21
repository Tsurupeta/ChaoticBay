/obj/item/ammo_casing
	name = "bullet casing"
	desc = "A bullet casing."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "pistol-casing"
	randpixel = 10
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT | SLOT_EARS
	throwforce = 0
	w_class = ITEM_SIZE_TINY

	var/leaves_residue = 1
	var/caliber = ""					//Which kind of guns it can be loaded into
	var/projectile_type					//The bullet type to create when New() is called
	var/obj/item/projectile/BB = null	//The loaded bullet - make it so that the projectiles are created only when needed?
	var/spent_icon = "pistol-casing-spent"
	var/inv_icon = ""
	var/ammo_stack = null
	var/casing_fall_sound = SFX_CASING_DROP
	var/casing_insert_sound = SFX_BULLET_INSERT

/obj/item/ammo_casing/Initialize()
	. = ..()
	if(ispath(projectile_type))
		BB = new projectile_type(src)
	register_signal(src, SIGNAL_MOVED, /atom/proc/update_icon)

/obj/item/ammo_casing/Destroy()
	QDEL_NULL(BB)
	unregister_signal(src, SIGNAL_MOVED)
	return ..()

/obj/item/ammo_casing/New()
	..()
	update_icon()

//removes the projectile from the ammo casing
/obj/item/ammo_casing/proc/expend()
	. = BB
	if(BB.projectile_light)
		BB.layer = ABOVE_LIGHTING_LAYER
		BB.plane = EFFECTS_ABOVE_LIGHTING_PLANE
		BB.set_light(BB.projectile_max_bright, BB.projectile_inner_range, BB.projectile_outer_range, BB.projectile_falloff_curve, BB.projectile_brightness_color)
	BB = null
	set_dir(pick(GLOB.alldirs)) //spin spent casings

	// Aurora forensics port, gunpowder residue.
	if(leaves_residue)
		leave_residue()

	update_icon()

/obj/item/ammo_casing/proc/leave_residue()
	var/mob/living/carbon/human/H
	if(ishuman(loc))
		H = loc //in a human, somehow
	else if(loc && ishuman(loc.loc))
		H = loc.loc //more likely, we're in a gun being held by a human

	if(H)
		if(H.gloves && (H.l_hand == loc || H.r_hand == loc))
			var/obj/item/clothing/G = H.gloves
			G.gunshot_residue = caliber
		else
			H.gunshot_residue = caliber

	pixel_x = rand(-randpixel, randpixel)
	pixel_y = rand(-randpixel, randpixel)

/obj/item/ammo_casing/attackby(obj/item/W as obj, mob/user as mob)
	user.setClickCooldown(DEFAULT_WEAPON_COOLDOWN)
	if(isScrewdriver(W))
		if(!BB)
			to_chat(user, SPAN_NOTICE("There is no bullet in the casing to inscribe anything into."))
			return
		var/tmp_label = ""
		var/label_text = sanitizeSafe(input(user, "Inscribe some text into \the [initial(BB.name)]","Inscription",tmp_label), MAX_NAME_LEN)
		if(length(label_text) > 20)
			to_chat(user, SPAN_WARNING("The inscription can be at most 20 characters long."))
		else if(!label_text)
			to_chat(user, SPAN_NOTICE("You scratch the inscription off of [initial(BB)]."))
			BB.SetName(initial(BB.name))
		else
			to_chat(user, SPAN_NOTICE("You inscribe \"[label_text]\" into \the [initial(BB.name)]."))
			BB.SetName("[initial(BB.name)] (\"[label_text]\")")
	if(istype(W, /obj/item/ammo_casing))
		if(src.type == W.type)
			var/obj/item/ammo_casing/C = W
			if(C.BB && src.BB && ammo_stack)
				var/obj/item/ammo_magazine/handful/H = new ammo_stack(C.loc)
				user.remove_from_mob(C)
				C.forceMove(H)
				H.stored_ammo.Add(C)
				if(src.loc == user)
					user.remove_from_mob(src)
				if(istype(src.loc, /obj/item/storage))
					var/obj/item/storage/S = src.loc
					S.remove_from_storage(src)
				forceMove(H)
				H.stored_ammo.Add(src)
				H.update_icon()
				user.put_in_hands(H)
	if(istype(W, /obj/item/ammo_magazine/handful))
		var/obj/item/ammo_magazine/handful/A = W
		if(caliber == A.caliber && src.type == A.ammo_type && src.BB)
			if(A.stored_ammo.len >= A.max_ammo)
				to_chat(user, SPAN_WARNING("[A] is full!"))
				return
			else
				if(src.loc == user)
					user.remove_from_mob(src)
				if(istype(src.loc, /obj/item/storage))
					var/obj/item/storage/S = src.loc
					S.remove_from_storage(src)
				forceMove(A)
				A.stored_ammo.Add(src)
				A.update_icon()
	else
		..()

/obj/item/ammo_casing/update_icon()
	if(spent_icon && !BB)
		icon_state = spent_icon
		return
	if(!isturf(loc))
		icon_state = inv_icon
	else
		icon_state = initial(icon_state)

/obj/item/ammo_casing/_examine_text(mob/user)
	. = ..()
	if (!BB)
		. += "\nThis one is spent."

//Gun loading types
#define SINGLE_CASING 	1	//The gun only accepts ammo_casings. ammo_magazines should never have this as their mag_type.
#define SPEEDLOADER 	2	//Transfers casings from the mag to the gun when used.
#define SINGLE_LOAD		3	//Loads one at a time.
#define MAGAZINE 		4	//The magazine item itself goes inside the gun

//An item that holds casings and can be used to put them inside guns
/obj/item/ammo_magazine
	name = "magazine"
	desc = "A magazine for some kind of gun."
	icon_state = "357-box"
	icon = 'icons/obj/ammo.dmi'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	item_state = "syringe_kit"
	matter = list(MATERIAL_STEEL = 500)
	throwforce = 5
	w_class = ITEM_SIZE_SMALL
	throw_range = 10

	var/bullet_insert_sound = SFX_BULLET_INSERT

	var/list/stored_ammo = list()
	var/mag_type = SPEEDLOADER //ammo_magazines can only be used with compatible guns. This is not a bitflag, the load_method var on guns is.
	var/caliber = ".357"
	var/max_ammo = 7

	var/ammo_type = /obj/item/ammo_casing //ammo type that is initially loaded
	var/initial_ammo = null

	var/multiple_sprites = 0
	//because BYOND doesn't support numbers as keys in associative lists
	var/list/icon_keys = list()		//keys
	var/list/ammo_states = list()	//values

/obj/item/ammo_magazine/box
	w_class = ITEM_SIZE_NORMAL

/obj/item/ammo_magazine/Initialize()
	. = ..()
	if(multiple_sprites)
		initialize_magazine_icondata(src)

	if(isnull(initial_ammo))
		initial_ammo = max_ammo

	if(initial_ammo)
		for(var/i in 1 to initial_ammo)
			stored_ammo += new ammo_type(src)
	update_icon()

/obj/item/ammo_magazine/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W, /obj/item/ammo_casing))
		var/obj/item/ammo_casing/C = W
		if(C.caliber != caliber)
			to_chat(user, SPAN_WARNING("[C] does not fit into [src]."))
			return
		if(stored_ammo.len >= max_ammo)
			to_chat(user, SPAN_WARNING("[src] is full!"))
			return
		user.remove_from_mob(C)
		C.forceMove(src)
		stored_ammo.Add(C)
		if(bullet_insert_sound)
			playsound(user, bullet_insert_sound, rand(45, 60), FALSE)
		update_icon()
	if(istype(W, /obj/item/ammo_magazine/handful))
		var/obj/item/ammo_magazine/handful/A = W
		if(caliber == A.caliber)
			if(!A.stored_ammo.len)
				to_chat(user, SPAN_WARNING("[A] is empty!"))
				return
			else if(stored_ammo.len >= max_ammo)
				to_chat(user, SPAN_WARNING("[src] is full!"))
				return
			else
				var/obj/item/ammo_casing/C = A.stored_ammo[A.stored_ammo.len]
				A.stored_ammo-=C
				C.forceMove(src)
				stored_ammo.Add(C)
				update_icon()
				A.update_icon()
				if(bullet_insert_sound)
					playsound(user, bullet_insert_sound, rand(45, 60), FALSE)
				A.check_ammo()
				if(istype(src, /obj/item/ammo_magazine/handful))
					return
				user.setClickCooldown(DEFAULT_WEAPON_COOLDOWN)
	else ..()

/obj/item/ammo_magazine/attack_self(mob/user)
	if(!stored_ammo.len)
		to_chat(user, SPAN_NOTICE("[src] is already empty!"))
		return
	to_chat(user, SPAN_NOTICE("You empty [src]."))
	for(var/obj/item/ammo_casing/C in stored_ammo)
		C.forceMove(user.loc)
		C.set_dir(pick(GLOB.alldirs))
		C.pixel_x = rand(-C.randpixel, C.randpixel)
		C.pixel_y = rand(-C.randpixel, C.randpixel)
	stored_ammo.Cut()
	update_icon()

/obj/item/ammo_magazine/attack_hand(mob/user)
	if(user.get_inactive_hand() == src)
		if(!stored_ammo.len)
			to_chat(user, SPAN_NOTICE("[src] is already empty!"))
		else
			var/obj/item/ammo_casing/C = stored_ammo[stored_ammo.len]
			stored_ammo-=C
			user.put_in_hands(C)
			user.visible_message("\The [user] removes \a [C] from [src].", SPAN_NOTICE("You remove \a [C] from [src]."))
			if(bullet_insert_sound)
				playsound(user, bullet_insert_sound, rand(45, 60), FALSE)
			update_icon()
	else
		..()
		return

/obj/item/ammo_magazine/update_icon()
	if(multiple_sprites)
		//find the lowest key greater than or equal to stored_ammo.len
		var/new_state = null
		for(var/idx in 1 to icon_keys.len)
			var/ammo_count = icon_keys[idx]
			if (ammo_count >= stored_ammo.len)
				new_state = ammo_states[idx]
				break
		icon_state = (new_state)? new_state : initial(icon_state)

/obj/item/ammo_magazine/_examine_text(mob/user)
	. = ..()
	. += "\nThere [(stored_ammo.len == 1)? "is" : "are"] [stored_ammo.len] round\s left!"

/obj/item/ammo_magazine/proc/check_ammo()
	return

//magazine icon state caching
/var/global/list/magazine_icondata_keys = list()
/var/global/list/magazine_icondata_states = list()

/proc/initialize_magazine_icondata(obj/item/ammo_magazine/M)
	var/typestr = "[M.type]"
	if(!(typestr in magazine_icondata_keys) || !(typestr in magazine_icondata_states))
		magazine_icondata_cache_add(M)

	M.icon_keys = magazine_icondata_keys[typestr]
	M.ammo_states = magazine_icondata_states[typestr]

/proc/magazine_icondata_cache_add(obj/item/ammo_magazine/M)
	var/list/icon_keys = list()
	var/list/ammo_states = list()
	var/list/states = icon_states(M.icon)
	for(var/i = 0, i <= M.max_ammo, i++)
		var/ammo_state = "[M.icon_state]-[i]"
		if(ammo_state in states)
			icon_keys += i
			ammo_states += ammo_state

	magazine_icondata_keys["[M.type]"] = icon_keys
	magazine_icondata_states["[M.type]"] = ammo_states

/obj/item/ammo_magazine/handful
	name = "generic handful"
	desc = "A handful of rounds."
	icon_state = "762"
	item_state = null
	slot_flags = 0
	matter = list()
	force = 0
	throwforce = 0
	var/ammo_string = ""
	max_ammo = 1
	stored_ammo = list()
	mag_type = SINGLE_LOAD
	caliber = "7.62"
	ammo_type = /obj/item/ammo_casing/a762
	initial_ammo = 0
	bullet_insert_sound = null

/obj/item/ammo_magazine/handful/New()
	..()
	update_icon()

/obj/item/ammo_magazine/handful/update_icon()
	icon_state = "[initial(icon_state)][ammo_string]-[stored_ammo.len]"

/obj/item/ammo_magazine/handful/attack_self(mob/user)
	return

/obj/item/ammo_magazine/handful/check_ammo()
	var/ammo_length = stored_ammo.len
	switch(ammo_length)
		if(0)
			qdel(src)
		if(1)
			var/obj/item/ammo_casing/C = stored_ammo[1]
			C.forceMove(get_turf(src))
			var/mob/M
			if(ismob(loc))
				M = loc
			qdel(src)
			if(M)
				M.put_in_hands(C)
		else
			return

/obj/item/ammo_magazine/handful/attack_hand()
	..()
	check_ammo()

/obj/item/ammo_magazine/handful/get_storage_cost()
	check_ammo()
	return stored_ammo[1].get_storage_cost() * stored_ammo.len

/obj/item/ammo_magazine/handful/proc/scatter()
	var/turf/T = get_turf(src)
	if(T)
		for(var/obj/item/ammo_casing/C in stored_ammo)
			C.forceMove(T)
			C.update_icon()
		stored_ammo.Cut()
		check_ammo()

/obj/item/ammo_magazine/handful/throw_impact()
	..()
	scatter()

/obj/item/ammo_magazine/handful/dropped_on_ground()
	..()
	scatter()

/obj/item/ammo_magazine/handful/ex_act()
	scatter()

/obj/item/ammo_magazine/handful/check_airflow_movable()
	scatter()

/obj/item/ammo_magazine/handful/fire_act
	scatter()

/obj/item/ammo_magazine/handful/relaymove()
	scatter()
