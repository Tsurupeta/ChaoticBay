/obj/item/ammo_casing/a357
	desc = "A .357 bullet casing."
	caliber = ".357"
	projectile_type = /obj/item/projectile/bullet/pistol/strong/revolver
	ammo_stack = /obj/item/ammo_magazine/handful/a357

/obj/item/ammo_casing/a50
	desc = "A .50AE bullet casing."
	caliber = ".50"
	projectile_type = /obj/item/projectile/bullet/pistol/strong
	ammo_stack = /obj/item/ammo_magazine/handful/a50

/obj/item/ammo_casing/a20
	desc = "A 20mm bullet casing."
	caliber = "20mm"
	projectile_type = /obj/item/projectile/bullet/gyro

/obj/item/ammo_casing/c38
	desc = "A .38 bullet casing."
	caliber = ".38"
	projectile_type = /obj/item/projectile/bullet/pistol
	ammo_stack = /obj/item/ammo_magazine/handful/c38

/obj/item/ammo_casing/c38/rubber
	desc = "A .38 rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "r-casing"
	ammo_stack = /obj/item/ammo_magazine/handful/c38/rubber

/obj/item/ammo_casing/c38/spec
	desc = "A .38 SPEC bullet casing. Made of a soft alloy and acts like a rubber bullet unless charged-up."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "s-casing"
	ammo_stack = /obj/item/ammo_magazine/handful/c38/spec

/obj/item/ammo_casing/c38/spec/nonlethal
	projectile_type = /obj/item/projectile/energy/electrode/c38

/obj/item/ammo_casing/c38/spec/lethal
	projectile_type = /obj/item/projectile/bullet/pistol/accelerated/c38

/obj/item/ammo_casing/c38/chem
	desc = "A .38 CHEM cartridge. Acts like a flash bullet unless charged-up."
	projectile_type = /obj/item/projectile/energy/flash/c38
	icon_state = "empcasing"
	ammo_stack = /obj/item/ammo_magazine/handful/c38/chem

/obj/item/ammo_casing/c38/chem/nonlethal
	projectile_type = /obj/item/projectile/ion/c38

/obj/item/ammo_casing/c38/chem/lethal
	projectile_type = /obj/item/projectile/energy/c38

/obj/item/ammo_casing/c9mm
	desc = "A 9mm bullet casing."
	inv_icon = "9mm"
	caliber = "9mm"
	projectile_type = /obj/item/projectile/bullet/pistol
	ammo_stack = /obj/item/ammo_magazine/handful/c9mm

/obj/item/ammo_casing/c9mm/flash
	desc = "A 9mm flash shell casing."
	projectile_type = /obj/item/projectile/energy/flash
	ammo_stack = /obj/item/ammo_magazine/handful/c9mm/flash

/obj/item/ammo_casing/c9mm/rubber
	desc = "A 9mm rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "r-casing"
	ammo_stack = /obj/item/ammo_magazine/handful/c9mm/rubber

/obj/item/ammo_casing/c9mm/practice
	desc = "A 9mm practice bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/practice
	ammo_stack = /obj/item/ammo_magazine/handful/c9mm/practice

/obj/item/ammo_casing/c44
	desc = "A .44 magnum bullet casing."
	caliber = ".44"
	projectile_type = /obj/item/projectile/bullet/pistol/medium/revolver
	ammo_stack = /obj/item/ammo_magazine/handful/c44

/obj/item/ammo_casing/c44/rubber
	desc = "A .44 magnum rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "r-casing"
	ammo_stack = /obj/item/ammo_magazine/handful/c44/rubber


/obj/item/ammo_casing/c45
	desc = "A .45 bullet casing."
	caliber = ".45"
	inv_icon = "045"
	projectile_type = /obj/item/projectile/bullet/pistol/medium
	ammo_stack = /obj/item/ammo_magazine/handful/c45

/obj/item/ammo_casing/c45/practice
	desc = "A .45 practice bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/practice
	ammo_stack = /obj/item/ammo_magazine/handful/c45/practice

