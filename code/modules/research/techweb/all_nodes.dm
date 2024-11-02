//Current rate: 135000 research points in 90 minutes

//Base Nodes
/datum/techweb_node/base
	id = "base"
	starting_node = TRUE
	display_name = "Basic Research Technology"
	description = "Combine default research technologies."
	// Default research tech, prevents bricking
	/*
	design_ids = list("basic_matter_bin", "basic_cell", "basic_scanning", "basic_capacitor", "basic_micro_laser", "micro_mani", "desttagger", "handlabel", "packagewrap",
	"destructive_analyzer", "circuit_imprinter", "rack_creator", "experimentor", "rdconsole", "design_disk", "tech_disk", "rdserver", "rdservercontrol", "combinefab", "paystand", "ticket_machine", "ticket_remote", "light_tube", "light_bulb",
	"space_heater", "beaker", "large_beaker", "vial", "bucket", "fork", "tray","plate", "bowl", "mixing_bowl", "drinking_glass", "shot_glass", "shaker", "xlarge_beaker", "sec_rshot", "sec_beanbag_slug", "sec_bshot", "sec_slug", "sec_Islug", "sec_Brslug", "sec_38", "sec_38_lethal", "apc_control", "power control", "airlock_board", "firelock_board", "airalarm_electronics", "firealarm_electronics", "blastdoorcontroller", "aac_electronics", "mousetrap",
	"rglass","plasteel","plastitanium","plasmaglass","plasmareinforcedglass","titaniumglass","plastitaniumglass","wallframe/flasher", "rsf", "rls", "oven_tray", "bounced_radio", "signaler", "signalbutton", "inspector_booth", "intercom_frame", "infrared_emitter", "health_sensor", "timer", "voice_analyser", "camera_assembly", "newscaster_frame", "prox_sensor", "flashlight", "extinguisher", "pocketfireextinguisher")
	*/




/datum/techweb_node/cyborg
	id = "cyborg"
	starting_node = TRUE
	display_name = "Cybernetic Prosthetics"
	description = "Cybernetic limb replacements. More durable than human flesh, and useful if you lost a limb."
	design_ids = list("borg_r_arm", "borg_l_arm", "borg_r_leg", "borg_l_leg", "cyborgrecharger")
	prereq_ids = list("base")

/datum/techweb_node/city_scanner
	id = "city_scanner"
	display_name = "City Scanner Construction"
	description = "Allows the construction of City Scanners from combine fabricators."
	design_ids = list("scanner_frame")
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 750)

/datum/techweb_node/viscerator
	id = "viscerator"
	display_name = "Viscerator Construction"
	description = "Allows the construction of Viscerators from combine fabricators."
	design_ids = list("viscerator_frame")
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 750)

/datum/techweb_node/biopin
	id = "biopin"
	display_name = "Biopin Construction"
	description = "Create advanced bio-signal locked firing pins from combine fabricators."
	design_ids = list("biopin")
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/skillchip_basic
	id = "skillchip_basic"
	display_name = "Skillchip Theory"
	description = "Construct advanced memory modules which insert at the base of the brain stem using a dedicated machine, and teach the user important skills."
	design_ids = list("fitness_skillchip")
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/skillchip_combat
	id = "skillchip_combat"
	display_name = "Combat Skillchips"
	description = "Research the ability to create advanced combat-grade skillchips."
	design_ids = list("aiming_skillchip", "painsuppress_skillchip")
	prereq_ids = list("skillchip_basic")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 4000)

/datum/techweb_node/skillchip_job
	id = "skillchip_job"
	display_name = "Job Skillchips"
	description = "Research the ability to create advanced workplace knowledge and teaching skillchips."
	design_ids = list("engineer_skillchip", "doctor_skillchip")
	prereq_ids = list("skillchip_basic")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/biotech
	id = "biotech"
	display_name = "Biological Technology"
	description = "Technology relating to biological functions of the human and non-human body."	//the MC, silly!
	prereq_ids = list("base")
	design_ids = list("chem_heater", "chem_master", "chem_dispenser", "pandemic", "defibrillator", "defibmount", "surgical_mat", "operating", "healthanalyzer", "medspray", "genescanner", "rollerbed")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_biotech
	id = "adv_biotech"
	display_name = "Advanced Biotechnology"
	description = "Advanced Bio-tech for advanced applications."
	prereq_ids = list("biotech")
	design_ids = list("hypospray", "piercesyringe", "hypospraypierceupg", "hyposprayspeedupg", "pinpointer_crew", "smoke_machine", "meta_beaker", "healthanalyzer_advanced", "harvester", "holobarrier_med", "detective_scanner", "detective_scanner_advanced" , "defibrillator_compact", "vialbox")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 3000)

/datum/techweb_node/cyber_organs
	id = "cyber_organs"
	display_name = "Cybernetic Organs"
	description = "We have the technology to rebuild him."
	prereq_ids = list("adv_biotech")
	design_ids = list("cybernetic_heart", "cybernetic_liver", "cybernetic_lungs", "cybernetic_stomach", "cybernetic_ears", "cybernetic_appendix")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1250)

/datum/techweb_node/cyber_organs_upgraded
	id = "cyber_organs_upgraded"
	display_name = "Upgraded Cybernetic Organs"
	description = "We have the technology to upgrade him."
	prereq_ids = list("cyber_organs")
	design_ids = list("cybernetic_heart_u", "cybernetic_liver_u", "cybernetic_lungs_u", "cybernetic_stomach_u")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1500)

