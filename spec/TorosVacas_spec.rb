
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
    it "Deberia devolver el numero de intentos permitidos por defecto" do
        expect(@torovaca.getNumeroIntentosPermitidos()).to eq(10)
    end
    it "Deberia devolver 1234 como codigo" do
        expect(@torovaca.getCodigo()).to eq("1234")
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

    it "Deberia retornar 10 numeros de intentos permitidos" do
        @torovaca.setNumeroItentosPermitidos(10)
        expect(@torovaca.getNumeroIntentosPermitidos()).to eq(10)
    end

    it "Deberia retornar el nivel por defecto" do
        expect(@torovaca.getNivel()).to eq("basico")
    end
    it "Deberia ganar el juego en dificultad basica" do
        @torovaca.intento("1234")
        expect(@torovaca.winner()).to eq(true)
    end
    it "Deberia ganar el juego en dificultad media" do
        @torovaca.setNivel("intermedio")
        @torovaca.setCodigo("123456")
        @torovaca.intento("123456")
        expect(@torovaca.winner()).to eq(true)
    end
    it "Deberia ganar el juego en dificultad avanzada" do
        @torovaca.setNivel("avanzado")
        @torovaca.setCodigo("12345678")
        @torovaca.intento("12345678")
        expect(@torovaca.winner()).to eq(true)
    end
    it "prueba set codigo" do
        @torovaca.setCodigo("1234")
        #@torovaca.setDatos()
        @torovaca.getNumeroIntentos()
    end
    it "Deberia fallar el intento" do
        @torovaca.setNivel("avanzado")
        @torovaca.setCodigo("98765432")
        @torovaca.intento("98765445")
        expect(@torovaca.winner()).to eq(false)
    end

end