/obj/item/ammo_casing/c45/rubber
	desc = "A .45 rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "r-casing"
	ammo_stack = /obj/item/ammo_magazine/handful/c45/rubber

/obj/item/ammo_casing/c45/flash
	desc = "A .45 flash shell casing."
	projectile_type = /obj/item/projectile/energy/flash
	ammo_stack = /obj/item/ammo_magazine/handful/c45/flash

/obj/item/ammo_casing/c45/stun
	desc = "A .45 stun cartridge casing."
	projectile_type = /obj/item/projectile/energy/electrode/c45
	ammo_stack = /obj/item/ammo_magazine/handful/c45/stun

/obj/item/ammo_casing/a10mm
	desc = "A 10mm bullet casing."
	caliber = "10mm"
	projectile_type = /obj/item/projectile/bullet/pistol/medium/smg
	ammo_stack = /obj/item/ammo_magazine/handful/a10mm

/obj/item/ammo_casing/s12g
	name = "shotgun slug"
	desc = "A 12 gauge slug."
	icon_state = "slshell"
	spent_icon = "slshell-spent"
	caliber = "12g"
	projectile_type = /obj/item/projectile/bullet/shotgun
	matter = list(MATERIAL_STEEL = 360)
	casing_fall_sound = 'sound/effects/weapons/gun/shell_fall.ogg'
	casing_insert_sound = SFX_SHELL_INSERT
	ammo_stack = /obj/item/ammo_magazine/handful/s12g

/obj/item/ammo_casing/s12g/pellet
	name = "shotgun shell"
	desc = "A 12 gauge shell."
	inv_icon = "12gbuck"
	icon_state = "gshell"
	spent_icon = "gshell-spent"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun
	matter = list(MATERIAL_STEEL = 360)
	ammo_stack = /obj/item/ammo_magazine/handful/s12g/pellet

/obj/item/ammo_casing/s12g/blank
	name = "shotgun shell"
	desc = "A blank shell."
	inv_icon = "12gblank"
	icon_state = "blshell"
	spent_icon = "blshell-spent"
	projectile_type = /obj/item/projectile/bullet/blank
	matter = list(MATERIAL_STEEL = 90)
	ammo_stack = /obj/item/ammo_magazine/handful/s12g/blank

/obj/item/ammo_casing/s12g/practice
	name = "shotgun shell"
	desc = "A practice shell."
	icon_state = "pshell"
	spent_icon = "pshell-spent"
	projectile_type = /obj/item/projectile/bullet/shotgun/practice
	matter = list(MATERIAL_STEEL = 90)
	ammo_stack = /obj/item/ammo_magazine/handful/s12g/practice

/obj/item/ammo_casing/s12g/beanbag
	name = "beanbag shell"
	desc = "A beanbag shell."
	inv_icon = "12gbean"
	icon_state = "bshell"
	spent_icon = "bshell-spent"
	projectile_type = /obj/item/projectile/bullet/shotgun/beanbag
	matter = list(MATERIAL_STEEL = 180)
	ammo_stack = /obj/item/ammo_magazine/handful/s12g/beanbag

//Can stun in one hit if aimed at the head, but
//is blocked by clothing that stops tasers and is vulnerable to EMP
/obj/item/ammo_casing/s12g/stunshell
	name = "stun shell"
	desc = "A 12 gauge taser cartridge."
	icon_state = "stunshell"
	spent_icon = "stunshell-spent"
	projectile_type = /obj/item/projectile/energy/electrode/stunshot
	leaves_residue = 0
	matter = list(MATERIAL_STEEL = 360, MATERIAL_GLASS = 720)
	ammo_stack = /obj/item/ammo_magazine/handful/s12g/stunshell

/obj/item/ammo_casing/s12g/stunshell/emp_act(severity)
	if(prob(100/severity)) BB = null
	update_icon()

