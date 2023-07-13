var font = font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890.!?:",true,2)
draw_set_font(font)
draw_set_halign(fa_center)
if active
	draw_text(320,texty,text)