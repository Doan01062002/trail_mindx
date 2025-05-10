/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4253A1FE
/// @DnDArgument : "obj" "obj_question_ui"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_question_ui"
var l4253A1FE_0 = false;l4253A1FE_0 = instance_exists(obj_question_ui);if(!l4253A1FE_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3293F257
	/// @DnDParent : 4253A1FE
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_question_ui"
	/// @DnDSaveInfo : "objectid" "obj_question_ui"
	instance_create_layer(x, y, "Instances", obj_question_ui);}