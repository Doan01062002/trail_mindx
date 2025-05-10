
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_rectangle(100, 200, 1000, 480, false); 
draw_set_color(make_color_rgb(30, 30, 30));
draw_rectangle(102, 202, 1000, 478, false);

draw_set_color(c_white);
draw_set_halign(fa_left);

if (dialog_index == 0) {
    draw_text(120, 230, "Xin chúc mừng người chơi đã sống sót sau màn truy đuổi của người máy");
    draw_text(120, 360, "(Click chuột để tiếp tục)");

} else if (dialog_index == 1) {
    draw_text(120, 240, "Câu hỏi sống còn:");
    draw_text(120, 280, "150 + 150 = ?.");
    draw_text(120, 360, "(Bấm phím 1, 2, 3, 4 để chọn đáp án)");

} else if (dialog_index == 2) {
    draw_text(120, 280, "150 + 150 = ?.");
    var dap_an = ["A. 300", "B. 400", "C. 250", "D. 350"];
    var gia_tri = [300, 400, 250, 350];
    var vi_tri_x = [120, 330, 120, 330];
    var vi_tri_y = [350, 350, 410, 410];

    for (var i = 0; i < 4; i++) {
        var vi_tri_dap_an_x = vi_tri_x[i];
        var vi_tri_dap_an_y = vi_tri_y[i];
        var gt = gia_tri[i];


        if (selected == gt) {
            draw_set_color(c_lime);
        } else {
            draw_set_color(c_gray);
        }


        draw_rectangle(vi_tri_dap_an_x, vi_tri_dap_an_y, vi_tri_dap_an_x + 180, vi_tri_dap_an_y + 40, false);


        draw_set_color(c_white);
        draw_text(vi_tri_dap_an_x + 20, vi_tri_dap_an_y + 15, dap_an[i]);
    }
}

if (dialog_index == 3) {
    draw_set_alpha(fade_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1);
}
