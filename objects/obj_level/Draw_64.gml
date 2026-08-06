//draw_text(20, 20, global.radiacao)

draw_set_font(fnt_radiacao)
draw_sprite_ext(spr_radiacao, 0, 40, 60, 2, 2, 0, c_white, 1);

draw_text_colour(100, 60, global.radiacao, c_green, c_green, c_green, c_green, 1)

draw_set_font(-1)