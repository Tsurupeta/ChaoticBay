/obj/item/ammo_magazine/a357
	//name = "ammo box (.357)"
	//desc = "A box of .357 ammo"
	//icon_state = "357"
	name = "speed loader (.357)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	caliber = ".357"
	ammo_type = /obj/item/ammo_casing/a357
	matter = list(MATERIAL_STEEL = 1260)
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c50
	name = "speed loader (.50)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	caliber = ".50"
	ammo_type = /obj/item/ammo_casing/a50
	matter = list(MATERIAL_STEEL = 1260)
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c38
	name = "speed loader (.38)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	caliber = ".38"
	matter = list(MATERIAL_STEEL = 360)
	ammo_type = /obj/item/ammo_casing/c38
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c38/rubber
	name = "speed loader (.38, rubber)"
	icon_state = "R38"
	ammo_type = /obj/item/ammo_casing/c38/rubber

/obj/item/ammo_magazine/c38/spec
	name = "speed loader (.38 SPEC)"
	desc = "A five-round speed loader for M2019."
	icon_state = "38spec"
	ammo_type = /obj/item/ammo_casing/c38/spec
	matter = list(MATERIAL_STEEL = 1000)
	max_ammo = 5

/obj/item/ammo_magazine/c38/chem
	name = "speed loader (.38 CHEM)"
	desc = "A five-round speed loader for M2019."
	icon_state = "38chem"
	ammo_type = /obj/item/ammo_casing/c38/chem
	matter = list(MATERIAL_STEEL = 1500)
	max_ammo = 5

/obj/item/ammo_magazine/c44
	name = "speed loader (.44 magnum)"
	desc = "A speed loader for revolvers."
	icon_state = "38"
	ammo_type = /obj/item/ammo_casing/c44
	matter = list(MATERIAL_STEEL = 450)
	caliber = ".44"
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c44/rubber
	name = "speed loader (.44 magnum, rubber)"
	icon_state = "R38"
	ammo_type = /obj/item/ammo_casing/c44/rubber

/obj/item/ammo_magazine/c45m
	name = "magazine (.45)"
	icon_state = "45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c45
	matter = list(MATERIAL_STEEL = 525) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = ".45"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/c45m/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c45m/rubber
	name = "magazine (.45, rubber)"
	icon_state = "45r"
	ammo_type = /obj/item/ammo_casing/c45/rubber

/obj/item/ammo_magazine/c45m/practice
	name = "magazine (.45, practice)"
	ammo_type = /obj/item/ammo_casing/c45/practice

/obj/item/ammo_magazine/c45m/flash
	name = "magazine (.45, flash)"
	ammo_type = /obj/item/ammo_casing/c45/flash

/obj/item/ammo_magazine/c45m/stun
	name = "magazine (.45, stun)"
	icon_state = "45s"
	desc = "A magazine for some kind of gun. This one has yellow strips on its sides."
	ammo_type = /obj/item/ammo_casing/c45/stun

/obj/item/ammo_magazine/c45uzi
	name = "stick magazine (.45)"
	icon_state = "uzi45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c45
	matter = list(MATERIAL_STEEL = 1200)
	caliber = ".45"
	max_ammo = 16
	multiple_sprites = 1

/obj/item/ammo_magazine/c45uzi/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm
	name = "magazine (9mm)"
	icon_state = "9x19p"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	matter = list(MATERIAL_STEEL = 480)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm/flash
	name = "magazine (9mm, flash)"
	ammo_type = /obj/item/ammo_casing/c9mm/flash

/obj/item/ammo_magazine/box/c9mm
	name = "ammunition box (9mm)"
	icon_state = "9mm-box"
	origin_tech = list(TECH_COMBAT = 2)
	matter = list(MATERIAL_STEEL = 1800)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 30

/obj/item/ammo_magazine/box/c9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/emp
	name = "ammunition box (.38, haywire)"
	icon_state = "empbox"
	origin_tech = list(TECH_COMBAT = 2)
	max_ammo = 10
	ammo_type = /obj/item/ammo_casing/c38/emp
	caliber = ".38"

