class ToroVaca
    def initialize(codigo)
        @codigo = codigo 
        @cantidadToros=0
        @cantidadVacas=0
        @codigo=@codigo.to_s.split("")
        @listaToros=[]
        @listaVacas=[]
        @numeroIntentos=0
        
    end
    def setCodigo(codigo)
        @codigo=codigo
        @codigo=@codigo.to_s.split("")
    end
    def getCodigo
        return @codigo.join
    end
    def setNumeroIntentos
        @numeroIntentos=@numeroIntentos+1
    end
    def getNumeroIntentos
        return @numeroIntentos
    end
    def intento(codigoIntento)
        setNumeroIntentos()
        codigoIntentoVector = codigoIntento.to_s.split("")
        calcularToros(codigoIntentoVector)
        calcularVacas(codigoIntentoVector)
    end
    def calcularToros(vector)
        @listaToros=[]    
        for i in (0..@codigo.size-1)
            if @codigo[i]==vector[i]
                @cantidadToros=@cantidadToros+1
                @listaToros.push(vector[i])
            end 
        end
    end
    def calcularVacas(vector)
        @listaVacas=[]
        for i in (0..@codigo.size-1)    
            for j in (0..vector.size-1)
                if i!=j
                    if vector[i]==@codigo[j]
                        @cantidadVacas=@cantidadVacas+1
                        @listaVacas.push(vector[i])
                    end
                end
            end    
        end
    end
    def getCantidadToros
        #return @cantidadToros
        return @listaToros
    end
    def getCantidadVacas
        #return @cantidadVacas
        return @listaVacas
    end
    def gameOver()
        return @numeroIntentos==10
    end
    def winner()
        return getCantidadToros().size == 4
    end
end
