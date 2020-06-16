require 'sinatra'
require './lib/TorosVacas.rb'
require './lib/cronometro.rb'


def initialize()
    #@jugadores=Jugadores.new
end

get '/' do    
    $torovaca=ToroVaca.new("")
    #$jugador1=Jugador.new
    #$jugador2=Jugador.new
    erb :index
end

post '/juego' do
   
    erb :juego
end


post '/intento' do
    erb :intento
end


get '/juego' do
    $contador -= -1
    erb :juego
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