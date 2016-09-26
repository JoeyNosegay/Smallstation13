/datum/job/rd
	title = "Research Lead"
	flag = SCILEAD
	head_position = 1
	department = "Science"
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the expedition leads"
	selection_color = "#ffddff"
	idtype = /obj/item/weapon/card/id/silver
	req_admin_notify = 1
	economic_modifier = 15
	access = list(access_research, access_ai_upload, access_RC_announce, access_keycard_auth, access_tcomsat)
	minimal_access = list(access_research, access_ai_upload, access_RC_announce, access_keycard_auth, access_tcomsat)
	minimal_player_age = 14
	ideal_character_age = 50

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/heads/rd(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/research_director(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/device/pda/heads/rd(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/weapon/clipboard(H), slot_l_hand)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/toxins(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel_tox(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/toggle/labcoat(H), slot_wear_suit)
		return 1



/datum/job/scientist
	title = "Research Crew"
	flag = SCIENCE
	department = "Science"
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "the research lead"
	selection_color = "#ffeeff"
	economic_modifier = 7
	access = list(access_research,)
	minimal_access = list(access_research,)
	alt_titles = list("SC Roboticist", "SC Researcher")
	minimal_player_age = 14

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_sci(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/scientist(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/white(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/science(H), slot_belt)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/toxins(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel_tox(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/toggle/labcoat/science(H), slot_wear_suit)
		return 1

