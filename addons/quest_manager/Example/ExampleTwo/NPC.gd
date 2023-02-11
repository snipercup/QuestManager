extends Node2D
signal start_quest
signal start_dialogue
@export var dialogue := ""
@export var quest : Resource
@export_enum("Father", "Mother", "Sister") var family_member = 0

func _ready():
	match family_member:
		0:
			$Father.show()
		1:
			$Mother.show()
		2:
			$Sister.show()
	
func get_quest():
	QuestManager.load_quest_resource(quest)
	QuestManager.add_quest("Meal For The Family")

func get_family_member():
	return family_member
	
func give_pie():
	dialogue = "Thank You"

func get_dialogue(num = 0):
	match family_member:
		0:
			if num == 1:
				return "This is really good son"
		1:
			if num == 1:
				return "Thank you son, Its delicious"
		2:
			if num == 1:
				return "Yum Tasty"
	return dialogue
