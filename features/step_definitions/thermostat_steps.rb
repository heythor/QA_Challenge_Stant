Given('a {int} check') do |int|
  @number = int
  end
  
  When('termostat marks temperature') do
    @message = ThermostatModule.temperature_check(@number)
  end
  
  Then('the switch {string} the heater') do |temperature_check|
    expect(@message).to eq(temperature_check)
  end
  
  