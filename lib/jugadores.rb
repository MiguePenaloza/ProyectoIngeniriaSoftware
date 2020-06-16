class Jugadores
    def initialize
        @listaJugadores=[]
    end
    def setListaJugadores(jugador)
        @listaJugadores.push(jugador)
    end
    def getListaJugadores
        return @listaJugadores
    end
end