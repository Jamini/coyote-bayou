//////////////////////
// PISTOL MAGAZINES //
//////////////////////

/obj/item/ammo_box
	var/special_ammo = FALSE

/obj/item/ammo_box/update_overlays()
	. = ..()
	if(special_ammo)
		. += ("[initial(icon_state)]_x")

//.22
/obj/item/ammo_box/magazine/m22
	name = "pistol magazine (.22lr)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "pistol22"
	ammo_type = /obj/item/ammo_casing/a22
	caliber = list(CALIBER_22LR)
	max_ammo = 16
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m22/empty
	start_empty = 1

//9mm
/obj/item/ammo_box/magazine/zipgun
	name = "Zip gun clip (9mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "zip"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = list(CALIBER_9MM)
	max_ammo = 5
	multiple_sprites = 2
	can_change_caliber = TRUE

/obj/item/ammo_box/magazine/zipgun/Initialize()
	. = ..()
	valid_new_calibers = GLOB.zipgun_valid_calibers

//9mm
/obj/item/ammo_box/magazine/m9mm
	name = "9mm pistol magazine (9mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "9mmp"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = list(CALIBER_9MM)
	max_ammo = 10
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mm/empty
	start_empty = 1

//9mm doublestack
/obj/item/ammo_box/magazine/m9mm/doublestack
	name = "doublestack pistol magazine (9mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "m9mmds"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = list(CALIBER_9MM)
	max_ammo = 15
	multiple_sprites = 2


/obj/item/ammo_box/magazine/m9mm/doublestack/empty
	start_empty = 1

//10mm template
/obj/item/ammo_box/magazine/m10mm
	name = "pistol magazine (10mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	desc = "A gun magazine."
	caliber = list(CALIBER_10MM)

//10mm small
/obj/item/ammo_box/magazine/m10mm/adv
	name = "10mm pistol magazine (10mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "m10mm"
	ammo_type = /obj/item/ammo_casing/c10mm
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm/adv/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m10mm/adv/simple

/obj/item/ammo_box/magazine/m10mm/adv/simple/empty
	start_empty = 1

//10mm extended
/obj/item/ammo_box/magazine/m10mm/adv/ext
	name = "10mm extended magazine (10mm)"
	icon_state = "smg10mm"
	ammo_type = /obj/item/ammo_casing/c10mm
	max_ammo = 24
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm/adv/ext/empty
	start_empty = 1

//.45
/obj/item/ammo_box/magazine/m45
	name = "handgun magazine (.45)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "45"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = list(CALIBER_45ACP)
	max_ammo = 8
	multiple_sprites = 1


/obj/item/ammo_box/magazine/m45/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m45/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[round(ammo_count(),4)]"

//.45 socom
/obj/item/ammo_box/magazine/m45/socom
	name = "socom magazine (.45)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "45socom"
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m45/socom/empty
	start_empty = 1

//.44 Magnum
/obj/item/ammo_box/magazine/m44
	name = "handgun magazine (.44 magnum)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/m44
	caliber = list(CALIBER_44)
	max_ammo = 8
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m44/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m44/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[round(ammo_count(),4)]"

/obj/item/ammo_box/magazine/m44/automag
	name = "automag magazine (.44 magnum)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "magnum"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 7
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m44/automag/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m44/automag/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[stored_ammo.len ? "[max_ammo]" : "0"]"

//14mm
/obj/item/ammo_box/magazine/m14mm
	name = "handgun magazine (14mm)"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/p14mm
	caliber = list(CALIBER_14MM)
	max_ammo = 7
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m14mm/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m14mm/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[round(ammo_count(),4)]"

// BETA STUFF // Obsolete
/obj/item/ammo_box/magazine/testbullet
	name = "Bulletcrate"
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "m9mmds"
	ammo_type = /obj/item/ammo_casing/testcasing
	caliber = list(CALIBER_9MM)
	max_ammo = 100