/datum/techweb_node/cyber_implants
	id = "cyber_implants"
	display_name = "Cybernetic Implants"
	description = "Electronic implants that improve humans."
	prereq_ids = list("adv_biotech", "datatheory")
	design_ids = list("ci-nutriment", "ci-breather", "ci-gloweyes", "ci-meson", "ci-welding", "ci-medhud", "ci-sechud", "ci-scihud", "ci-diaghud")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_cyber_implants
	id = "adv_cyber_implants"
	display_name = "Advanced Cybernetic Implants"
	description = "Upgraded and more powerful cybernetic implants."
	prereq_ids = list("neural_programming", "cyber_implants","integrated_HUDs")
	design_ids = list("ci-toolset", "ci-surgery", "ci-reviver", "ci-nutrimentplus")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/combat_cyber_implants
	id = "combat_cyber_implants"
	display_name = "Combat Cybernetic Implants"
	description = "Military grade combat implants to improve performance."
	prereq_ids = list("adv_cyber_implants","weaponry","NVGtech","high_efficiency")
	design_ids = list("ci-antidrop", "ci-antistun")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/////////////////////////Advanced Surgery/////////////////////////
/datum/techweb_node/imp_wt_surgery
	id = "imp_wt_surgery"
	display_name = "Improved Wound-Tending Surgery"
	description = "Who would have known being more gentle with a hemostat decreases patient pain?"
	prereq_ids = list("biotech")
	design_ids = list("surgery_heal_brute_upgrade","surgery_heal_burn_upgrade")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1250)


/datum/techweb_node/adv_surgery
	id = "adv_surgery"
	display_name = "Advanced Surgery"
	description = "When simple medicine doesn't cut it."
	prereq_ids = list("imp_wt_surgery")
	design_ids = list("surgery_lobotomy", "surgery_heal_brute_upgrade_femto","surgery_heal_burn_upgrade_femto","surgery_heal_combo", "surgery_revival", "surgery_adv_dissection")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1500)

/datum/techweb_node/exp_surgery
	id = "exp_surgery"
	display_name = "Experimental Surgery"
	description = "When evolution isn't fast enough."
	prereq_ids = list("adv_surgery")
	design_ids = list("surgery_pacify","surgery_vein_thread","surgery_muscled_veins","surgery_nerve_splice","surgery_nerve_ground","surgery_ligament_hook","surgery_ligament_reinforcement","surgery_viral_bond", "surgery_heal_combo_upgrade", "surgery_dna_recovery", "surgery_exp_dissection")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 5000)


/datum/techweb_node/combine_recharger
	id = "combine_recharger"
	display_name = "Combine Recharger Construction"
	description = "Create circuit boards for designing combine suit rechargers."
	design_ids = list("combine_recharger")
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2000)

/datum/techweb_node/camera_theory
	id = "camera_theory"
	display_name = "Camera Theory"
	description = "Create body cameras which can be put around the neck and viewed from."
	design_ids = list("bodycam")
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 3000)

/datum/techweb_node/high_efficiency
	id = "high_efficiency"
	display_name = "High Efficiency Parts"
	description = "Finely-tooled manufacturing techniques allow for more efficient machine parts."
	prereq_ids = list("base")
	design_ids = list("adv_capacitor", "adv_scanning", "nano_mani", "high_micro_laser", "adv_matter_bin")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 6000)

