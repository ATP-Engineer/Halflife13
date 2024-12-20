/datum/team/hivemind
	name = "One Mind"

/datum/antagonist/hivevessel
	name = "Awoken Vessel"
	job_rank = ROLE_BRAINWASHED
	antag_hud_name = "hivevessel"
	roundend_category = "awoken vessels"
	show_in_antagpanel = TRUE
	antagpanel_category = "Other"
	show_name_in_check_antagonists = TRUE
	var/datum/team/hivemind/one_mind
	var/mutable_appearance/glow

/mob/living/proc/is_wokevessel()
	return mind?.has_antag_datum(/datum/antagonist/hivevessel)

/mob/living/proc/hive_awaken(objective, datum/team/hivemind/final_form)
	if(!mind)
		return
	var/datum/mind/M = mind
	var/datum/antagonist/hivevessel/vessel = M.has_antag_datum(/datum/antagonist/hivevessel)
	if(!vessel)
		vessel = new()
	if(final_form)
		vessel.objectives = list() //Reset objectives on re-awoken vessels
		var/datum/action/cooldown/spell/hive_comms/comms = new(src)
		comms.Grant(src)
		vessel.one_mind = final_form
		vessel.one_mind.add_member(M)
		vessel.objectives |= vessel.one_mind.objectives
	else
		var/datum/objective/brainwashing/obj = new(objective)
		vessel.objectives += obj
		var/message = " has been awoken with the following objectives: [objective]."
		deadchat_broadcast(message, "<b>[M]</b>", follow_target = M, turf_target = get_turf(M), message_type=DEADCHAT_REGULAR)
		log_game("[key_name(M)] has been awoken with the following objectives: [objective]")
	if(!M.has_antag_datum(/datum/antagonist/hivevessel))
		M.add_antag_datum(vessel)

/datum/antagonist/hivevessel/apply_innate_effects()
	handle_clown_mutation(owner.current, "Our newfound powers allow us to overcome our clownish nature, allowing us to wield weapons with impunity.")

/datum/antagonist/hivevessel/greet()
	to_chat(owner, span_assimilator("Your mind is suddenly opened, as you see the pinnacle of evolution..."))
	to_chat(owner, "<big><span class='warning'><b>Follow your objectives, at any cost!</b></span></big>")
	var/i = 1
	for(var/X in objectives)
		var/datum/objective/O = X
		to_chat(owner, "<b>[i].</b> [O.explanation_text]")
		i++

/datum/antagonist/hivevessel/on_removal()
	if(owner?.current && glow)
		owner.current.cut_overlay(glow)
	if(one_mind && owner)
		one_mind.remove_member(owner)
	..()

/datum/antagonist/hivevessel/farewell()
	to_chat(owner, span_assimilator("Your mind closes up once more..."))
	to_chat(owner, "<big><span class='warning'><b>You feel the weight of your objectives disappear! You no longer have to obey them.</b></span></big>")

/datum/antagonist/hivevessel/roundend_report()
	if(!owner)
		CRASH("antagonist datum without owner")

	if(one_mind)
		return printplayer(owner)

	var/list/report = list()
	report += printplayer(owner)
	if(objectives.len)
		report += printobjectives(objectives)
	return report.Join("<br>")
