#language: en

Feature: interest_rate_calculator

    Feature calculator that provides annual interest

Scenario Outline: when the custumer needs calculation the annual interest rate

    Given customer write <age>
    And custumer write the <value>
    When request the calculation
    Then system show <message>

    Examples: 
    | age  |  value    |    message                           | 
    |  16  | 5500.00  | "Unauthorized minors"                |
    |  1   | 9900.00     | "Unauthorized minors"                |
    |  19  | 800.00    | "The annual interest rate it's 1%"   |
    |  58  | 3050.00   | "The annual interest rate it's 1.3%" |
    |  61  | 7000.00  | "The annual interest rate it's 2%"   |
    |  100 | 50.00     | "Value below the minimum required"   |
    |  27  | 50000.00 | "Value greater than allowed"         |
    |  49  | 8800.00  | "The annual interest rate it's 1.5%" |
