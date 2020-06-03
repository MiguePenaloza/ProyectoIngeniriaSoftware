class ToroVaca
    def initialize(codigo)
        @codigo = codigo 
        @cantidadToros=0
        @cantidadVacas=0
        @codigo=@codigo.to_s.split("")
        
    end
    def getCodigo
        return @codigo.join
    end
    def intento(codigoIntento)
        codigoIntentoVector = codigoIntento.to_s.split("")
        calcularToros(codigoIntentoVector)
        calcularVacas(codigoIntentoVector)
    end
    def calcularToros(vector)
        for i in (0..@codigo.size-1)
            if @codigo[i]==vector[i]
                @cantidadToros=@cantidadToros+1
            end
        end
    end
    def calcularVacas(vector)
        for i in (0..@codigo.size-1)
            for j in (0..vector.size-1)
                if i!=j
                    if vector[i]==@codigo[j]
                        #puts(i)
                        @cantidadVacas=@cantidadVacas+1
                    end
                end
            end    
        end
    end
    def getCantidadToros
        return @cantidadToros
    end
    def getCantidadVacas
        return @cantidadVacas
    end
end
