
draw_self();

draw_set_font(fnt_tutorial);

//Alinhando o texto
draw_set_halign(fa_center)

draw_set_valign(fa_center)

//Desenhando o meu texto
//Definindo a cor que eu vou usar

//draw_text(x, y, texto)

//Desenhando um texto que muda de escala
draw_text_transformed(x, y, texto, escala_texto_x, escala_texto_y, 0);

//Resetando o meu draw set
draw_set_halign(-1)
draw_set_valign(-1)

draw_set_font(-1)