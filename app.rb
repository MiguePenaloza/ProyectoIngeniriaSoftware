require 'sinatra'
require './lib/TorosVacas.rb'
def initialize()
    @torovaca=ToroVaca.new("")
    @contador=0
end
get '/' do
    erb :index

end

post '/juego' do
    @torovaca.setCodigo(params[:codigo].to_s)
    erb :juego
    
end

post '/intento' do
    
    erb :intento
end