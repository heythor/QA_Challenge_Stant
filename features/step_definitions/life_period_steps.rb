  Given('user write {int}') do |int|
    @number = int
    end
    
    When('the press the button to convert') do
             @message = LifePeriodModule.check_age(@number)
    end
    Then('system show {string}') do |life_message|
        expect(@message).to eq(life_message)
    end
    