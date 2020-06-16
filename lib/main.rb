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


$jugadores.setListaJugadores($jugador)
$jugador= Jugador.new
$jugador.setNickName("carlos")
$jugador.setPuntuacion(5)
$jugador.setTiempo(17.6)

$jugadores.setListaJugadores($jugador)
# jugador3= Jugador.new
# jugador3.setNickName("miguel")
# jugador3.setPuntuacion(7)
# jugador3.setTiempo(10.2)

# jugador4= Jugador.new
# jugador4.setNickName("Diego")
# jugador4.setPuntuacion(12)
# jugador4.setTiempo(12.2)

# @jugadores=Jugadores.new
# @jugadores.setListaJugadores(@jugador)
# @jugadores.setListaJugadores(jugador2)
# @jugadores.setListaJugadores(jugador3)
# @jugadores.setListaJugadores(jugador4)

$lista=$jugadores.getListaJugadores
for i in (0..$lista.size-1)
    puts($lista[i].getNickName())
    puts($lista[i].getPuntuacion)
    puts($lista[i].getTiempo)
end




