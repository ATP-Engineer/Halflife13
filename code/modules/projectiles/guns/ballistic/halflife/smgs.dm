/obj/item/gun/ballistic/automatic/mp7
	name = "\improper MP7 SMG"
	desc = "A burst pattern SMG."
	icon = 'icons/obj/guns/halflife/projectile.dmi'
	icon_state = "mp7"
	fire_sound = "sound/weapons/halflife/smgfire.ogg"
	mag_type = /obj/item/ammo_box/magazine/mp7
	bolt_type = BOLT_TYPE_LOCKING
	mag_display = TRUE
	show_bolt_icon = FALSE
	burst_size = 3
	fire_delay = 1

/obj/item/gun/ballistic/automatic/mp7/no_mag
	spawnwithmagazine = FALSE
