/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 2D56DFE1
/// @DnDArgument : "direction" "point_direction(x,y,obj_player.x, obj_player.y)"
direction = point_direction(x,y,obj_player.x, obj_player.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3B9B1DDE
/// @DnDArgument : "angle" "point_direction(x,y,obj_player.x, obj_player.y) - 180"
image_angle = point_direction(x,y,obj_player.x, obj_player.y) - 180;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 211526C8
/// @DnDArgument : "var" "hp"
if(hp == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 07ED4768
	/// @DnDParent : 211526C8
	instance_destroy();}