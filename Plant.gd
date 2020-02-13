extends Node2D

class Plant:
	
	#External API
	
	var species = "demo"
	var stage = "seed"
	var seedling_image_path = null
	var stage_2_image_path = null
	var epoch = null
	
	
	func _init(species, stage):
		self.species = species 
		self.stage = stage
		species_to_path()
		
	func plant():
		set_epoch()
	
	#Internal API
	
	
	func set_epoch():
		self.epoch = OS.get_unix_time()
		
	func species_to_path():
		if self.species == "water" :
			self.seedling_image_path = "res://assets/Test Resolutions/WaterSeed128.png"
			self.stage_2_image_path = "res://assets/waterplant02.png"
		elif self.species == "grass":
			self.seedling_image_path = "res://assets/Test Resolutions/GrassSeed128.png"
			self.stage_2_image_path = "res://assets/grass_state_2.png"
		elif self.species == "fire":
			self.seedling_image_path = "res://assets/Test Resolutions/FireSeed128.png"
			self.stage_2_image_path = "res://assets/fire_state_2.png"