/obj/item/ammo_magazine/box/emp/c45
	name = "ammunition box (.45, haywire)"
	ammo_type = /obj/item/ammo_casing/c45/emp
	caliber = ".45"

/obj/item/ammo_magazine/box/emp/a10mm
	name = "ammunition box (10mm, haywire)"
	ammo_type = /obj/item/ammo_casing/a10mm/emp
	caliber = "10mm"

/obj/item/ammo_magazine/mc9mmt
	name = "top mounted magazine (9mm)"
	icon_state = "9mmt"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c9mm
	matter = list(MATERIAL_STEEL = 1200)
	caliber = "9mm"
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mmt/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mmt/rubber
	name = "top mounted magazine (9mm, rubber)"
	icon_state = "9mmtr"
	ammo_type = /obj/item/ammo_casing/c9mm/rubber

/obj/item/ammo_magazine/mc9mmt/practice
	name = "top mounted magazine (9mm, practice)"
	ammo_type = /obj/item/ammo_casing/c9mm/practice

/obj/item/ammo_magazine/box/c45
	name = "ammunition box (.45)"
	icon_state = "9mm-box"
	origin_tech = list(TECH_COMBAT = 2)
	caliber = ".45"
	matter = list(MATERIAL_STEEL = 2250)
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 30

/obj/item/ammo_magazine/box/c45/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a10mm
	name = "magazine (10mm)"
	icon_state = "10mm"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "10mm"
	matter = list(MATERIAL_STEEL = 1500)
	ammo_type = /obj/item/ammo_casing/a10mm
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/a10mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a762
	name = "magazine (7.62mm)"
	icon_state = "5.56"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "7.62"
	matter = list(MATERIAL_STEEL = 1800)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 15 //if we lived in a world where normal mags had 30 rounds, this would be a 20 round mag
	multiple_sprites = 1

/obj/item/ammo_magazine/a762/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a762/practice
	name = "magazine (7.62mm, practice)"
	ammo_type = /obj/item/ammo_casing/a762/practice

/obj/item/ammo_magazine/a50
	name = "magazine (.50)"
	icon_state = "50ae"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".50"
	matter = list(MATERIAL_STEEL = 1260)
	ammo_type = /obj/item/ammo_casing/a50
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/a50/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a20
	name = "ammo magazine (20mm)"
	icon_state = "75"
	mag_type = MAGAZINE
	caliber = "20mm"
	ammo_type = /obj/item/ammo_casing/a20
	multiple_sprites = 1
	max_ammo = 4

/obj/item/ammo_magazine/a20/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/a556
	name = "magazine box (5.56mm)"
	icon_state = "a556"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "5.56"
	matter = list(MATERIAL_STEEL = 5400)
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 60
	multiple_sprites = 1

/obj/item/ammo_magazine/box/a556/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c556
	name = "magazine (5.56mm)"
	icon_state = "c762"
	mag_type = MAGAZINE
	caliber = "5.56"
	matter = list(MATERIAL_STEEL = 2250)
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 25
	multiple_sprites = 1

/obj/item/ammo_magazine/caps
	name = "speed loader (caps)"
	desc = "A cheap plastic speed loader for some kind of revolver."
	icon_state = "T38"
	caliber = "caps"
	color = "#ff0000"
	ammo_type = /obj/item/ammo_casing/cap
	matter = list(MATERIAL_STEEL = 600)
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/handful/s12g
	name = "12g slugs handful"
	desc = "A handful of 12 gauge slug shells."
	icon_state = "12g"
	ammo_string = "slug"
	max_ammo = 4
	caliber = "12g"
	ammo_type = /obj/item/ammo_casing/s12g

/obj/item/ammo_magazine/handful/s12g/pellet
	name = "12g buckshot handful"
	desc = "A handful of 12 gauge 000 buck shells."
	ammo_string = "buck"
	ammo_type = /obj/item/ammo_casing/s12g/pellet

/obj/item/ammo_magazine/handful/s12g/blank
	name = "12g blanks handful"
	desc = "A handful of 12 gauge blank shells."
	ammo_string = "blank"
	ammo_type = /obj/item/ammo_casing/s12g/blank