//Does not stun, only blinds, but has area of effect.
/obj/item/ammo_casing/s12g/flash
	name = "flash shell"
	desc = "A chemical shell used to signal distress or provide illumination."
	icon_state = "fshell"
	spent_icon = "fshell-spent"
	projectile_type = /obj/item/projectile/energy/flash/flare
	matter = list(MATERIAL_STEEL = 90, MATERIAL_GLASS = 90)
	ammo_stack = /obj/item/ammo_magazine/handful/s12g/flash

/obj/item/ammo_casing/a556
	desc = "A 5.56mm bullet casing."
	caliber = "5.56"
	projectile_type = /obj/item/projectile/bullet/rifle/a556
	icon_state = "rifle-casing"
	inv_icon = "556"
	spent_icon = "rifle-casing-spent"
	ammo_stack = /obj/item/ammo_magazine/handful/a556

/obj/item/ammo_casing/a145
	name = "shell casing"
	desc = "A 14.5mm shell."
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"
	caliber = "14.5mm"
	projectile_type = /obj/item/projectile/bullet/rifle/a145
	matter = list(MATERIAL_STEEL = 1250)
	ammo_stack = /obj/item/ammo_magazine/handful/a145

/obj/item/ammo_casing/a145/apds
	name = "APDS shell casing"
	desc = "A 14.5mm Armour Piercing Discarding Sabot shell."
	projectile_type = /obj/item/projectile/bullet/rifle/a145/apds
	ammo_stack = /obj/item/ammo_magazine/handful/a145/apds

/obj/item/ammo_casing/a762
	desc = "A 7.62mm bullet casing."
	caliber = "7.62"
	projectile_type = /obj/item/projectile/bullet/rifle/a762
	inv_icon = "762"
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"
	ammo_stack = /obj/item/ammo_magazine/handful/a762

/obj/item/ammo_casing/a762/practice
	desc = "A 7.62mm practice bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a762/practice
	ammo_stack = /obj/item/ammo_magazine/handful/a762/practice

/obj/item/ammo_casing/rocket
	name = "rocket shell"
	desc = "A high explosive designed to be fired from a launcher."
	icon_state = "rocketshell"
	w_class = ITEM_SIZE_NORMAL
	projectile_type = /obj/item/missile
	caliber = "rocket"

/obj/item/ammo_casing/cap
	name = "cap"
	desc = "A cap for children toys."
	caliber = "caps"
	color = "#ff0000"
	projectile_type = /obj/item/projectile/bullet/pistol/cap

// EMP ammo.
/obj/item/ammo_casing/c38/emp
	name = ".38 haywire round"
	desc = "A .38 bullet casing fitted with a single-use ion pulse generator."
	icon_state = "empcasing"
	projectile_type = /obj/item/projectile/ion/small
	matter = list(MATERIAL_STEEL = 130, MATERIAL_URANIUM = 100)
	ammo_stack = /obj/item/ammo_magazine/handful/c38/emp

/obj/item/ammo_casing/c45/emp
	name = ".45 haywire round"
	desc = "A .45 bullet casing fitted with a single-use ion pulse generator."
	projectile_type = /obj/item/projectile/ion/small
	icon_state = "empcasing"
	matter = list(MATERIAL_STEEL = 130, MATERIAL_URANIUM = 100)
	ammo_stack = /obj/item/ammo_magazine/handful/c45/emp

/obj/item/ammo_casing/a10mm/emp
	name = "10mm haywire round"
	desc = "A 10mm bullet casing fitted with a single-use ion pulse generator."
	projectile_type = /obj/item/projectile/ion/small
	icon_state = "empcasing"
	matter = list(MATERIAL_STEEL = 130, MATERIAL_URANIUM = 100)
	ammo_stack = /obj/item/ammo_magazine/handful/a10mm/emp

/obj/item/ammo_casing/s12g/emp
	name = "haywire slug"
	desc = "A 12-gauge shotgun slug fitted with a single-use ion pulse generator."
	icon_state = "empshell"
	spent_icon = "empshell-spent"
	projectile_type  = /obj/item/projectile/ion
	matter = list(MATERIAL_STEEL = 260, MATERIAL_URANIUM = 200)
	ammo_stack = /obj/item/ammo_magazine/handful/s12g/emp
