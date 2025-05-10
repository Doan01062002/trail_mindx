/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 543BB341
/// @DnDArgument : "y1" "40"
/// @DnDArgument : "x2" "250"
/// @DnDArgument : "y2" "60"
/// @DnDArgument : "value" "hp_max"
/// @DnDArgument : "backcol" "$FF0000FF"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00CC00"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(0, 40, 250, 60, hp_max, $FF0000FF & $FFFFFF, $FF00CC00 & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF0000FF>>24) != 0), (($FF000000>>24) != 0));