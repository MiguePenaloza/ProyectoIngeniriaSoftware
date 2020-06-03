require "TorosVacas.rb"
RSpec.describe ToroVaca do
    before(:all) do
        @torovaca=ToroVaca.new(1234)
    end 
    it "Deberia devolver el codigo" do
        expect(@torovaca.getCodigo()).to eq(1234)
    end
end