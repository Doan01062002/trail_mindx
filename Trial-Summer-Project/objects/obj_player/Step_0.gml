/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6CCBD172
/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
image_angle = point_direction(x,y,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C5BF817
/// @DnDArgument : "var" "hp_max"
/// @DnDArgument : "op" "3"
if(hp_max <= 0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6DCC04E8
	/// @DnDParent : 0C5BF817
	/// @DnDArgument : "room" "Room_lose"
	/// @DnDSaveInfo : "room" "Room_lose"
	room_goto(Room_lose);}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 57DFD058
/// @DnDArgument : "obj" "obj_question_ui"
/// @DnDSaveInfo : "obj" "obj_question_ui"
var l57DFD058_0 = false;l57DFD058_0 = instance_exists(obj_question_ui);if(l57DFD058_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3252A135
	/// @DnDParent : 57DFD058
	/// @DnDArgument : "var" "obj_question_ui.dialog_index"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "3"
	if(obj_question_ui.dialog_index < 3){	/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 22939B7A
		/// @DnDParent : 3252A135
		exit;}}