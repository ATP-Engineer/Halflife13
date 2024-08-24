/datum/action/cooldown/spell/jaunt/ethereal_jaunt/tar_pool
	name = "Return to tar"
	desc = "Temporarily dissolve into a pool of tar, in this form you are invulnerable to damage."
	button_icon = 'yogstation/icons/mob/actions/actions.dmi'
	button_icon_state = "tarshift"
	background_icon = 'yogstation/icons/mob/actions/backgrounds.dmi'
	background_icon_state = "jungle"

	spell_requirements = NONE
	cooldown_time = 120 SECONDS

	jaunt_duration = 10 SECONDS
	jaunt_in_time = 1 SECONDS
	jaunt_out_time = 1 SECONDS

/datum/action/cooldown/spell/jaunt/ethereal_jaunt/tar_pool/do_steam_effects(turf/loc)
	return
