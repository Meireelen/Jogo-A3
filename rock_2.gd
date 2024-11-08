extends Sprite2D

# Variáveis de movimento
var speed = 200  # Velocidade de movimento
var direction = 1  # 1 para direita, -1 para esquerda

# Limites de movimento
const LEFT_LIMIT = 10
const RIGHT_LIMIT = 1170

	
func _process(delta):
	# Atualiza a posição do personagem com base na direção e velocidade
	position.x += speed * direction * delta

	# Inverte a direção se alcançar os limites
	if position.x <= LEFT_LIMIT:
		direction = 1  # Move para a direita
		flip_h = false  # Reseta o sprite para a posição padrão
	elif position.x >= RIGHT_LIMIT:
		direction = -1  # Move para a esquerda
		flip_h = true  # Espelha o sprite horizontalmente
	
