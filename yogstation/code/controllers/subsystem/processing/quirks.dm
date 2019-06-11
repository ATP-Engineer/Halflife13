/datum/controller/subsystem/processing/quirks/proc/checkquirks(client/cli) // Returns true when the player isn't trying to fuckin scum the mood pref stuff to exploit
	if(!CONFIG_GET(flag/disable_human_mood) || (cli.prefs.toggles & PREF_MOOD)) // If moods are globally enabled, or this guy does indeed have his mood pref set to Enabled
		return TRUE //Then resume
	//Else, we need to check him out.
	for(var/V in cli.prefs.all_quirks)
		var/datum/quirk/Q = quirks[V]
		if(Q)
			if(initial(Q.mood_quirk))
				to_chat(src,"<span class='danger'>You cannot have the quirk '[V]' with mood disabled! You shall receive no quirks this round.")
				message_admins("[key_name(cli)] just tried to exploit the mood pref system to get bonus points for their quirks.")
				return FALSE
	return TRUE
