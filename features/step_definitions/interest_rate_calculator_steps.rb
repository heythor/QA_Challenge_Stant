
Given('customer write {int}') do |int|
    @number = int
end
    
Given('custumer write the {float}') do |float|
    @numberFloat = float
end
    
When('request the calculation') do
    @message = InterestCalculatorRateModule.annual_rate(@number, @numberFloat)
end
    