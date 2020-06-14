Feature:
Como Jugador 1
Quiero ingresar un codigo secreto
Para que el jugardor 2 pueda adivinar

Scenario:
Given visito la pagina principal
And ingreso el 1 en el campo "codigo1"
And ingreso el 2 en el campo "codigo2"
And ingreso el 3 en el campo "codigo3"
And ingreso el 4 en el campo "codigo4"
Then presiono el boton "Empezar Juego"