/*

/datum/techweb_node/mmi
	id = "mmi"
	starting_node = TRUE
	display_name = "Man Machine Interface"
	description = "A slightly Frankensteinian device that allows human brains to interface natively with software APIs."
	design_ids = list("mmi")
	prereq_ids = list("base")

/datum/techweb_node/cyborg
	id = "cyborg"
	starting_node = TRUE
	display_name = "Cyborg Construction"
	description = "Sapient robots with preloaded tool modules and programmable laws."
	design_ids = list("borg_r_arm", "borg_l_arm", "borg_r_leg", "borg_l_leg", "cyborgrecharger", "viscerator_frame", "biopin", "scanner_frame", "aiming_skillchip", "engineer_skillchip", "doctor_skillchip", "fitness_skillchip", "painsuppress_skillchip")
	prereq_ids = list("base")

/datum/techweb_node/basic_tools
	id = "basic_tools"
	starting_node = TRUE
	display_name = "Basic Tools"
	description = "Basic mechanical, electronic, surgical and botanical tools."
	//design_ids = list("screwdriver", "wrench", "wirecutters", "crowbar", "multitool", "welding_tool", "tscanner", "analyzer", "cable_coil", "pipe_painter", "airlock_painter", "decal_painter", "tile_painter", "scalpel", "circular_saw", "bonesetter", "surgicaldrill", "retractor", "cautery", "hemostat", "syringe", "cultivator", "plant_analyzer", "shovel", "spade", "hatchet",  "mop", "cable_coil", "rpd", "analyzer", "tscanner", "large_welding_tool", "geigercounter")
	prereq_ids = list("base")

/////////////////////////Biotech/////////////////////////
/datum/techweb_node/biotech
	id = "biotech"
	display_name = "Biological Technology"
	description = "What makes us tick."	//the MC, silly!
	prereq_ids = list("base")
	//design_ids = list("chem_heater", "chem_master", "chem_dispenser", "sleeper", "pandemic", "defibrillator", "defibmount", "surgical_mat", "operating", "soda_dispenser", "beer_dispenser", "healthanalyzer", "medspray", "genescanner", "rollerbed")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_biotech
	id = "adv_biotech"
	display_name = "Advanced Biotechnology"
	description = "Advanced Biotechnology"
	prereq_ids = list("biotech")
	design_ids = list("hypospray", "piercesyringe", "hypospraypierceupg", "hyposprayspeedupg", "pinpointer_crew", "smoke_machine", "plasmarefiller", "limbgrower", "meta_beaker", "healthanalyzer_advanced", "harvester", "holobarrier_med", "detective_scanner", "detective_scanner_advanced" , "defibrillator_compact", "vialbox")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/xenoorgan_biotech
	id = "xenoorgan_bio"
	display_name = "Xeno-organ Biology"
	description = "Plasmaman, Ethereals, Lizardpeople... What makes our non-human crewmembers tick?"
	prereq_ids = list("adv_biotech")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/bio_process
	id = "bio_process"
	display_name = "Biological Processing"
	description = "From slimes to kitchens."
	prereq_ids = list("biotech")
	design_ids = list("smartfridge", "gibber", "deepfryer", "monkey_recycler", "processor", "microwave", "reagentgrinder", "dish_drive", "fat_sucker","griddle", "oven")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/xenology
	id = "xenology"
	display_name = "Basic Xenology"
	description = "Experimental research into replicating organs from the exotic species known commonly as \"xenos\""
	prereq_ids = list("cyber_organs_upgraded", "exp_surgery")
	design_ids = list("synthetic_plasmavessel")
	boost_item_paths = list(/obj/item/weed_extract, /obj/item/xenos_claw, /obj/item/stack/sheet/xenochitin, /obj/item/organ/alien, /obj/item/organ/brain/alien)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 5000)
	hidden = TRUE

/datum/techweb_node/xenology/New() //this is faster and more readable than putting them all in
	. = ..()
	boost_item_paths |= typesof(/obj/item/organ/alien)

/////////////////////////Advanced Surgery/////////////////////////
/datum/techweb_node/imp_wt_surgery
	id = "imp_wt_surgery"
	display_name = "Improved Wound-Tending Surgery"
	description = "Who would have known being more gentle with a hemostat decreases patient pain?"
	prereq_ids = list("biotech")
	design_ids = list("surgery_heal_brute_upgrade","surgery_heal_burn_upgrade")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

/datum/techweb_node/adv_surgery
	id = "adv_surgery"
	display_name = "Advanced Surgery"
	description = "When simple medicine doesn't cut it."
	prereq_ids = list("imp_wt_surgery")
	design_ids = list("surgery_lobotomy", "surgery_heal_brute_upgrade_femto","surgery_heal_burn_upgrade_femto","surgery_heal_combo", "surgery_revival", "surgery_adv_dissection")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1500)

/datum/techweb_node/exp_surgery
	id = "exp_surgery"
	display_name = "Experimental Surgery"
	description = "When evolution isn't fast enough."
	prereq_ids = list("adv_surgery")
	design_ids = list("surgery_pacify","surgery_vein_thread","surgery_muscled_veins","surgery_nerve_splice","surgery_nerve_ground","surgery_ligament_hook","surgery_ligament_reinforcement","surgery_viral_bond", "surgery_heal_combo_upgrade", "surgery_dna_recovery", "surgery_exp_dissection")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 5000)

/////////////////////////data theory tech/////////////////////////
/datum/techweb_node/datatheory //Computer science
	id = "datatheory"
	display_name = "Data Theory"
	description = "Big Data, in space!"
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)


/////////////////////////engineering tech/////////////////////////
/datum/techweb_node/engineering
	id = "engineering"
	display_name = "Industrial Engineering"
	description = "A refresher course on modern engineering technology."
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 7500)

/datum/techweb_node/adv_engi
	id = "adv_engi"
	display_name = "Advanced Engineering"
	description = "Pushing the boundaries of physics, one chainsaw-fist at a time."
	prereq_ids = list("engineering", "emp_basic")
	design_ids = list("engine_goggles", "magboots", "forcefield_projector", "weldingmask", "decontamination_unit", "particle_emitter", "tricorder", "mass_driver")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/anomaly
	id = "anomaly_research"
	display_name = "Anomaly Research"
	description = "Unlock the potential of the mysterious anomalies that appear on station."
	prereq_ids = list("adv_engi")
	design_ids = list("reactive_armor", "anomaly_quiver", "anomaly_neutralizer")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 5000)

/datum/techweb_node/high_efficiency
	id = "high_efficiency"
	display_name = "High Efficiency Parts"
	description = "Finely-tooled manufacturing techniques allowing for picometer-perfect precision levels."
	prereq_ids = list("engineering", "datatheory")
	design_ids = list("pico_mani", "super_matter_bin")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 7500)

/datum/techweb_node/adv_power
	id = "adv_power"
	display_name = "Advanced Power Manipulation"
	description = "How to get more zap."
	prereq_ids = list("engineering")
	design_ids = list("smes", "super_cell", "hyper_cell", "super_capacitor", "superpacman", "mrspacman", "power_turbine", "power_turbine_console", "power_compressor", "circulator", "teg")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/////////////////////////plasma tech/////////////////////////
/datum/techweb_node/basic_plasma
	id = "basic_plasma"
	display_name = "Basic Plasma Research"
	description = "Research into the mysterious and dangerous substance, plasma."
	prereq_ids = list("engineering")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_plasma
	id = "adv_plasma"
	display_name = "Advanced Plasma Research"
	description = "Research on how to fully exploit the power of plasma."
	prereq_ids = list("basic_plasma")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/////////////////////////robotics tech/////////////////////////
/datum/techweb_node/robotics
	id = "robotics"
	display_name = "Basic Robotics Research"
	description = "Programmable machines that make our lives lazier."
	prereq_ids = list("base")
	design_ids = list("paicard")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_robotics
	id = "adv_robotics"
	display_name = "Advanced Robotics Research"
	description = "It can even do the dishes!"
	prereq_ids = list("robotics")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/neural_programming
	id = "neural_programming"
	display_name = "Neural Programming"
	description = "Study into networks of processing units that mimic our brains."
	prereq_ids = list("biotech", "datatheory")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/posibrain
	id = "posibrain"
	display_name = "Positronic Brain"
	description = "Applied usage of neural technology allowing for autonomous AI units based on special metallic cubes with conductive and processing circuits."
	prereq_ids = list("neural_programming")
	design_ids = list("mmi_posi")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/cyborg_upgrades_utility
	id = "cyborg_upgrades_utility"
	display_name = "Cyborg Upgrades: Utility"
	description = "Upgrades that can be used on all cyborg module types that increases their general utility."
	prereq_ids = list("engineering", "adv_robotics")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1500)

/datum/techweb_node/cyborg_upgrades_engineering
	id = "cyborg_upgrades_engineering"
	display_name = "Cyborg Upgrades: Engineering"
	description = "Upgrades that can only be used on cyborgs with a engineering-related module."
	prereq_ids = list("cyborg_upgrades_utility")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 500)

/datum/techweb_node/cyborg_upgrades_engineering_adv
	id = "cyborg_upgrades_engineering_adv"
	display_name = "Cyborg Upgrades: Advanced Engineering"
	description = "Advanced upgrades that can only be used on cyborgs with a engineering-related module."
	prereq_ids = list("cyborg_upgrades_engineering", "exp_tools")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/cyborg_upgrades_nvg
	id = "cyborg_upgrades_nvg" // This is its own seperate node solely ONLY because it wasn't obvious on how to find this upgrade.
	display_name = "Cyborg Upgrades: NVG"
	description = "Upgrade that swaps a cyborg's mesons to nightvision mesons."
	prereq_ids = list("cyborg_upgrades_engineering", "NVGtech")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 500)

/datum/techweb_node/cyborg_upgrades_medical
	id = "cyborg_upgrades_medical"
	display_name = "Cyborg Upgrades: Medical"
	description = "Upgrades that focus on cyborgs with a medical-related module."
	prereq_ids = list("cyborg_upgrades_utility", "adv_biotech")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2000)

/datum/techweb_node/cyborg_upgrades_medical_adv
	id = "cyborg_upgrades_medical_adv"
	display_name = "Cyborg Upgrades: Advanced Medical"
	description = "Advanced upgrades that focus on cyborgs with a medical-related module."
	prereq_ids = list("cyborg_upgrades_medical", "exp_tools")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

/datum/techweb_node/cyborg_upgrades_mining
	id = "cyborg_upgrades_mining"
	display_name = "Cyborg Upgrades: Mining"
	description = "Upgrades that focus on cyborgs with a mining-related module."
	prereq_ids = list("cyborg_upgrades_utility", "adv_mining")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 500)

/datum/techweb_node/cyborg_upgrades_service
	id = "cyborg_upgrades_service"
	display_name = "Cyborg Upgrades: Service"
	description = "Upgrades that focus on cyborgs with a service-related module." // Janitor & "Service/Bartender".
	prereq_ids = list("cyborg_upgrades_utility", "janitor")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 500) // Roleplay discount.

/////////////////////////EMP tech/////////////////////////
/datum/techweb_node/emp_basic //EMP tech for some reason
	id = "emp_basic"
	display_name = "Electromagnetic Theory"
	description = "Study into usage of frequencies in the electromagnetic spectrum."
	prereq_ids = list("base")
	design_ids = list("holosign", "holosignsec", "holosignengi", "holosignatmos", "inducer", "tray_goggles", "holopad")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/emp_adv
	id = "emp_adv"
	display_name = "Advanced Electromagnetic Theory"
	description = "Determining whether reversing the polarity will actually help in a given situation."
	prereq_ids = list("emp_basic")
	design_ids = list("ultra_micro_laser")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 3000)

/datum/techweb_node/emp_super
	id = "emp_super"
	display_name = "Quantum Electromagnetic Technology"	//bs
	description = "Even better electromagnetic technology."
	prereq_ids = list("emp_adv")
	design_ids = list("quadultra_micro_laser")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 3000)

/////////////////////////Clown tech/////////////////////////
/datum/techweb_node/clown
	id = "clown"
	display_name = "Clown Technology"
	description = "Honk?!"
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

////////////////////////Computer tech////////////////////////
/datum/techweb_node/comptech
	id = "comptech"
	display_name = "Computer Consoles"
	description = "Computers and how they work."
	prereq_ids = list("datatheory")
	design_ids = list("cargo", "cargorequest", "libraryconsole", "mining", "crewconsole", "rdcamera", "comconsole", "idcardconsole", "seccamera")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2000)

/datum/techweb_node/computer_hardware_basic				//Modular computers are shitty and nearly useless so until someone makes them actually useful this can be easy to get.
	id = "computer_hardware_basic"
	display_name = "Computer Hardware"
	description = "How computer hardware are made."
	prereq_ids = list("comptech")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)  //they are really shitty
	design_ids = list("hdd_basic", "hdd_advanced", "hdd_super", "hdd_cluster", "ssd_small", "ssd_micro", "netcard_basic", "netcard_advanced", "netcard_wired",
	"portadrive_basic", "portadrive_advanced", "portadrive_super", "cardslot", "secondcardslot", "aislot", "miniprinter", "APClink", "bat_control", "bat_normal", "bat_advanced",
	"bat_super", "bat_micro", "bat_nano", "cpu_normal", "pcpu_normal", "cpu_small", "pcpu_small", "sensorpackage", "aiinterface")

/datum/techweb_node/computer_board_gaming
	id = "computer_board_gaming"
	display_name = "Arcade Games"
	description = "For the slackers on the station."
	prereq_ids = list("comptech")
	design_ids = list("arcade_battle", "arcade_orion", "slotmachine", "minesweeper")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

/datum/techweb_node/comp_recordkeeping
	id = "comp_recordkeeping"
	display_name = "Computerized Recordkeeping"
	description = "Organized record databases and how they're used."
	prereq_ids = list("comptech")
	design_ids = list("secdata", "med_data", "prisonmanage", "vendor", "automated_announcement")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

/datum/techweb_node/telecomms
	id = "telecomms"
	display_name = "Telecommunications Technology"
	description = "Subspace transmission technology for near-instant communications devices."
	prereq_ids = list("comptech")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)
	design_ids = list("s-receiver", "s-bus", "s-broadcaster", "s-processor", "s-hub", "s-server", "s-relay", "comm_monitor", "comm_server",
	"s-ansible", "s-filter", "s-amplifier", "ntnet_relay", "s-treatment", "s-analyzer", "s-crystal", "s-transmitter", "s-traffic", "s-messaging")

/datum/techweb_node/integrated_HUDs
	id = "integrated_HUDs"
	display_name = "Integrated HUDs"
	description = "The usefulness of computerized records, projected straight onto your eyepiece!"
	prereq_ids = list("comp_recordkeeping", "emp_basic")
	design_ids = list("health_hud", "security_hud", "diagnostic_hud", "scigoggles", "health_hud_meson")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1500)

/datum/techweb_node/NVGtech
	id = "NVGtech"
	display_name = "Night Vision Technology"
	description = "Allows seeing in the dark without actual light!"
	prereq_ids = list("integrated_HUDs", "adv_engi", "emp_adv")
	design_ids = list("health_hud_night", "security_hud_night", "diagnostic_hud_night", "night_visision_goggles", "nvgmesons", "nightscigoggles")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 5000)

////////////////////////Medical////////////////////////
/datum/techweb_node/cloning
	id = "cloning"
	display_name = "Genetic Engineering"
	description = "We have the technology to make him."
	prereq_ids = list("biotech")
	design_ids = list("clonecontrol", "clonepod", "clonescanner", "scan_console", "cloning_disk")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/cryotech
	id = "cryotech"
	display_name = "Cryostasis Technology"
	description = "Smart freezing of objects to preserve them!"
	prereq_ids = list("adv_engi", "biotech")
	design_ids = list("splitbeaker", "cryotube", "cryo_Grenade", "stasis", "holobed_projector")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2000)

/datum/techweb_node/subdermal_implants
	id = "subdermal_implants"
	display_name = "Subdermal Implants"
	description = "Electronic implants buried beneath the skin."
	prereq_ids = list("biotech")
	design_ids = list("implanter", "implantcase", "implant_chem", "implant_tracking", "locator", "pinpointer_tracker")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/cyber_organs
	id = "cyber_organs"
	display_name = "Cybernetic Organs"
	description = "We have the technology to rebuild him."
	prereq_ids = list("adv_biotech")
	design_ids = list("cybernetic_heart", "cybernetic_liver", "cybernetic_lungs", "cybernetic_stomach", "cybernetic_ears", "cybernetic_appendix")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

datum/techweb_node/cyber_organs/New()
	..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_CYBERNETIC_REVOLUTION))
		research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 500)

/datum/techweb_node/cyber_organs_upgraded
	id = "cyber_organs_upgraded"
	display_name = "Upgraded Cybernetic Organs"
	description = "We have the technology to upgrade him."
	prereq_ids = list("cyber_organs")
	design_ids = list("cybernetic_heart_u", "cybernetic_liver_u", "cybernetic_lungs_u", "cybernetic_stomach_u")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1500)

/datum/techweb_node/cyber_organs_upgraded/New()
	..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_CYBERNETIC_REVOLUTION))
		research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 750)

/datum/techweb_node/ipc_organs
	id = "ipc_organs"
	display_name = "IPC Parts"
	description = "We have the technology to replace him."
	prereq_ids = list("cyber_organs","robotics")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1500)
	hidden = TRUE

/datum/techweb_node/cyber_implants
	id = "cyber_implants"
	starting_node = TRUE
	display_name = "Cybernetic Implants"
	description = "Electronic implants that improve humans."
	prereq_ids = list("adv_biotech", "datatheory")
	design_ids = list("ci-nutriment", "ci-breather", "ci-gloweyes", "ci-meson", "ci-welding", "ci-medhud", "ci-sechud", "ci-scihud", "ci-diaghud")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/cyber_implants/New()
	..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_CYBERNETIC_REVOLUTION))
		research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1250)

/datum/techweb_node/adv_cyber_implants
	id = "adv_cyber_implants"
	starting_node = TRUE
	display_name = "Advanced Cybernetic Implants"
	description = "Upgraded and more powerful cybernetic implants."
	prereq_ids = list("neural_programming", "cyber_implants","integrated_HUDs")
	design_ids = list("ci-toolset", "ci-surgery", "ci-reviver", "ci-nutrimentplus")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_cyber_implants/New()
	..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_CYBERNETIC_REVOLUTION))
		research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1250)

/datum/techweb_node/combat_cyber_implants
	id = "combat_cyber_implants"
	display_name = "Combat Cybernetic Implants"
	starting_node = TRUE
	description = "Military grade combat implants to improve performance."
	prereq_ids = list("adv_cyber_implants","weaponry","NVGtech","high_efficiency")
	design_ids = list("ci-antidrop", "ci-antistun")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/combat_cyber_implants/New()
	..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_CYBERNETIC_REVOLUTION))
		research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1250)

/datum/techweb_node/illegal_cyber_implants
	id = "illegal_cyber_implants"
	display_name = "Illegal Cybernetic Implants"
	description = "Nanotrasen would like to remind employees that use of unlicensed cybernetic implants violates multiple employee contract clauses."
	prereq_ids = list("combat_cyber_implants","syndicate_basic")
	design_ids = list("ci-noslipwater")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 10000)

/datum/techweb_node/illegal_cyber_implants/New()
	..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_CYBERNETIC_REVOLUTION))
		research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 5000)

////////////////////////Tools////////////////////////

/datum/techweb_node/basic_mining
	id = "basic_mining"
	display_name = "Mining Technology"
	description = "Better than Efficiency V."
	prereq_ids = list("engineering", "basic_plasma")
	design_ids = list("drill", "superresonator", "triggermod", "damagemod", "cooldownmod", "rangemod", "ore_redemption", "mining_equipment_vendor", "cargoexpress", "plasmacutter", "mecha_kineticgun")//e a r l y    g a  m e)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_mining
	id = "adv_mining"
	display_name = "Advanced Mining Technology"
	description = "Efficiency Level 127"	//dumb mc references
	prereq_ids = list("basic_mining", "adv_engi", "adv_power", "adv_plasma")
	design_ids = list("drill_diamond", "jackhammer", "hypermod", "plasmacutter_adv", "miningcharge")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/magmite_mining
	id = "magmite_mining"
	display_name = "Magmite Technology"
	description = "Who needs a pickaxe when you have a nuke?"
	prereq_ids = list("adv_mining")
	design_ids = list("miningcharge_mega")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2000)
	hidden = TRUE
	boost_item_paths = list(/obj/item/magmite,/obj/item/grenade/plastic/miningcharge/mega) //you can get mega mining charges from necropolis chests

/datum/techweb_node/camera_theory
	id = "cam_theory"
	display_name = "Camera Theory"
	description = "NT is watching you..."
	design_ids = list("minercam", "bodycam")
	prereq_ids = list("basic_mining","sec_basic")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/janitor
	id = "janitor"
	display_name = "Advanced Sanitation Technology"
	description = "Clean things better, faster, stronger, and harder!"
	prereq_ids = list("adv_engi")
	design_ids = list("advmop", "buffer", "blutrash", "light_replacer", "spraybottle", "beartrap")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/botany
	id = "botany"
	display_name = "Botanical Engineering"
	description = "Botanical tools"
	prereq_ids = list("adv_engi", "biotech")
	design_ids = list("diskplantgene", "portaseeder", "plantgenes", "flora_gun", "hydro_tray", "biogenerator", "seed_extractor")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/exp_tools
	id = "exp_tools"
	display_name = "Experimental Tools"
	description = "Highly advanced tools."
	design_ids = list("exwelder", "jawsoflife", "handdrill", "laserscalpel", "mechanicalpinches", "searingtool", "tool_switcher")
	prereq_ids = list("adv_engi")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/sec_basic
	id = "sec_basic"
	display_name = "Basic Security Equipment"
	description = "Standard equipment used by security."
	//design_ids = list("seclite", "pepperspray", "bola_energy", "zipties", "evidencebag", "handcuffs", "receiver", "simple_sight")
	prereq_ids = list("base")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

/datum/techweb_node/rcd_upgrade
	id = "rcd_upgrade"
	display_name = "RCD designs upgrade"
	description = "Unlocks new RCD designs."
	design_ids = list("rcd_upgrade_frames", "rcd_upgrade_simple_circuits", "rcd_upgrade_furnishing", "rcd_upgrade_conveyor")
	prereq_ids = list("adv_engi")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_rcd_upgrade
	id = "adv_rcd_upgrade"
	display_name = "Advanced RCD designs upgrade"
	description = "Unlocks new RCD designs."
	design_ids = list("rcd_upgrade_silo_link")
	prereq_ids = list("rcd_upgrade")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/////////////////////////weaponry tech/////////////////////////

/datum/techweb_node/landmine
	id = "nonlethal_mines"
	display_name = "Nonlethal Landmine Technology"
	description = "Our weapons technicians could perhaps work out methods for the creation of nonlethal landmines for security teams."
	prereq_ids = list("sec_basic")
	design_ids = list("stunmine")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

/datum/techweb_node/weaponry
	id = "weaponry"
	display_name = "Weapon Development Technology"
	description = "Our researchers have found new ways to weaponize just about everything now."
	prereq_ids = list("engineering", "sec_basic")
	design_ids = list("pin_testing", "tele_shield", "platingmki", "platingmkiii", "vert_grip", "laser_sight", "infra_sight")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 10000)

/datum/techweb_node/smartmine
	id = "smart_mines"
	display_name = "Smart Landmine Technology"
	description = "Using IFF technology, we could develop smartmines that do not trigger for those who are mindshielded."
	prereq_ids = list("weaponry", "nonlethal_mines", "engineering")
	design_ids = list("stunmine_adv")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_weaponry
	id = "adv_weaponry"
	display_name = "Advanced Weapon Development Technology"
	description = "Our weapons are breaking the rules of reality by now."
	prereq_ids = list("adv_engi", "weaponry")
	design_ids = list("platingmkii", "platingmkiv", "holo_sight")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 10000)

/datum/techweb_node/adv_weaponry/New()
	. = ..()
	if(!CONFIG_GET(flag/disable_secborg)) // Only show this design if it is enabled; no point in printing something that can't be used.
		design_ids += "borg_transform_security"

/datum/techweb_node/advmine
	id = "adv_mines"
	display_name = "Advanced Landmine Technology"
	description = "We can further develop our smartmines to build some extremely capable designs."
	prereq_ids = list("weaponry", "smart_mines", "adv_engi")
	design_ids = list("stunmine_rapid", "stunmine_heavy")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/electric_weapons
	id = "electronic_weapons"
	display_name = "Electric Weapons"
	description = "Weapons using electric technology"
	prereq_ids = list("weaponry", "adv_power", "emp_basic")
	design_ids = list("stunrevolver", "ioncarbine")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/hardlight_weapons
	id = "hardlight weapons"
	display_name = "Hardlight Weaponry"
	description = "Weaponized forcefields!"
	prereq_ids = list("weaponry", "emp_super")
	design_ids = list("hardlightbow", "ntusp_conversion", "vib_blade", "hardlight_shell")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/radioactive_weapons
	id = "radioactive_weapons"
	display_name = "Radioactive Weaponry"
	description = "Weapons using radioactive technology."
	prereq_ids = list("adv_engi", "adv_weaponry")
	design_ids = list("nuclear_gun", "xray_laser")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/medical_weapons
	id = "medical_weapons"
	display_name = "Medical Weaponry"
	description = "Weapons using medical technology."
	prereq_ids = list("adv_biotech", "adv_weaponry","syndicate_basic")
	design_ids = list("syringegun", "dartsyringe","sec_dart")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/beam_weapons
	id = "beam_weapons"
	display_name = "Beam Weaponry"
	description = "Various basic beam weapons"
	prereq_ids = list("adv_weaponry")
	design_ids = list("temp_gun", "bouncer_egun")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/adv_beam_weapons
	id = "adv_beam_weapons"
	display_name = "Advanced Beam Weaponry"
	description = "Various advanced beam weapons"
	prereq_ids = list("beam_weapons")
	design_ids = list("beamrifle")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/explosive_weapons
	id = "explosive_weapons"
	display_name = "Explosive & Pyrotechnical Weaponry"
	description = "If the light stuff just won't do it."
	prereq_ids = list("adv_weaponry")
	design_ids = list("large_Grenade", "pyro_Grenade", "adv_Grenade")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/ballistic_weapons
	id = "ballistic_weapons"
	display_name = "Ballistic Weaponry"
	description = "This isn't research.. This is reverse-engineering!"
	prereq_ids = list("weaponry")
	design_ids = list("mag_v38", "mag_v38_ap", "mag_v38_rubber", "mag_oldsmg", "mag_oldsmg_ap", "mag_oldsmg_ic", "mag_oldsmg_rubber")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/exotic_ammo
	id = "exotic_ammo"
	display_name = "Exotic Ammunition"
	description = "They won't know what hit em."
	prereq_ids = list("adv_weaponry", "ballistic_weapons")
	design_ids = list("mag_v38_frost", "mag_v38_talon")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/experimental_ammo
	id = "experimental_ammo"
	display_name = "Experimental Ammunition"
	description = "We're hitting levels of power that shouldn't be possible."
	prereq_ids = list("exotic_ammo")
	design_ids = list("techshotshell", "mag_oldsmg_kraken", "mag_oldsmg_snakebite")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/////////////////////////Nanites/////////////////////////
/datum/techweb_node/nanite_base
	id = "nanite_base"
	display_name = "Basic Nanite Programming"
	description = "The basics of nanite construction and programming."
	prereq_ids = list("datatheory")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000)

/datum/techweb_node/nanite_smart
	id = "nanite_smart"
	display_name = "Smart Nanite Programming"
	description = "Nanite programs that require nanites to perform complex actions, act independently, roam or seek targets."
	prereq_ids = list("nanite_base","adv_robotics")
	design_ids = list("purging_nanites", "research_nanites", "metabolic_nanites", "stealth_nanites", "memleak_nanites","sensor_voice_nanites", "voice_nanites")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 500, TECHWEB_POINT_TYPE_NANITES = 500)

/datum/techweb_node/nanite_mesh
	id = "nanite_mesh"
	display_name = "Mesh Nanite Programming"
	description = "Nanite programs that require static structures and membranes."
	prereq_ids = list("nanite_base","engineering")
	design_ids = list("hardening_nanites", "dermal_button_nanites", "refractive_nanites", "cryo_nanites", "conductive_nanites", "shock_nanites", "emp_nanites", "temperature_nanites")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 500, TECHWEB_POINT_TYPE_NANITES = 500)

/datum/techweb_node/nanite_bio
	id = "nanite_bio"
	display_name = "Biological Nanite Programming"
	description = "Nanite programs that require complex biological interaction."
	prereq_ids = list("nanite_base","biotech")
	design_ids = list("regenerative_nanites", "bloodheal_nanites", "coagulating_nanites","poison_nanites","flesheating_nanites",\
					"sensor_crit_nanites","sensor_death_nanites", "sensor_health_nanites", "sensor_damage_nanites", "sensor_race_nanites")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500)

/datum/techweb_node/nanite_neural
	id = "nanite_neural"
	display_name = "Neural Nanite Programming"
	description = "Nanite programs affecting nerves and brain matter."
	prereq_ids = list("nanite_bio")
	design_ids = list("nervous_nanites", "brainheal_nanites", "stun_nanites", "selfscan_nanites")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000, TECHWEB_POINT_TYPE_NANITES = 1000)

/datum/techweb_node/nanite_synaptic
	id = "nanite_synaptic"
	display_name = "Synaptic Nanite Programming"
	description = "Nanite programs affecting mind and thoughts."
	prereq_ids = list("nanite_neural","neural_programming")
	design_ids = list("mindshield_nanites", "pacifying_nanites", "blinding_nanites", "sleep_nanites", "mute_nanites", "speech_nanites","hallucination_nanites")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 1000, TECHWEB_POINT_TYPE_NANITES = 1000)

/datum/techweb_node/nanite_harmonic
	id = "nanite_harmonic"
	display_name = "Harmonic Nanite Programming"
	description = "Nanite programs that require seamless integration between nanites and biology."
	prereq_ids = list("nanite_bio","nanite_smart","nanite_mesh")
	design_ids = list("researchplus_nanites","aggressive_nanites","defib_nanites","regenerative_plus_nanites","brainheal_plus_nanites","purging_plus_nanites","nanite_heart")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2000, TECHWEB_POINT_TYPE_NANITES = 2000)

/datum/techweb_node/nanite_combat
	id = "nanite_military"
	display_name = "Military Nanite Programming"
	description = "Nanite programs that perform military-grade functions."
	prereq_ids = list("nanite_harmonic", "syndicate_basic")
	design_ids = list("explosive_nanites","pyro_nanites","meltdown_nanites","viral_nanites")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 2500, TECHWEB_POINT_TYPE_NANITES = 2500)

/datum/techweb_node/nanite_hazard
	id = "nanite_hazard"
	display_name = "Hazard Nanite Programs"
	description = "Extremely advanced Nanite programs with the potential of being extremely dangerous."
	prereq_ids = list("nanite_harmonic", "alientech")
	design_ids = list("spreading_nanites","mitosis_nanites")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 3000, TECHWEB_POINT_TYPE_NANITES = 4000)



////////////////////////Alien technology////////////////////////

/datum/techweb_node/syndicate_basic
	id = "syndicate_basic"
	display_name = "Foreign Technology"
	description = "Dangerous research used to create dangerous objects."
	prereq_ids = list("adv_engi", "adv_weaponry", "explosive_weapons")
	design_ids = list("decloner", "ai_cam_upgrade", "suppressor", "donksofttoyvendor", "donksoft_refill", "thermal_goggles")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 10000)
	hidden = TRUE

/datum/techweb_node/syndicate_basic/New()		//Crappy way of making syndicate gear decon supported until there's another way.
	. = ..()
	boost_item_paths = list()
	for(var/path in GLOB.uplink_items)
		var/datum/uplink_item/UI = new path
		if(!UI.item || !UI.illegal_tech)
			continue
		boost_item_paths |= UI.item	//allows deconning to unlock.

*/

