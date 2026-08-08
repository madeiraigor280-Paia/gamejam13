if (global.radiacao >= 100)
{

	transicao_simples(global.sala_segura)
	global.radiacao = 0
	
}

if (keyboard_check_pressed(ord("H")))
{
	global.mostra_hud = !global.mostra_hud	
}