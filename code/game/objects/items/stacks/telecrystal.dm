/obj/item/stack/telecrystal
	name = "telecrystal"
	desc = "Raw energy used in micro-teleporters engineered and distributed by Lambda scientists."
	singular_name = "telecrystal"
	icon = 'icons/obj/telescience.dmi'
	icon_state = "telecrystal"
	w_class = WEIGHT_CLASS_TINY
	max_amount = 50
	item_flags = NOBLUDGEON
	novariants = FALSE
	grind_results = list(/datum/reagent/redspace = 20)

/obj/item/stack/telecrystal/attack(mob/target, mob/user)
	if(target == user) //You can't go around smacking people with crystals to find out if they have an uplink or not.
		for(var/obj/item/implant/uplink/I in target)
			if(I && I.imp_in)
				var/datum/component/uplink/hidden_uplink = I.GetComponent(/datum/component/uplink)
				if(hidden_uplink)
					hidden_uplink.telecrystals += amount
					use(amount)
					to_chat(user, span_notice("You press [src] onto yourself and charge your hidden uplink."))
	else
		return ..()

/obj/item/stack/telecrystal/afterattack(obj/item/I, mob/user, proximity)
	. = ..()
	if(istype(I, /obj/item/cartridge/virus/frame))
		var/obj/item/cartridge/virus/frame/cart = I
		if(!cart.charges)
			to_chat(user, span_notice("[cart] is out of charges, it's refusing to accept [src]."))
			return
		cart.telecrystals += amount
		use(amount)
		to_chat(user, span_notice("You slot [src] into [cart].  The next time it's used, it will also give telecrystals."))

/obj/item/stack/telecrystal/five
	amount = 5

/obj/item/stack/telecrystal/twenty
	amount = 20
