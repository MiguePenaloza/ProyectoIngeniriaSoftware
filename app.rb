require 'sinatra'
require './lib/TorosVacas.rb'
require './lib/cronometro.rb'

def initialize()
    # $torovaca=ToroVaca.new("")
    # $contador=11
end
get '/' do    
    $torovaca=ToroVaca.new("")
    $contador=11
    erb :index
end
post '/juego' do
    $contador -= -1
    erb :juego
end
get '/juego' do
    $contador -= -1
    erb :juego
end
post '/intento' do
    erb :intento
end
get '/intento' do
    erb :intento
end
get '/resultadoJuegoGanado' do    
    erb :resultadoganaste
end
get '/resultadoJuegoPerdido' do    
    erb :resultadoperdiste
end
get '/configuracion' do
    erb :configuracion
end