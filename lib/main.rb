require "./TorosVacas.rb"

x="1243"
x = x.to_s.split("")
#puts(x)
@prueba=ToroVaca.new("")
@prueba.setCodigo("1234")


# @prueba.calcularToros(x)
# @prueba.calcularVacas(x)
@prueba.intento("4444")
puts("Los Toros son:", @prueba.getCantidadToros)
puts("Los Vacas son:", @prueba.getCantidadVacas)
# puts("cantidad de toros: ",@prueba.getCantidadToros)
# puts("cantidad de vacas: ",@prueba.getCantidadVacas)
