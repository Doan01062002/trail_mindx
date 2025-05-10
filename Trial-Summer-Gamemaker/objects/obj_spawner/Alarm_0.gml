/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3D90D041
/// @DnDArgument : "xpos" "random_range(0,2048)"
/// @DnDArgument : "ypos" "random_range(0,2048)"
/// @DnDArgument : "objectid" "obj_enemy"
/// @DnDSaveInfo : "objectid" "obj_enemy"
instance_create_layer(random_range(0,2048), random_range(0,2048), "Instances", obj_enemy);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 798E2CAF
/// @DnDArgument : "steps" "random_range(120,360)"
alarm_set(0, random_range(120,360));