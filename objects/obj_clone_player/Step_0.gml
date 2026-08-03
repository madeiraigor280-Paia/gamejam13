var _no_chao = place_meeting(x, y + 1, obj_bloco)

//Coloquei aqui para contar a gravidade mesmo sem o modo
if (!_no_chao)
{
	velv += gravidade	
	
}


if (move_chekpoint)exit;

if (global.player1 == true) 
{
	image_blend = c_grey
	muda_sprite(spr_frog_idle)
	velh = 0;
	velv += gravidade;
	exit;
	
}
else
{
	image_blend = c_white
	
	
}


input_player()

var _dire = point_direction(x, y, mouse_x, mouse_y)



//Se nossa direção for igual a 90 ou 270, então retorna verdadeiro
var _intervalo = _dire == clamp(_dire, 90, 270)
var _left, _right, _jump, _xDirection;
	
_left = keyboard_check(ord("A"))
_right = keyboard_check(ord("D"))
	
var _xDirection = _right - _left;
var _na_parede = place_meeting(x +(_xDirection), y, obj_bloco)

if (!_na_parede)
{
	if(_intervalo)
	{
		image_xscale = -1;	
	
	}
	else
	{
		image_xscale = 1	
	}
}

if (keyboard_check_pressed(ord("K")))
{
	show_message("kkkk")
	global.player1 = !global.player1	
	
}