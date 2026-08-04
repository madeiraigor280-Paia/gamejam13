
var _no_chao = place_meeting(x, y + 1, obj_bloco)
var _na_parede = place_meeting(x +(image_xscale), y, obj_bloco)


if (_no_chao or _na_parede && !criei_clone)
{
	
	speed = 0;
	
	if (!mudei)
	{
		muda_sprite(spr_player_enter)
		mudei = true
	}	
	
	
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