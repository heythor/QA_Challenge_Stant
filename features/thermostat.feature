#language: en

Feature: termostat

    Feature control the temperature by a switch that turns the heater on and off

 Scenario Outline: when to turn the heater off and on

     Given a <temperature> check
     When termostat marks temperature
     Then the switch <power> the heater
    Examples: 
     | temperature |  power  |
     |      4      |  "on"   |
     |      0      |   "on"  |
     |      24     |  "off"  |
     |      30     |  "off"  |