////////////////////////AI Hardware////////////////////////

	id = "ai"
	display_name = "Artificial Intelligence"
	description = "AI unit research."
	prereq_ids = list("base")
	design_ids = list("server_cabinet", "networking_machine", "subcontroller", "ai_data_core", "ai_core_display", "ai_server_overview", "ram1", "basic_ai_cpu", "aifixer", "freeform_module", "reset_module", "purge_module", "remove_module", "freeformcore_module", "default_module", "intellicard")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 1000)

/datum/techweb_node/ai_cpu_advanced
	id = "ai_cpu_advanced"
	display_name = "Advanced Neural Processing"
	description = "Using breakthroughs in high-efficiency fabrication it should be possible to drastically increase the speed of Neural Processing Units, at the cost of increased power consumption."
	design_ids = list("advanced_ai_cpu")
	prereq_ids = list("high_efficiency", "ai")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 3000)

/datum/techweb_node/ai_cpu_experimental
	id = "ai_cpu_experimental"
	display_name = "Experimental Neural Processing"
	description = "Previously discarded NPUs could be repurposed with minor tweaks. This comes at the expense of increased powerconsumption, but enhanced overclocking capabilities."
	design_ids = list("experimental_ai_cpu")
	prereq_ids = list("ai_cpu_advanced")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 5000)

