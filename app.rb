require 'sinatra'
require './lib/TorosVacas.rb'
get '/' do
    erb :index
end

post '/juego' do
    toroVaca=ToroVaca.new((params[:codigo]).to_i)
    
    codigo=toroVaca.getCodigo()
    "<p>El codigo es: </p>"+ codigo.to_s
    #erb :juego
end