Config.Jobs.slaughterer = {

	BlipInfos = {
		Sprite = 78,
		Color = 5
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = "benson",
			Trailer = "none",
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = 271.7, y = -973.47, z = 28.37},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("s_slaughter_locker"),
			Type = "cloakroom",
			Hint = _U("cloak_change")
		},

		CollectBeef = {
			Pos = {x = 974.97, y = -2120.07, z = 31.39},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 20,
			Blip = true,
			Name = _U("s_slaughterhouse"),
			Type = "work",
			Item = {
				{
					name = _U("s_beef"),
					db_name = "beef",
					time = 1000,
					max = 100,
					add = 1,
					remove = 1,
					requires = "nothing",
					requires_name = "Nothing",
					drop = 100
				}
			},
			Hint = _U("s_collectbeef")
		},

		VehicleSpawner = {
			Pos = {x = 264.69, y = -971.35, z = 29.32},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 36,
			Blip = false,
			Name = _U("spawn_veh"),
			Type = "vehspawner",
			Spawner = 1,
			Hint = _U("spawn_veh_button"),
			Caution = 500
		},

		VehicleSpawnPoint = {
			Pos = {x = 257.82, y = -968.30, z = 29.30},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U("service_vh"),
			Type = "vehspawnpt",
			Spawner = 1,
			Heading = 155.3
		},

		VehicleDeletePoint = {
			Pos = {x = -1061.51, y = -2008.35, z = 12.16},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("return_vh"),
			Type = "vehdelete",
			Hint = _U("return_vh_button"),
			Spawner = 1,
			Caution = 500,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = 277.11, y = -979.59, z = 29.37},
			Color = {r = 204, g = 204, b = 0},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Marker = 20,
			Blip = true,
			Name = _U("delivery_point"),
			Type = "delivery",
			Spawner = 1,
			Item = {
				{
					name = _U("delivery"),
					time = 250,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 750,
					requires = "beef",
					requires_name = _U("s_beef"),
					drop = 100
				}
			},
			Hint = _U("s_deliver")
		}
	}
}
