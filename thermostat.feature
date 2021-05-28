Feature: termostat

    Feature control the temperature by a switch that turns the heater on and off

Scenario: when temperature down to less than 5 degrees

    Given a temperatura check
    When when thermostat marks less than 5 degress
    Then the switch power on the heater.

Scenario: when temperature between 23 or more degrees

    Given a temperature check
    When termostat marks between 23 or more degrees.
    Then the switch power off the heater.
    