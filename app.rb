require 'sinatra'
require './lib/TorosVacas.rb'
def initialize()
    @torovaca=ToroVaca.new("")
    @contador=11
end
get '/' do
    erb :index
end
post '/juego' do
    @contador=@contador-1
    erb :juego
end
post '/intento' do
    
    erb :intento
end