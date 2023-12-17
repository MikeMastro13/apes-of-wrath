extends Node


const ICON_PATH = "res://assets/sprites/upgrades/"
const WEAPON_PATH = "res://assets/sprites/attacks/"
const UPGRADES = {
	"icespear1": {
		"icon": WEAPON_PATH + "hot_dog.png",
		"displayname": "Ice Spear",
		"details": "Hurl hot and steamy weenies at those unfortunate enough to stand in your way.",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"icespear2": {
		"icon": WEAPON_PATH + "hot_dog.png",
		"displayname": "Hot Dog",
		"details": "Hurl hot and steamy weenies at those unfortunate enough to stand in your way.",
		"level": "Level: 2",
		"prerequisite": ["icespear1"],
		"type": "weapon"
	},
	"icespear3": {
		"icon": WEAPON_PATH + "hot_dog.png",
		"displayname": "Hot Dog",
		"details": "Hurl hot and steamy weenies at those unfortunate enough to stand in your way.",
		"level": "Level: 3",
		"prerequisite": ["icespear2"],
		"type": "weapon"
	},
	"icespear4": {
		"icon": WEAPON_PATH + "hot_dog.png",
		"displayname": "Hot Dog",
		"details": "Hurl hot and steamy weenies at those unfortunate enough to stand in your way.",
		"level": "Level: 4",
		"prerequisite": ["icespear3"],
		"type": "weapon"
	},
	"armor1": {
		"icon": ICON_PATH + "musk.png",
		"displayname": "Musk",
		"details": "Conditions your fur to absorb more damage. Don’t swallow.",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"armor2": {
		"icon": ICON_PATH + "musk.png",
		"displayname": "Musk",
		"details": "Conditions your fur to absorb more damage. Don’t swallow.",
		"level": "Level: 2",
		"prerequisite": ["armor1"],
		"type": "upgrade"
	},
	"armor3": {
		"icon": ICON_PATH + "musk.png",
		"displayname": "Musk",
		"details": "Conditions your fur to absorb more damage. Don’t swallow.",
		"level": "Level: 3",
		"prerequisite": ["armor2"],
		"type": "upgrade"
	},
	"armor4": {
		"icon": ICON_PATH + "musk.png",
		"displayname": "Musk",
		"details": "Conditions your fur to absorb more damage. Don’t swallow.",
		"level": "Level: 4",
		"prerequisite": ["armor3"],
		"type": "upgrade"
	},
	"speed1": {
		"icon": ICON_PATH + "air_jichaels.png",
		"displayname": "Speed",
		"details": "+1 Speed! Probably fake.",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"speed2": {
		"icon": ICON_PATH + "air_jichaels.png",
		"displayname": "Speed",
		"details": "+1 Speed! Probably fake.",
		"level": "Level: 2",
		"prerequisite": ["speed1"],
		"type": "upgrade"
	},
	"speed3": {
		"icon": ICON_PATH + "air_jichaels.png",
		"displayname": "Speed",
		"details": "+1 Speed! Probably fake.",
		"level": "Level: 3",
		"prerequisite": ["speed2"],
		"type": "upgrade"
	},
	"speed4": {
		"icon": ICON_PATH + "air_jichaels.png",
		"displayname": "Speed",
		"details": "+1 Speed! Probably fake.",
		"level": "Level: 4",
		"prerequisite": ["speed3"],
		"type": "upgrade"
	}
}