/obj/item/ammo_magazine/handful/s12g/beanbag
	name = "12g beanbags handful"
	desc = "A handful of 12 gauge beanbag shells."
	ammo_string = "bean"
	ammo_type = /obj/item/ammo_casing/s12g/beanbag

/obj/item/ammo_magazine/handful/s12g/stunshell
	name = "12g stun shells handful"
	desc = "A handful of 12 gauge stun shells."
	ammo_string = "stun"
	ammo_type = /obj/item/ammo_casing/s12g/stunshell

/obj/item/ammo_magazine/handful/s12g/flash
	name = "12g flash shells handful"
	desc = "A handful of 12 gauge flash shells."
	ammo_string = "flash"
	ammo_type = /obj/item/ammo_casing/s12g/flash

/obj/item/ammo_magazine/handful/s12g/emp
	name = "12g haywire handful"
	desc = "A handful of 12 gauge haywire shells."
	ammo_string = "emp"
	ammo_type = /obj/item/ammo_casing/s12g/emp

/obj/item/ammo_magazine/handful/s12g/practice
	name = "12g practice shells handful"
	desc = "A handful of 12 gauge practice shells."
	ammo_string = "pract"
	ammo_type = /obj/item/ammo_casing/s12g/practice

/obj/item/ammo_magazine/handful/a357
	name = ".357 rounds handful"
	desc = "A handful of .357 rounds."
	icon_state = "357-box"
	ammo_string = ""
	max_ammo = 5
	caliber = ".357"
	ammo_type = /obj/item/ammo_casing/a357

/obj/item/ammo_magazine/handful/a50
	name = ".50 rounds handful"
	desc = "A handful of .50 AE rounds."
	icon_state = "357-box"
	ammo_string = ""
	max_ammo = 5
	caliber = ".357"
	ammo_type = /obj/item/ammo_casing/a50

/obj/item/ammo_magazine/handful/c38
	name = ".38 rounds handful"
	desc = "A handful of .38 rounds."
	icon_state = "357-box"
	ammo_string = ""
	max_ammo = 5
	caliber = ".357"
	ammo_type = /obj/item/ammo_casing/c38

/obj/item/ammo_magazine/handful/c38/rubber

/obj/item/ammo_magazine/handful/c38/spec

/obj/item/ammo_magazine/handful/c38/chem

/obj/item/ammo_magazine/handful/c38/emp

/obj/item/ammo_magazine/handful/c9mm

/obj/item/ammo_magazine/handful/c9mm/flash

/obj/item/ammo_magazine/handful/c9mm/rubber

/obj/item/ammo_magazine/handful/c9mm/practice

/obj/item/ammo_magazine/handful/c44

/obj/item/ammo_magazine/handful/c44/rubber

/obj/item/ammo_magazine/handful/c45
	name = ".45 rounds handful"
	desc = "A handful of .45 ACP rounds."
	icon_state = "045"
	ammo_string = ""
	max_ammo = 7
	caliber = ".45"
	ammo_type = /obj/item/ammo_casing/c45

/obj/item/ammo_magazine/handful/c45/rubber
	ammo_type = /obj/item/ammo_casing/c45/rubber

/obj/item/ammo_magazine/handful/c45/practice
	ammo_type = /obj/item/ammo_casing/c45/practice

/obj/item/ammo_magazine/handful/c45/flash
	ammo_type = /obj/item/ammo_casing/c45/flash

/obj/item/ammo_magazine/handful/c45/stun
	ammo_type = /obj/item/ammo_casing/c45/stun

/obj/item/ammo_magazine/handful/c45/emp

/obj/item/ammo_magazine/handful/a10mm

/obj/item/ammo_magazine/handful/a10mm/emp

/obj/item/ammo_magazine/handful/a556

/obj/item/ammo_magazine/handful/a762

/obj/item/ammo_magazine/handful/a762/practice

/obj/item/ammo_magazine/handful/a145

/obj/item/ammo_magazine/handful/a145/apds

/obj/item/ammo_magazine/box/s12ga
	name = "12ga box"
	icon_state = "shotgunshells"
	caliber = "12g"
	ammo_type = /obj/item/ammo_casing/s12g/pellet
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/box/s12ga/down
	name = "12ga box down"
	icon_state = "dshotgunshells"
