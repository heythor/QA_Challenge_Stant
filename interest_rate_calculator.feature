Feature: interest_rate_calculator

    Feature calculator that provides annual interest


Scenario: when the customer is a under age

    Given customer write age less than 18
    And Custumer writes a value between R$ 100,00 and R$ 10.000,00
    When request the calculation
    Then system show a message: "Unauthorized minors"

Scenario: when the client is a elderly
    Given customer write age older than 59
    And customer deposits between R$ 100,00 and R$ 10.000,00
    When request the calculation
    Then system show message: "The annual interest rate it's: 2%"


Scenario: when the customer types the value below the minimum value

    Given customer write age greater than 17
    And customer write the value less than R$ 100,00
    When request the calculation
    Then system show message: "Value below the minimum required" 

Scenario: when the customer types the value greater than allowed

    Given customer write age greater than 17
    And customer write the value greater than  R$ 10.000,00
    When request the calculation
    Then system show message: "Value greater than allowed" 

Scenario: when the customer has a rate of 1% per year

    Given customer write age betwenn 18 and 59
    And customer write the value between R$ 100,00 and R$ 999,00
    When request the calculation
    Then system show message: "The annual interest rate it's 1%" 

Scenario: when the customer has a rate of 1% per year

    Given customer write age betwenn 18 and 59
    And customer write the value between R$ 1.000,00 and R$ 4.999,00
    When request the calculation
    Then system show message: "The annual interest rate it's 1.3%"

Scenario: when the customer has a rate of 1% per year

    Given customer write age betwenn 18 and 59
    And customer write the value between R$ 5.000,00 and R$ 10.000,00
    When request the calculation
    Then system show message: "The annual interest rate it's 1.5%"  