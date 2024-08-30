
/mob/living/carbon/human/dummy
	real_name = "Test Dummy"
	status_flags = GODMODE|CANPUSH
	mouse_drag_pointer = MOUSE_INACTIVE_POINTER
	visual_only_organs = TRUE
	var/in_use = FALSE

INITIALIZE_IMMEDIATE(/mob/living/carbon/human/dummy)

/mob/living/carbon/human/dummy/Destroy()
	in_use = FALSE
	return ..()

/mob/living/carbon/human/dummy/Life(seconds_per_tick = SSMOBS_DT, times_fired)
	return

/mob/living/carbon/human/dummy/set_species(datum/species/mrace, icon_update = TRUE, pref_load = FALSE)
	harvest_organs()
	return ..()

///Let's extract our dummies organs and limbs for storage, to reduce the cache missed that spamming a dummy cause
/mob/living/carbon/human/dummy/proc/harvest_organs()
	for(var/slot in list(ORGAN_SLOT_BRAIN, ORGAN_SLOT_HEART, ORGAN_SLOT_LUNGS, ORGAN_SLOT_APPENDIX, \
		ORGAN_SLOT_EYES, ORGAN_SLOT_EARS, ORGAN_SLOT_TONGUE, ORGAN_SLOT_LIVER, ORGAN_SLOT_STOMACH))
		var/obj/item/organ/current_organ = getorganslot(slot) //Time to cache it lads
		if(current_organ)
			current_organ.Remove(src, special = TRUE) //Please don't somehow kill our dummy
			SSwardrobe.stash_object(current_organ)

	var/datum/species/current_species = dna.species
	for(var/organ_path in current_species.mutant_organs)
		var/obj/item/organ/current_organ = getorgan(organ_path)
		if(current_organ)
			current_organ.Remove(src, special = TRUE) //Please don't somehow kill our dummy
			SSwardrobe.stash_object(current_organ)

//Instead of just deleting our equipment, we save what we can and reinsert it into SSwardrobe's store
//Hopefully this makes preference reloading not the worst thing ever
/mob/living/carbon/human/dummy/delete_equipment()
	var/list/items_to_check = get_all_slots() + held_items
	var/list/to_nuke = list() //List of items queued for deletion, can't qdel them before iterating their contents in case they hold something
	///Travel to the bottom of the contents chain, expanding it out
	for(var/i = 1; i <= length(items_to_check); i++) //Needs to be a c style loop since it can expand
		var/obj/item/checking = items_to_check[i]
		if(!checking) //Nulls in the list, depressing
			continue
		if(!isitem(checking)) //What the fuck are you on
			to_nuke += checking
			continue

		var/list/contents = checking.contents
		if(length(contents))
			items_to_check |= contents //Please don't make an infinite loop somehow thx
			to_nuke += checking //Goodbye
			continue

		//I'm making the bet that if you're empty of other items you're not going to OOM if reapplied. I assume you're here because I was wrong
		if(ismob(checking.loc))
			var/mob/checkings_owner = checking.loc
			checkings_owner.temporarilyRemoveItemFromInventory(checking, TRUE) //Clear out of there yeah?
		SSwardrobe.stash_object(checking)

	for(var/obj/item/delete as anything in to_nuke)
		qdel(delete)

/mob/living/carbon/human/dummy/proc/wipe_state()
	delete_equipment()
	cut_overlays(TRUE)

/mob/living/carbon/human/dummy/setup_human_dna()
	create_dna()
	randomize_human(src)
	dna.initialize_dna(skip_index = TRUE) //Skip stuff that requires full round init.

/proc/create_consistent_human_dna(mob/living/carbon/human/target)
	target.dna.initialize_dna(skip_index = TRUE)
	
/// Provides a dummy that is consistently bald, white, naked, etc.
/mob/living/carbon/human/dummy/consistent

/mob/living/carbon/human/dummy/consistent/setup_human_dna()
	create_dna()
	create_consistent_human_dna(src)

/// Provides a dummy for unit_tests that functions like a normal human, but with a standardized appearance
/// Copies the stock dna setup from the dummy/consistent type
/mob/living/carbon/human/consistent

/mob/living/carbon/human/consistent/setup_human_dna()
	create_dna()
	create_consistent_human_dna(src)

/mob/living/carbon/human/consistent/update_body(is_creating)
	..()
	if(is_creating)
		fully_replace_character_name(real_name, "John Doe")

//Inefficient pooling/caching way.
GLOBAL_LIST_EMPTY(human_dummy_list)
GLOBAL_LIST_EMPTY(dummy_mob_list)

/proc/generate_or_wait_for_human_dummy(slotkey)
	if(!slotkey)
		return new /mob/living/carbon/human/dummy
	var/mob/living/carbon/human/dummy/D = GLOB.human_dummy_list[slotkey]
	if(istype(D))
		UNTIL(!D.in_use)
	if(QDELETED(D))
		D = new
		GLOB.human_dummy_list[slotkey] = D
		GLOB.dummy_mob_list += D
	D.in_use = TRUE
	return D

/proc/unset_busy_human_dummy(slotnumber)
	if(!slotnumber)
		return
	var/mob/living/carbon/human/dummy/D = GLOB.human_dummy_list[slotnumber]
	if(istype(D))
		D.wipe_state()
		D.in_use = FALSE
