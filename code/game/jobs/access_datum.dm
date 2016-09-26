/datum/access
	var/id = 0
	var/desc = ""
	var/region = ACCESS_REGION_NONE
	var/access_type = ACCESS_TYPE_STATION

/datum/access/dd_SortValue()
	return "[access_type][desc]"

/*****************
* Station access *
*****************/
/var/const/access_security = 1
/datum/access/security
	id = access_security
	desc = "Public Safety Offices"
	region = ACCESS_REGION_SECURITY

/var/const/access_brig = 2
/datum/access/brig
	id = access_brig
	desc = "Warden"
	region = ACCESS_REGION_SECURITY

/var/const/access_medical = 3
/datum/access/medical
	id = access_medical
	desc = "Medbay"
	region = ACCESS_REGION_MEDBAY

/var/const/access_research = 4
/datum/access/research
	id = access_research
	desc = "Science"
	region = ACCESS_REGION_RESEARCH

/var/const/access_engine = 5
/datum/access/engine
	id = access_engine
	desc = "Engineering"
	region = ACCESS_REGION_ENGINEERING

/var/const/access_maint_tunnels = 6
/datum/access/maint_tunnels
	id = access_maint_tunnels
	desc = "Maintenance"
	region = ACCESS_REGION_ENGINEERING

/var/const/access_external_airlocks = 7
/datum/access/external_airlocks
	id = access_external_airlocks
	desc = "External Airlocks"
	region = ACCESS_REGION_ENGINEERING

/var/const/access_coms = 8
/datum/access/coms
	id = access_coms
	desc = "Communications Office"
	region = ACCESS_REGION_COMMAND

/var/const/access_ai_upload = 9
/datum/access/ai_upload
	id = access_ai_upload
	desc = "AI Upload"
	region = ACCESS_REGION_COMMAND

/var/const/access_captain = 10
/datum/access/captain
	id = access_captain
	desc = "Expedition Head Office"
	region = ACCESS_REGION_COMMAND

/var/const/access_service = 11
/datum/access/service
	id = access_service
	desc = "Services"
	region = ACCESS_REGION_GENERAL

/var/const/access_kitchen = 12
/datum/access/kitchen
	id = access_kitchen
	desc = "Kitchen"
	region = ACCESS_REGION_GENERAL

/var/const/access_cargo = 13
/datum/access/cargo
	id = access_cargo
	desc = "Supply Access"
	region = ACCESS_REGION_SUPPLY

// /var/const/free_access_id = 43
// /var/const/free_access_id = 44
// /var/const/free_access_id = 46
// /var/const/free_access_id = 51
// /var/const/free_access_id = 52

/var/const/access_hop = 14
/datum/access/hop
	id = access_hop
	desc = "Crew Resources"
	region = ACCESS_REGION_COMMAND

/var/const/access_RC_announce = 15 //Request console announcements
/datum/access/RC_announce
	id = access_RC_announce
	desc = "RC Announcements"
	region = ACCESS_REGION_COMMAND

/var/const/access_keycard_auth = 16 //Used for events which require at least two people to confirm them
/datum/access/keycard_auth
	id = access_keycard_auth
	desc = "Keycode Auth. Device"
	region = ACCESS_REGION_COMMAND

/var/const/access_tcomsat = 17 // has access to the entire telecomms satellite / machinery
/datum/access/tcomsat
	id = access_tcomsat
	desc = "Telecommunications"
	region = ACCESS_REGION_COMMAND

/var/const/access_science = 18 // has access to the entire telecomms satellite / machinery
/datum/access/science
	id = access_science
	desc = "Science"
	region = ACCESS_REGION_RESEARCH

/******************
* Central Command *
******************/
/var/const/access_cent_general = 101//General facilities.
/datum/access/cent_general
	id = access_cent_general
	desc = "Code Grey"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_thunder = 102//Thunderdome.
/datum/access/cent_thunder
	id = access_cent_thunder
	desc = "Code Yellow"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_specops = 103//Special Ops.
/datum/access/cent_specops
	id = access_cent_specops
	desc = "Code Black"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_medical = 104//Medical/Research
/datum/access/cent_medical
	id = access_cent_medical
	desc = "Code White"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_living = 105//Living quarters.
/datum/access/cent_living
	id = access_cent_living
	desc = "Code Green"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_storage = 106//Generic storage areas.
/datum/access/cent_storage
	id = access_cent_storage
	desc = "Code Orange"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_teleporter = 107//Teleporter.
/datum/access/cent_teleporter
	id = access_cent_teleporter
	desc = "Code Blue"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_creed = 108//Creed's office.
/datum/access/cent_creed
	id = access_cent_creed
	desc = "Code Silver"
	access_type = ACCESS_TYPE_CENTCOM

/var/const/access_cent_captain = 109//Captain's office/ID comp/AI.
/datum/access/cent_captain
	id = access_cent_captain
	desc = "Code Gold"
	access_type = ACCESS_TYPE_CENTCOM

/***************
* Antag access *
***************/
/var/const/access_syndicate = 150//General Syndicate Access
/datum/access/syndicate
	id = access_syndicate
	access_type = ACCESS_TYPE_SYNDICATE

/*******
* Misc *
*******/
/var/const/access_synth = 199
/datum/access/synthetic
	id = access_synth
	desc = "Synthetic"
	access_type = ACCESS_TYPE_NONE

/var/const/access_crate_cash = 200
/datum/access/crate_cash
	id = access_crate_cash
	access_type = ACCESS_TYPE_NONE
