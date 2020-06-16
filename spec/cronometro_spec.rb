require "cronometro.rb"

RSpec.describe Stopwatch do
    before(:all) do
        @cronometro=Stopwatch.new
    end

    it "Deberia mostrar el tiempo transcurrido" do
        expect(@cronometro.tiempo_transcurrido).to be > 0
    end

end