/datum/techweb_node/ai_ram_high_cap
	id = "ai_ram_high_cap"
	display_name = "High Capacity Memory Sticks"
	description = "Further advances in memory production should allow higher density sticks."
	design_ids = list("ram2")
	prereq_ids = list("high_efficiency", "ai")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 3000)

/datum/techweb_node/ai_ram_hyper
	id = "ai_ram_hyper"
	display_name = "Hyper Capacity Memory Sticks"
	description = "Further refinement of memory technology allows previously unimaginable data-density."
	design_ids = list("ram3")
	prereq_ids = list("ai_ram_high_cap")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 5000)

/datum/techweb_node/ai_cpu_1
	id = "ai_cpu_2"
	display_name = "Improved CPU Sockets"
	description = "Refinements in general data theory should allow the mounting of an extra CPU core in each AI server rack."
	prereq_ids = list("ai")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 5000)

/datum/techweb_node/ai_ram_1
	id = "ai_ram_2"
	display_name = "Improved Memory Bus"
	description = "Refinements in general data theory should allow the addition of another memory stick in each AI server rack."
	prereq_ids = list("ai")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 5000)

/datum/techweb_node/ai_architecture_256
	id = "ai_arch_256"
	display_name = "256bit Computing"
	description = "Experience with creating computer hardware highlights the need for additional CPU cores and memory sticks in each rack. This acts as a gateway to those technologies."
	prereq_ids = list("ai_ram_2", "ai_cpu_2")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 5000)

