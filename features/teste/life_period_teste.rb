module LifePeriodModule
    
    def check_age(age)

        life_period = ""

        if age < 1
            life_period = "Invalid age"
        elsif age >= 1 && age < 16
            life_period = "Kid"
        elsif age >= 16 && age < 60
            life_period = "Adult"
        elsif age >= 60
            life_period = "Elderly"
        end

        return life_period
    end
end