
require "TorosVacas.rb"

RSpec.describe ToroVaca do
    before(:all) do
        @torovaca=ToroVaca.new("1234")
    end 
    it "Deberia devolver el codigo" do
        expect(@torovaca.getCodigo()).to eq("1234")
    end
    it "Deberia devolver la cantidad de toros que al incicio es 0" do
        expect(@torovaca.getCantidadToros()).to eq(0)
    end
    it "Deberia de la cantidad de toros" do
        x="1324"
        x = x.to_s.split("")
        @torovaca.calcularToros(x)
        expect(@torovaca.getCantidadToros()).to eq(2)
    end
    it "Deberia devolver la cantidad de vacas que al inicio es 0 " do
        expect(@torovaca.getCantidadVacas()).to eq(0)
    end
    it "Deberia devolver la cantidad de vacas " do
        x="1324"
        x = x.to_s.split("")
        @torovaca.calcularVacas(x)
        expect(@torovaca.getCantidadVacas()).to eq(2)
    end
    it "Deberia devolver la cantidad de toros " do
        x="1234"
        x = x.to_s.split("")
        @torovaca.calcularToros(x)
        expect(@torovaca.getCantidadToros()).to eq(4)
    end
    it "Deberia devolver la cantidad de vacas " do
        x="1234"
        x = x.to_s.split("")
        @torovaca.calcularVacas(x)
        expect(@torovaca.getCantidadVacas()).to eq(0)
    end
    it "Deberia perder el juego " do
        for i in (1..10)
            @torovaca.intento("1243")
        end
        expect(@torovaca.gameOver()).to eq(true)
    end
    it "Deberia ganar el juego " do
        @torovaca.intento("1234")
        expect(@torovaca.winner()).to eq(true)
    end
    it "prueba set codigo" do
        @torovaca.setCodigo("1234")
        #@torovaca.setDatos()
        @torovaca.getNumeroIntentos()
    end
end