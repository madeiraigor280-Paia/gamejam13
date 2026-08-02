
var _no_chao = place_meeting(x, y + 1, obj_bloco)
if (!_no_chao)
{
	velv += gravidade
}
else
{
	var _left, _right, _jump, _xDirection;
	
	//_left = keyboard_check(ord("A"))
	//_right = keyboard_check(ord("D"))
	
	velh = lerp(velh, 0, .1)	
}

if (velh <= 0.1 && !criei_clone)
{
	muda_sprite(spr_player_enter)
	
	
	if (sprite_index == spr_player_enter)
	{
	
		
		if (image_index >= image_number-1)
		{
			
			instance_create_layer(x, y, layer, obj_clone_player)
			criei_clone = true
			instance_destroy()
		}
	}
}

show_debug_message(image_index)