/datum/hud
	var/atom/movable/screen/vampire/vamp_blood_display

/datum/hud/New(mob/owner, ui_style = 'icons/mob/screen_dark.dmi')
	. = ..()
	vamp_blood_display = new /atom/movable/screen/vampire(src)

/datum/hud/human/New(mob/living/carbon/human/owner, ui_style = 'icons/mob/screen_dark.dmi')
	. = ..()
	vamp_blood_display = new /atom/movable/screen/vampire(src)
	infodisplay += vamp_blood_display

/datum/hud/Destroy()
	. = ..()
	vamp_blood_display = null
