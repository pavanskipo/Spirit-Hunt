
var half_w = w * 0.5;


//Draw box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-half_w-border, y-h-(border*2), x+half_w+border, y, 15, 15, false);

draw_sprite(sMarker, 0, x, y);
draw_set_alpha(1);

//Draw text
DrawSetText(c_white, fSign, fa_center, fa_top);
draw_text(x, y-h-border, text_current);