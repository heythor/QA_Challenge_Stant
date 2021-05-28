module ThermostatModule

    def temperature_check(temperature)

        current_temperature = ""
        
        if temperature < 5
            current_temperature = "on"
        elsif temperature >= 23
            current_temperature = "off"
        end

        return current_temperature
        
    end
    
end