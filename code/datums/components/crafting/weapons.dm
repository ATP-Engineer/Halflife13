// Weapons

/datum/crafting_recipe/IED
	name = "IED"
	result = /obj/item/grenade/iedcasing
	reqs = list(/datum/reagent/fuel = 50,
				/obj/item/stack/cable_coil = 1,
				/obj/item/lighter/greyscale = 1,
				/obj/item/reagent_containers/food/drinks/soda_cans = 1)
	parts = list(/obj/item/reagent_containers/food/drinks/soda_cans = 1)
	time = 1.5 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/molotov
	name = "Molotov"
	result = /obj/item/reagent_containers/food/drinks/bottle/molotov
	reqs = list(/obj/item/reagent_containers/glass/rag = 1,
				/obj/item/reagent_containers/food/drinks/bottle = 1)
	parts = list(/obj/item/reagent_containers/food/drinks/bottle = 1)
	time = 4 SECONDS
	category = CAT_WEAPON_RANGED

// Shank - Makeshift weapon that can embed on throw
/datum/crafting_recipe/shank
	name = "Shank"
	reqs = list(/obj/item/shard = 1,
				/obj/item/stack/rods = 1,
				/obj/item/stack/cable_coil = 10)
	result = /obj/item/kitchen/knife/shank
	time = 1 SECONDS
	category = CAT_WEAPON_MELEE

/datum/crafting_recipe/improvisedslug
	name = "Improvised Shotgun Shell"
	result = /obj/item/ammo_casing/shotgun/improvised
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/cable_coil = 1,
				/datum/reagent/fuel = 5)
	tool_behaviors = list(TOOL_SCREWDRIVER)
	time = 0.5 SECONDS
	category = CAT_WEAPON_AMMO

/datum/crafting_recipe/crossbow
	name = "Rebar Crossbow"
	result = /obj/item/gun/ballistic/bow/crossbow/rebar
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/restraints/handcuffs/cable = 1,
				/obj/item/lighter/greyscale = 1,
				/obj/item/stack/tape = 1)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/rebar
	name = "Rebar Bolt"
	result = /obj/item/ammo_casing/reusable/arrow/rebar
	reqs = list(/obj/item/stack/rods = 3)
	time = 12 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/usp
	name = "USP Match"
	result = /obj/item/gun/ballistic/automatic/pistol/usp/no_mag
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/weaponcrafting/frame/usp = 1,
				/obj/item/weaponcrafting/receiver = 1,
				/obj/item/stack/tape = 1)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/mp7
	name = "MP7"
	result = /obj/item/gun/ballistic/automatic/mp7/no_mag
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/weaponcrafting/frame/mp7 = 1,
				/obj/item/weaponcrafting/receiver = 1,
				/obj/item/stack/tape = 1)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/m4a1
	name = "M4A1"
	result = /obj/item/gun/ballistic/automatic/m4a1/no_mag
	reqs = list(/obj/item/stack/sheet/metal = 7,
				/obj/item/weaponcrafting/frame/m4a1 = 1,
				/obj/item/weaponcrafting/receiver = 1,
				/obj/item/stack/tape = 2)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED

/datum/crafting_recipe/spas12
	name = "SPAS12"
	result = /obj/item/gun/ballistic/shotgun/spas12
	reqs = list(/obj/item/stack/sheet/metal = 7,
				/obj/item/weaponcrafting/frame/spas12 = 1,
				/obj/item/weaponcrafting/receiver = 1,
				/obj/item/stack/tape = 1)
	time = 10 SECONDS
	category = CAT_WEAPON_RANGED
