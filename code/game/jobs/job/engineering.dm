/datum/job/chief_engineer
	title = "Engineering Lead"
	flag = ENGLEAD
	head_position = 1
	department = "Engineering"
	department_flag = LEAD
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Expedition Leads"
	selection_color = "#ffeeaa"
	idtype = /obj/item/weapon/card/id/silver
	req_admin_notify = 1
	economic_modifier = 10

	ideal_character_age = 50


	access = list(access_engine, access_maint_tunnels, access_external_airlocks,
			             access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_access = list(access_engine, access_maint_tunnels, access_external_airlocks,
			              access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_player_age = 7


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/heads/ce(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/industrial(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel_eng(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/chief_engineer(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/device/pda/heads/ce(H), slot_l_store)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/workboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/hardhat/white(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/utility/full(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		return 1

	equip_survival(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.species.equip_survival_gear(H,1)
		return 1


/datum/job/engineer
	title = "Engineering Crew"
	flag = ENGINEER
	department = "Engineering"
	department_flag = SERVICECIV
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the engineering lead"
	selection_color = "#fff5cc"
	economic_modifier = 5
	access = list(access_engine, access_maint_tunnels, access_external_airlocks,)
	minimal_access = list(access_engine, access_maint_tunnels, access_external_airlocks,)
	alt_titles = list("EC Solar Expert","EC Atmos Expert","EC Electrician")


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_eng(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/industrial(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel_eng(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/engineer(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/workboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/utility/full(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/hardhat(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/device/t_scanner(H), slot_r_store)
		H.equip_to_slot_or_del(new /obj/item/device/pda/engineering(H), slot_l_store)
		return 1

	equip_survival(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.species.equip_survival_gear(H,1)
		return 1

