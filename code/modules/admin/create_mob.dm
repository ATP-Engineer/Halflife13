
/datum/admins/proc/create_mob(mob/user)
	var/static/create_mob_html
	if (!create_mob_html)
		var/mobjs = null
		mobjs = jointext(typesof(/mob), ";")
		create_mob_html = file2text('html/create_object.html')
		create_mob_html = replacetext(create_mob_html, "Create Object", "Create Mob")
		create_mob_html = replacetext(create_mob_html, "null /* object types */", "\"[mobjs]\"")

	user << browse(create_panel_helper(create_mob_html), "window=create_mob;size=425x475")

/proc/randomize_human(mob/living/carbon/human/human)
	human.gender = human.dna ? pick(human.dna.species.possible_genders) : pick(MALE, FEMALE, PLURAL, NEUTER)
	human.real_name = human.dna?.species.random_name(human.gender) || random_unique_name(human.gender)
	human.name = human.real_name
	human.underwear = random_underwear(human.gender)
	human.skin_tone = random_skin_tone()
	human.hair_style = random_hair_style(human.gender)
	human.facial_hair_style = random_facial_hair_style(human.gender)
	human.hair_color = "#[random_color()]"
	human.facial_hair_color = human.hair_color
	human.eye_color = random_eye_color()
	human.dna.blood_type = random_blood_type()


	human.update_body()
	human.update_hair()
	human.update_body_parts()
