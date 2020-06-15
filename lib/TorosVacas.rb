class ToroVaca

    def initialize(codigo)
        @codigo = codigo.to_s.split("")
        @cantidadToros = 0
        @cantidadVacas = 0
        @numeroIntentos = 0 
    end

    #------------------- BEGIN GET's -----------------------------
    def getCodigo
        return @codigo.join
    end

    def getCantidadToros
        return @cantidadToros
        #return @listaToros
    end

    def getCantidadVacas
        return @cantidadVacas
        #return @listaVacas
    end

    def getNumeroIntentos
        return @numeroIntentos
    end
    #--------------------- END Get's -----------------------------

    #------------------- BEGIN Set's -----------------------------
    def setCodigo(codigo)
        @codigo = codigo.to_s.split("")
    end

    def incrementarNumeroIntentos
        @numeroIntentos += 1
    end
    #--------------------- END Set's -----------------------------

    #------------------- BEGIN Functions -------------------------
    def intento(codigoIntento)
        incrementarNumeroIntentos()
        codigoIntentoVector = codigoIntento.to_s.split("") 
        
        #puts(codigoIntentoVector)
        calcularToros(codigoIntentoVector)
        calcularVacas(codigoIntentoVector)
    end

    def calcularToros(vector)
        @cantidadToros=0
        @listaToros=[]    
        for i in (0..@codigo.size-1)
            if @codigo[i]==vector[i] && vector[i]!=-1
                @cantidadToros=@cantidadToros+1
                @listaToros.push(vector[i])
            end 
        end
    end

    def calcularVacas(vector)
        @cantidadVacas=0
        @listaVacas=[]
        repetidos=0
        for i in (0..@codigo.size-1)    
            for j in (0..vector.size-1)
                if i!=j  
                    if vector[i]==@codigo[j] && vector[i]!=-1
                        @cantidadVacas=@cantidadVacas+1
                        @listaVacas.push(vector[i])
                    end
                end
            end    
        end
        for i in (0..vector.size-1)
            for j in (1..vector.size-1)
                if vector[i]==vector[j] && i!=j && vector[i]!=-1
                    repetidos=repetidos+1
                    vector[j]=-1
                end
            end
        end
        print("repetidos:", repetidos,"\n")
        @cantidadVacas=@cantidadVacas-repetidos
    end

    def gameOver()
        return @numeroIntentos==10
    end

    def winner()
        #return getCantidadToros().size == 4
        return @cantidadToros == 4
    end
    #--------------------- END Functions ------------------------------ 
end
