require "jugador.rb"

RSpec.describe Jugador do
    before(:all) do
        @jugador=Jugador.new
    end 

    it "Deberia devolver el nombre de Carlos" do
        @jugador.setNickName("Carlos")
        expect(@jugador.getNickName()).to eq("Carlos")
    end

    it "Deberia devolver la puntuacion 30" do
        @jugador.setPuntuacion(30)
        expect(@jugador.getPuntuacion()).to eq(30)
    end

    it "Deberia devolver el tiempo de 16.30" do
        @jugador.setTiempo(16.30)
        expect(@jugador.getTiempo()).to eq(16.30)
    end

    it "Deberia devolver la puntuacion total de 46.30" do
        @jugador.setPuntuacionTotal()
        expect(@jugador.getPuntuacionTotal()).to eq(46.30)
    end

end