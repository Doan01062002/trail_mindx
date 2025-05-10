
// Kích thước thanh
var bar_width = 400;
var bar_height = 30;
var bar_x = 0;
var bar_y = 0;

// Tính phần trăm còn lại
var percent = countdown_timer / countdown_total;

// Vẽ viền thanh
draw_set_color(c_black);
draw_rectangle(bar_x - 2, bar_y - 2, bar_x + bar_width + 2, bar_y + bar_height + 2, false);

// Vẽ nền
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Vẽ phần còn lại
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + (bar_width * percent), bar_y + bar_height, false);

// Vẽ thời gian còn lại (số)
draw_set_color(c_white);
draw_text(bar_x + bar_width / 2 - 20, bar_y + bar_height / 2 - 8, string(ceil(countdown_timer)) + "s");
