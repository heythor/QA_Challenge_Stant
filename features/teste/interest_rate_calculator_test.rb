module InterestCalculatorRateModule

    def annual_rate(age, value)
        message = ""

        return "Unauthorized minors" if age < 18
        
        if age >= 18 && age < 60 && value >= 100.00 && value <= 999.00
            message = "The annual interest rate it's 1%"
        elsif age >= 18 && age < 60 && value >= 1000.00 && value <= 4999.00
            message = "The annual interest rate it's 1.3%"
        elsif age >= 18 && age < 60 && value >= 5000.00 && value <= 10000.00
            message = "The annual interest rate it's 1.5%"
        elsif age > 59 && value >= 100.00 && value <= 10000.00
            message = "The annual interest rate it's 2%"
        elsif age >= 18 && value < 100.00
            message = "Value below the minimum required"
        elsif age >= 18 && value > 10000.00
            message = "Value greater than allowed" 
        end
        return message
    end

end