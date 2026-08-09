function scr_textos(){
	switch npc_nome{
		
		case "Primeiro Texto":
		
		//Aqui pede 4 argumentos, um texto, um retrato, o lado e o nome
		//Tentar colocar a voz depois
		ds_grid_add_text("Olá, o que você faz aqui, a humanidade já acabou e só tem você aqui", spr_dialogo, 0, "Zé Zezin");
		ds_grid_add_text("Eu estou tentando sobreviver nesse mundo, mas acho que é só questão de tempo", spr_frog_dialogo, 1, "Player");
		ds_grid_add_text("Bem, depois de um cara deixou o café cair no reator nuclear e explodir tudo eu acho que não tem mais salvação", spr_dialogo, 0, "Zé Zezin");
		ds_grid_add_text("Que, como assim explodiram tudo ?", spr_frog_dialogo, 1, "Player");
		ds_grid_add_text("Simples, com apenas um erro, surgiram outros, não tem como ganhar do efeito borboleta da natureza", spr_dialogo, 0, "Zé Zezin");
			add_op("Como eu posso sobreviver ?", "Resposta 1")
			add_op("Como eu escapo daqui ?", "Resposta 2")
			add_op("Que lugar é esse ?", "Resposta 3")
			add_op("Sair", "Sair")
		
		break;	
			case "Resposta 1":
				ds_grid_add_text("Bem, pra voce sobreviver precisa aprender a se virar, você tem uma arma clonadora não ?", spr_dialogo, 0, "Zé Zezin");
				ds_grid_add_text("Sim, tenho uma, mas pelo jeito acho que o estrago foi grande", spr_frog_dialogo, 1, "Player");
				ds_grid_add_text("Você tem força para lutar contra eles, basta usar seu clone com o mouse, com o K podendo alterar sua alma com eles", spr_dialogo, 0, "Zé Zezin");
				ds_grid_add_text("Você também pode trocar de alma com ele apertando G, e se você precisa desfazer dele aperte T, e lembre-se que uma caixa pode guardar coisas...", spr_dialogo, 0, "Zé Zezin");
				
				//add_op("Primeira Opção so que com mais texto", "Resposta 1")
				add_op("Como eu escapo daqui ?", "Resposta 2")
				add_op("Que lugar é esse ?", "Resposta 3")
				add_op("Sair", "Sair")
				
			//Podemos adicionar valores para cada resposta
			//bom += 1
		
			break;
			case "Resposta 2":
				ds_grid_add_text("Não tem como, nada vence a natureza meu jovem, mas se quiser tentar, se arrisque indo para a direita e tente chegar até o reator ", spr_dialogo, 0, "Zé Zezin");
				ds_grid_add_text("Não sei ao certo, mas eu lembro que tinha salas seguras que você podia tirar um pouco da radiação ", spr_dialogo, 0, "Zé Zezin");
				ds_grid_add_text("Muito obrigado pelas dicas, mas acho que vou tentar um pouco...", spr_frog_dialogo, 1, "Player");
				add_op("Como eu posso sobreviver ?", "Resposta 1")
				//add_op("Segunda Opção, voce vai pagar", "Resposta 2")
				add_op("Que lugar é esse ?", "Resposta 3")
				add_op("Sair", "Sair")
		
		
			break;
		
			case "Resposta 3":
				ds_grid_add_text("Fábricas funcionando até um tempo atrás, porém as ações humanas destruiram tudo", spr_dialogo, 0, "Zé Zezin");
				ds_grid_add_text("Você acha que tem salvação ?", spr_frog_dialogo, 1, "Player");
				add_op("Como eu posso sobreviver ?", "Resposta 1")
				add_op("Sair", "Sair")
				//add_op("Segunda Opção, voce vai pagar", "Resposta 2")
				
				//add_op("Terceira Opção, Acho que ele esta cansado", "Resposta 3")
		
		
		
			break;
			
			case "Sair":
				
				var _dialogo = obj_dialogo
				
				_dialogo.me_destruo = true
				global.dialogo = false
				instance_destroy(_dialogo)
				
			
			break;
			
			case "Zé zezin":
			ds_grid_add_text("Ola humano, caso eu te veja depois eu te explico melhor, eu estou sem tempo", spr_dialogo, 0, "Ze Zezin");
			ds_grid_add_text("Essa e uma sala segura, a radiaçao sempre reseta quando voce entra nela, fique o tempo que quiser", spr_dialogo, 0, "Ze Zezin");
			add_op("Entao tchau", "Sair")
			break;
			
			
			case "Sala_segura":
			ds_grid_add_text("Voce chegou na ultima sala segura, ande um pouco mais se conseguir", spr_dialogo, 0, "Ze Zezin");
			add_op("Te vejo logo", "Sair")
			
			
			break;
		
		case "igor":
			ds_grid_add_text("Ola, vejo que terminou o meu jogo, muito obrigado por jogar", spr_dialogo, 0, "Igor");
			ds_grid_add_text("Acho que não ficou do jeito que eu queria, mas pra uma semana foi o que eu consegui", spr_dialogo, 0, "Igor");
			add_op("Tem mais algo para eu fazer ?", "Resposta_1_creator")
			add_op("Sair", "Sair")
			
			break;
			case "Resposta_1_creator":
			ds_grid_add_text("Atualmente não, pode rejogar se quiser", spr_dialogo, 0, "Igor");
			
				ds_grid_add_text("Quer dizer que eu vou morrer pela radiação?", spr_frog_dialogo, 1, "Player");
				ds_grid_add_text("Sim, por causa de uma pessoa destuiram tudo, aproveite seus ultimos momentos", spr_dialogo, 0, "Igor");
				add_op("Sair", "Sair")
			
		
		break;
		
	}

}

function ds_grid_add_row(){

	///arg ds_grid
	var _grid = argument[0];
	ds_grid_resize( _grid,ds_grid_width( _grid),ds_grid_height( _grid)+1);
	return(ds_grid_height( _grid)-1);
}

function ds_grid_add_text(){
////@arg texto 
////@arg retrato 
////@arg lado
var _grid = texto_grid;
var _y = ds_grid_add_row(_grid);

	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
	_grid[# 4, _y] = argument[3];

}
	
	
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++
}