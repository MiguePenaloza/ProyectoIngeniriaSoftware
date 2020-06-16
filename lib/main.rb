require "./TorosVacas.rb"
require "./jugador.rb"
require "./jugadores.rb"
# x="1243"
# x = x.to_s.split("")

# @prueba=ToroVaca.new("")
# @prueba.setCodigo("1234")


# @prueba.intento("4444")
# puts("Los Toros son:", @prueba.getCantidadToros)
# puts("Los Vacas son:", @prueba.getCantidadVacas)
$jugador= Jugador.new
$jugadores=Jugadores.new
#@jugadores=[]
$jugador.setNickName("tono")
$jugador.setPuntuacion(10)
$jugador.setTiempo(24.4)
$jugador.setPuntuacionTotal()

$jugadores.setListaJugadores($jugador)

$jugador= Jugador.new
$jugador.setNickName("carlos")
$jugador.setPuntuacion(5)
$jugador.setTiempo(17.6)
$jugador.setPuntuacionTotal()

$jugadores.setListaJugadores($jugador)

$jugador= Jugador.new
$jugador.setNickName("miguel")
$jugador.setPuntuacion(4)
$jugador.setTiempo(12.6)
$jugador.setPuntuacionTotal()

$jugadores.setListaJugadores($jugador)

$jugadores.ordenarJugadores
$jugadores.mostrarLista
# $lista=$jugadores.getListaJugadores
# for i in (0..$lista.size-1)
#     puts($lista[i].getNickName())
#     puts($lista[i].getPuntuacion)
#     puts($lista[i].getTiempo)
# end




