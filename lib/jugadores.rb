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
    def ordenarJugadores
        for i in (0..@listaJugadores.size-1)
            for j in (0..@listaJugadores.size-1)
                if @listaJugadores[i].getPuntuacionTotal <= @listaJugadores[j].getPuntuacionTotal && i!=j
                    @listaJugadores[i],@listaJugadores[j]=@listaJugadores[j],@listaJugadores[i]
                end
            end
        end
    end
    def mostrarLista
        for i in (0..@listaJugadores.size-1)
            puts(@listaJugadores[i].getNickName)
            puts(@listaJugadores[i].getPuntuacion)
            puts(@listaJugadores[i].getTiempo)
            puts(@listaJugadores[i].getPuntuacionTotal)
        end
    end
end