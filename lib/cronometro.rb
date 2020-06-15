class Stopwatch
    def initialize
      @start = Time.now
    end
     
    def tiempo_transcurrido
      now = Time.now
      elapsed = now - @start
      #elapsed.to_s
    end
end