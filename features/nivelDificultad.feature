Feature:
Como jugador 1
Quiero seleccionar un nivel de dificultad para el jugador 2
Para que el juego sea mas entretenido

Scenario: Basico
Given ingreso al menu de configuraciones
And luego presiono el boton de "basico"
And hago click en "Aceptar"
Then veo la pagina principal del juego

Scenario: Intermedio
Given ingreso al menu de configuraciones
And luego presiono el boton de "intermedio"
And hago click en "Aceptar"
Then veo la pagina principal del juego

Scenario: Avanzado
Given ingreso al menu de configuraciones
And luego presiono el boton de "avanzado"
And hago click en "Aceptar"
Then veo la pagina principal del juego