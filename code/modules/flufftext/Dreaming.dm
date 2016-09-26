
var/list/dreams = list(
	"an ID card","a bottle","a familiar face","a crewmember","a toolbox","a spacesuited navyman","the Expedition Head",
	"voices from all around","deep space","a doctor","the solar panels","a traitor","an ally","darkness",
	"light","a scientist","a monkey","a catastrophe","a loved one","a gun","warmth","freezing","the sun",
	"a hat","the Luna","a ruined station","a planet","phoron","air","the medical bay","the bridge","blinking lights",
	"a blue light","an abandoned laboratory","S.G.A.S.A.","mercenaries","blood","healing","power","respect",
	"riches","space","a crash","happiness","pride","a fall","water","flames","ice","melons, big and juicy","flying","the eggs","money",
	"the crew resources director","the expedition leads","the engine lead","a research lead","a medical lead",
	"the guard","the warden","a member of Ground Control","an engine crewman ","a service crewman","a student",
	"the Expedition Head","a cargo crewmember","the botanist's locker","the smell of ambrosia vulgaris","a medical crewman","chemistry","fear",
	"a virus","the robotics bay","the chef","some random bartender","some random chaplain","some random librarian","a mouse","an ert member",
	"a beach","the holodeck","a smokey room","a voice","the cold","a mouse","an operating table","the cafeteria","the rain","a skrell",
	"a unathi","a tajaran","the ai core","the mining station","a resomi","a beaker of strange liquid","a realy bad smell",
	"a robust assistant", "a clown", "fire.. fire", "Carmen Miranda's Ghost", "you KNOW that the research lead is a traitor! You dreamt it! You think"

	)

mob/living/carbon/proc/dream()
	dreaming = 1

	spawn(0)
		for(var/i = rand(1,4),i > 0, i--)
			src << "\blue <i>... [pick(dreams)] ...</i>"
			sleep(rand(40,70))
			if(paralysis <= 0)
				dreaming = 0
				return 0
		dreaming = 0
		return 1

mob/living/carbon/proc/handle_dreams()
	if(client && !dreaming && prob(5))
		dream()

mob/living/carbon/var/dreaming = 0
