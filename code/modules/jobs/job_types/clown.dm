/datum/job/clown
	title = "Clown"
	flag = CLOWN
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/clown
	plasma_outfit = /datum/outfit/plasmaman/clown

	access = list(ACCESS_THEATRE)
	minimal_access = list(ACCESS_THEATRE)
	paycheck = PAYCHECK_MINIMAL
	paycheck_department = ACCOUNT_SRV

	mind_traits = list(TRAIT_CLOWN_MENTALITY)

	display_order = JOB_DISPLAY_ORDER_CLOWN
	threat = 0 // honk

	family_heirlooms = list(					//LUMOS CHANGE - Heirloom touch up
		/obj/item/bikehorn/golden,
		/obj/item/soap/,
		/obj/item/paint/anycolor
	)

/datum/outfit/job/clown
	name = "Clown"
	jobtype = /datum/job/clown

	belt = /obj/item/pda/clown
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/clown
	shoes = /obj/item/clothing/shoes/clown_shoes
	mask = /obj/item/clothing/mask/gas/clown_hat
	l_pocket = /obj/item/bikehorn
	backpack_contents = list(
		/obj/item/stamp/clown = 1,
		/obj/item/reagent_containers/spray/waterflower = 1,
		/obj/item/reagent_containers/food/snacks/grown/banana = 1,
		/obj/item/instrument/bikehorn = 1,
		)

	implants = list(/obj/item/implant/sad_trombone)

	backpack = /obj/item/storage/backpack/clown
	satchel = /obj/item/storage/backpack/clown
	duffelbag = /obj/item/storage/backpack/duffelbag/clown //strangely has a duffel

	box = /obj/item/storage/box/hug/survival

	chameleon_extras = /obj/item/stamp/clown

/datum/outfit/job/clown/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(HAS_TRAIT(SSstation, STATION_TRAIT_BANANIUM_SHIPMENTS))
		backpack_contents[/obj/item/stack/sheet/mineral/bananium] = 5

/datum/outfit/job/clown/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE, client/preference_source)
	..()
	if(visualsOnly)
		return

	var/client/C = H.client || preference_source
	if(C)
		H.apply_pref_name("clown", C) //rename the mob AFTER they're equipped so their ID gets updated properly.
	else
		H.fully_replace_character_name(H.real_name, pick(GLOB.clown_names))
	H.dna.add_mutation(CLOWNMUT)
	H.dna.add_mutation(SMILE)
