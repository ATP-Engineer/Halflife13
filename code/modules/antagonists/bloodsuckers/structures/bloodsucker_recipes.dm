/// From recipes.dm

/////////////////////////
///      Coffins      ///
/////////////////////////

/datum/crafting_recipe/meatcoffin
	name = "Meat Coffin"
	result = /obj/structure/closet/crate/coffin/meatcoffin
	tool_behaviors = list(TOOL_WELDER, TOOL_WRENCH)
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/slab = 5,
		/obj/item/restraints/handcuffs/cable = 1,
	)
	time = 15 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE //The sacred coffin!

////////////////////////////
///      Structures      ///
////////////////////////////

/datum/crafting_recipe/bloodaltar
	name = "Blood Altar"
	result = /obj/structure/bloodsucker/bloodaltar
	tool_behaviors = list(TOOL_WELDER, TOOL_WRENCH)
	reqs = list(
		/obj/item/stack/rods = 5,
		/obj/item/stack/sheet/metal = 5,
		/datum/reagent/ash = 30,
	)
	time = 13 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE

/datum/crafting_recipe/restingplace
	name = "Resting Place"
	result = /obj/structure/bloodsucker/bloodaltar/restingplace
	tool_behaviors = list(TOOL_WRENCH, TOOL_SCREWDRIVER)
	reqs = list(
		/obj/item/stack/rods = 5,
		/obj/item/stack/sheet/metal = 5,
		/obj/item/stack/sheet/cloth = 2, //that's right it comes with bones FREE OF CHARGE
	)
	time = 15 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE

/datum/crafting_recipe/vassalrack
	name = "Persuasion Rack"
	result = /obj/structure/bloodsucker/vassalrack
	tool_behaviors = list(TOOL_WELDER, TOOL_WRENCH)
	reqs = list(
		/obj/item/stack/sheet/mineral/wood = 3,
		/obj/item/stack/sheet/metal = 2,
		/obj/item/restraints/handcuffs/cable = 2,
	)
	time = 15 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE

/datum/crafting_recipe/staketrap
	name = "Stake Trap"
	result = /obj/item/restraints/legcuffs/beartrap/bloodsucker
	tool_behaviors = list(TOOL_SCREWDRIVER, TOOL_HATCHET)
	reqs = list(
		/obj/item/stake = 2,
		/obj/item/stack/sheet/mineral/wood = 2,
		/obj/item/restraints/handcuffs/cable = 1,
	)
	time = 12.5 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE

/datum/crafting_recipe/candelabrum
	name = "Candelabrum"
	result = /obj/structure/bloodsucker/candelabrum
	tool_behaviors = list(TOOL_WELDER, TOOL_WRENCH)
	reqs = list(
		/obj/item/stack/sheet/metal = 3,
		/obj/item/stack/rods = 1,
		/obj/item/candle = 1,
	)
	time = 10 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE

/datum/crafting_recipe/moldingstone
	name = "Molding Stone"
	result = /obj/structure/bloodsucker/moldingstone
	tool_behaviors = list(TOOL_WELDER)
	tool_paths = list(/obj/item/bloodsucker/chisel)
	reqs = list(
		/obj/item/stack/sheet/metal = 5,
		/obj/item/stack/rods = 6,
	)
	time = 8 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE

/*
/datum/crafting_recipe/bloodthrone
	name = "Blood Throne"
	result = /obj/structure/bloodsucker/bloodthrone
	tool_behaviors = list(TOOL_WRENCH)
	reqs = list(
		/obj/item/stack/sheet/cloth = 3,
		/obj/item/stack/sheet/metal = 5,
		/obj/item/stack/sheet/mineral/wood = 1,
	)
	time = 5 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE
*/

/datum/crafting_recipe/possessedarmor
	name = "Subservent Armor"
	result = /obj/structure/bloodsucker/possessedarmor
	tool_behaviors = list(TOOL_WRENCH, TOOL_WELDER, TOOL_SCREWDRIVER)
	reqs = list(
		/obj/item/stack/rods = 5,
		/obj/item/stack/sheet/metal = 15,
	)
	time = 10 SECONDS
	category = CAT_STRUCTURES
	always_available = FALSE

////////////////////////
///      Stakes      ///
////////////////////////

/datum/crafting_recipe/stake
	name = "Stake"
	result = /obj/item/stake
	reqs = list(/obj/item/stack/sheet/mineral/wood = 3)
	time = 8 SECONDS
	category = CAT_WEAPON_MELEE

/datum/crafting_recipe/woodenducky
	name = "Wooden Ducky"
	result = /obj/item/stake/ducky
	tool_behaviors = list(TOOL_HATCHET)
	reqs = list(
		/obj/item/stake = 1,
		/obj/item/bikehorn/rubberducky = 1,
	)
	time = 6 SECONDS
	category = CAT_WEAPON_MELEE
	always_available = FALSE

/datum/crafting_recipe/hardened_stake
	name = "Hardened Stake"
	result = /obj/item/stake/hardened
	tool_behaviors = list(TOOL_WELDER)
	reqs = list(/obj/item/stack/rods = 1)
	time = 6 SECONDS
	category = CAT_WEAPON_MELEE
	always_available = FALSE

/datum/crafting_recipe/silver_stake
	name = "Silver Stake"
	result = /obj/item/stake/hardened/silver
	tool_behaviors = list(TOOL_WELDER)
	reqs = list(
		/obj/item/stack/sheet/mineral/silver = 1,
		/obj/item/stake/hardened = 1,
	)
	time = 8 SECONDS
	category = CAT_WEAPON_MELEE
	always_available = FALSE

////////////////////////
///      Tools       ///
////////////////////////

/datum/crafting_recipe/chisel
	name = "Chisel"
	result = /obj/item/bloodsucker/chisel
	tool_behaviors = list(TOOL_WELDER, TOOL_SCREWDRIVER)
	reqs = list(
		/obj/item/stack/sheet/metal = 3
	)
	time = 5 SECONDS
	category = CAT_TOOLS
	always_available = FALSE

/*
/datum/crafting_recipe/bloodybrush
	name = "Artist's Brush"
	result = /obj/item/bloodsucker/bloodybrush
	tool_behaviors = list(TOOL_HATCHET)
	reqs = list(
		/obj/item/stack/sheet/mineral/wood = 2,
		/obj/item/stack/sheet/cloth = 1,
	)
	time = 5 SECONDS
	category = CAT_TOOLS
	always_available = FALSE
*/
