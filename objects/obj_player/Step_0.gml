#region variaveis que não pode sumir

var _no_chao = place_meeting(x, y + 1, obj_bloco)



#endregion

//Coloquei aqui para contar a gravidade mesmo sem o modo
//if (!_no_chao)
//{
//	velv += gravidade	
	
//}

if (move_chekpoint)exit;

//Coloquei aqui para contar a gravidade mesmo sem o modo
if (!_no_chao)
{
	velv += gravidade	
	
}



show_debug_message(global.player1)

if (global.player1 == false) 
{
	image_blend = c_grey
	
	muda_sprite(spr_frog_idle)
	velh = 0;
	velv += gravidade;
	
	exit;
	
	
	
}
else
{
	image_blend = c_white;
	
	
	
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
	if (instance_exists(obj_clone_player))
	{
		global.player1 = !global.player1;
	}
	
}

if (keyboard_check_released(ord("E")))
{
	global.tiro_clone = !global.tiro_clone;
		
}


if (keyboard_check_released(ord("Q")))
{
	room_restart()	
	
}

if (keyboard_check_pressed(ord("T")))
{
	if (instance_exists(obj_clone_player))
	{
		
		obj_clone_player.me_destruo = true
		if (instance_exists(obj_arma_player))
		{
			obj_arma_player.ja_clonei_na_fase = false	
		}
		
	}
	
	
}

//Empurrando blocos
var _push_list = ds_list_create();

var _is_block_h = instance_place_list(x + velh, y, obj_caixa, _push_list, false);

if (_is_block_h){
	if (ds_list_size(_push_list) > 0){
		for(var i = 0; i < ds_list_size(_push_list); i++){
			var block = _push_list[|i]; //ds_list_find_value
			with(block){
				if (!place_meeting(x + other.velh, y, obj_bloco)){
				x += other.velh;
				}
				
			}
		}
		
	}
		
}

ds_list_destroy(_push_list)