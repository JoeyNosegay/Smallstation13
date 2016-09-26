
var/const/LEAD  			=(1<<0)

var/const/CAPTAIN			=(1<<0)
var/const/LEADS				=(1<<1)
var/const/WARDEN			=(1<<2)
var/const/GUARD 			=(1<<3)
var/const/ENGLEAD			=(1<<4)
var/const/AI    			=(1<<5)
var/const/CYBORG			=(1<<6)


var/const/MEDSCI			=(1<<1)

var/const/SCILEAD			=(1<<0)
var/const/MEDLEAD			=(1<<1)
var/const/SCIENCE			=(1<<2)
var/const/MEDICAL			=(1<<3)


var/const/SERVICECIV		=(1<<2)

var/const/CRES				=(1<<0)
var/const/SERVICE			=(1<<1)
var/const/CHEF  			=(1<<2)
var/const/CARGOTECH			=(1<<3)
var/const/ENGINEER			=(1<<4)
var/const/ASSISTANT			=(1<<5)


var/list/assistant_occupations = list(
)


var/list/command_positions = list(
	"Expedition Head",
	"Expedition Lead",
	"Crew Resources Director",
	"Engineering Lead",
	"Research Lead",
	"Medical Lead"
)


var/list/engineering_positions = list(
	"Engineering Lead",
	"Engineering Crew",
)


var/list/medical_positions = list(
	"Medical Lead",
	"Medical Crew",
)


var/list/science_positions = list(
	"Research Lead",
	"Research Crew"
)

//BS12 EDIT
var/list/cargo_positions = list(
	"Cargo Crew",
	"Mining Crew"
)

var/list/civilian_positions = list(
	"Crew Resources Director",
	"Service Crew",
	"Assistant",
)


var/list/security_positions = list(
	"Warden",
	"Guard"
)


var/list/nonhuman_positions = list(
	"AI",
	"Cyborg",
	"pAI"
)


/proc/guest_jobbans(var/job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)	continue
		occupations += job

	return occupations

/proc/get_alternate_titles(var/job)
	var/list/jobs = get_job_datums()
	var/list/titles = list()

	for(var/datum/job/J in jobs)
		if(J.title == job)
			titles = J.alt_titles

	return titles
