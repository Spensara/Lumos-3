/datum/job/virologist
	title = "Virologist"
	flag = VIROLOGIST
	department_head = list("Chief Medical Officer")
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the chief medical officer"
	selection_color = "#74b5e0"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 60

	outfit = /datum/outfit/job/virologist
	plasma_outfit = /datum/outfit/plasmaman/viro

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_CLONING, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_VIROLOGY, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_MED
	bounty_types = CIV_JOB_VIRO

	display_order = JOB_DISPLAY_ORDER_VIROLOGIST

	threat = 1.5

	starting_modifiers = list(/datum/skill_modifier/job/surgery, /datum/skill_modifier/job/affinity/surgery)

	family_heirlooms = list(					//LUMOS CHANGE - Heirloom touch up
		/obj/item/reagent_containers/syringe,
		/obj/item/reagent_containers/dropper,
		/obj/item/clothing/gloves/color/latex
	)

/datum/outfit/job/virologist
	name = "Virologist"
	jobtype = /datum/job/virologist

	belt = /obj/item/pda/viro
	ears = /obj/item/radio/headset/headset_med
	uniform = /obj/item/clothing/under/rank/medical/virologist
	mask = /obj/item/clothing/mask/surgical
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit =  /obj/item/clothing/suit/toggle/labcoat/virologist
	suit_store =  /obj/item/flashlight/pen

	backpack = /obj/item/storage/backpack/virology
	satchel = /obj/item/storage/backpack/satchel/vir
	duffelbag = /obj/item/storage/backpack/duffelbag/med
