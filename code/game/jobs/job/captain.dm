var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

/datum/job/captain
	title = "Expedition Head"
	flag = CAPTAIN
	department = "Command"
	head_position = 1
	department_flag = LEAD
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the good of the station and your fellow Lead's advice"
	selection_color = "#ccccff"
	idtype = /obj/item/weapon/card/id/gold
	req_admin_notify = 1
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 14
	economic_modifier = 20

	ideal_character_age = 50


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/heads/captain(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/captain(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel_cap(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		var/obj/item/clothing/under/U = new /obj/item/clothing/under/rank/captain(H)
		if(H.age>49)
			U.accessories += new /obj/item/clothing/accessory/medal/gold/captain(U)
		H.equip_to_slot_or_del(U, slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/device/pda/captain(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/caphat(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses(H), slot_glasses)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/ids(H), slot_l_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/ids(H.back), slot_in_backpack)


		H.implant_loyalty(src)

		return 1

	get_access()
		return get_all_station_access()



/datum/job/hop
	title = "Crew Resources Manager"
	flag = CRES
	department = "Civilian"
	head_position = 1
	department_flag = LEAD
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Expedition Leads"
	selection_color = "#ddddff"
	idtype = /obj/item/weapon/card/id/silver
	req_admin_notify = 1
	minimal_player_age = 10
	economic_modifier = 10
	ideal_character_age = 50

	access = list(access_security, access_brig,
			            access_medical, access_engine, access_ai_upload,
			            access_maint_tunnels, access_kitchen, access_cargo,
			            access_research, access_hop, access_RC_announce, access_keycard_auth,)
	minimal_access = list(access_security, access_brig,
			            access_medical, access_engine, access_ai_upload, access_maint_tunnels,
			            access_kitchen, access_cargo,access_research,
			            access_hop, access_RC_announce, access_keycard_auth)


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/heads/hop(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel_norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/head_of_personnel(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/heads/hop(H), slot_belt)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/ids(H), slot_l_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/ids(H.back), slot_in_backpack)
		return 1
