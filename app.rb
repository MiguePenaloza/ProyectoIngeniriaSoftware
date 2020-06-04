require 'sinatra'
require './lib/TorosVacas.rb'
def initialize()
    @torovaca=ToroVaca.new("")
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
    # valor1= params[:valor1].to_s
    # valor2= params[:valor2].to_s
    # valor3= params[:valor3].to_s
    # valor4= params[:valor4].to_s
    # "<d>valor</p>" +valor1+valor2+valor3+valor4
end