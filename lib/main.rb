require "./TorosVacas.rb"

x="1243"
x = x.to_s.split("")
@prueba=ToroVaca.new("1234")


# @prueba.calcularToros(x)
# @prueba.calcularVacas(x)
@prueba.intento("1243")
puts("cantidad de toros: ",@prueba.getCantidadToros)
puts("cantidad de vacas: ",@prueba.getCantidadVacas)