/datum/techweb_node/ai_cpu_2
	id = "ai_cpu_3"
	display_name = "Advanced CPU Sockets"
	description = "256 bit computing allows the introduction of another CPU core."
	prereq_ids = list("ai_arch_256", "ai_cpu_2")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 5000)

/datum/techweb_node/ai_cpu_3
	id = "ai_cpu_4"
	display_name = "Ultra Advanced CPU Sockets"
	description = "Instant teleportation of data across CPU caches allows the installation of a fourth CPU core."
	prereq_ids = list("ai_cpu_3")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 10000)

/datum/techweb_node/ai_ram_2
	id = "ai_ram_3"
	display_name = "Advanced Memory Bus"
	description = "256 bit computing allows the introduction of another memory module."
	prereq_ids = list("ai_arch_256", "ai_ram_2")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 4000)

/datum/techweb_node/ai_ram_3
	id = "ai_ram_4"
	display_name = "Ultra Advanced Memory Bus"
	description = "High-tech Combine teleportation allows the removal of all bottlenecks. Allows for the introduction of a fourth memory module."
	prereq_ids = list("ai_ram_3")
	research_costs = list(TECHWEB_POINT_TYPE_AI = 8000)

/proc/total_techweb_points()
	var/list/datum/techweb_node/processing = list()
	for(var/i in subtypesof(/datum/techweb_node))
		processing += new i
	var/datum/techweb/TW = new
	TW.research_points = list()
	for(var/i in processing)
		var/datum/techweb_node/TN = i
		TW.add_point_list(TN.research_costs)
	return TW.research_points

/proc/total_techweb_points_printout()
	var/list/datum/techweb_node/processing = list()
	for(var/i in subtypesof(/datum/techweb_node))
		processing += new i
	var/datum/techweb/TW = new
	TW.research_points = list()
	for(var/i in processing)
		var/datum/techweb_node/TN = i
		TW.add_point_list(TN.research_costs)
	return TW.printout_points()

