extends Control

var hearts = 4 setget set_hearts
var max_hearts = 4 setget set_max_hearts

onready var label = $Label

func set_hearts(value):
	hearts = clamp(value, 0, max_hearts)

func set_max_hearts(vaule):
	max_hearts = max(vaule, 1)

func _ready():
	self.max_hearts = PlayerStats.max_health
	self.hearts = PlayerStats.health
	PlayerStats.connect("health_changed", self, "set_hearts")
