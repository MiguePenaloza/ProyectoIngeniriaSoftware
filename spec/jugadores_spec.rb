require "jugador.rb"
require "jugadores.rb"

RSpec.describe Jugadores do
    before(:all) do
        @jugador1=Jugador.new
        @jugador2=Jugador.new
        @jugadores=Jugadores.new
        @jugador1.setNickName("Antonio")
        @jugador1.setPuntuacion(30)
        @jugador1.setTiempo(16.30)
        @jugador2.setNickName("Carlos")
        @jugador2.setPuntuacion(40)
        @jugador2.setTiempo(20.55)
    end 

    it "Deberia devolver la lista de jugadores" do
        @jugadores.setListaJugadores(@jugador1)
        @jugadores.setListaJugadores(@jugador2)
        expect(@jugadores.getListaJugadores().size).to eq(2)
    end

    
    it "Deberia devolver la lista de jugadores ordenado" do
        @jugadores.ordenarJugadores
        expect(@jugadores.mostrarLista)
    end

end