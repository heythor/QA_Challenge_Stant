Feature: Convert_Age

    Feature Convert age in life span

Scenario:  when age is invalid

    Given user writes a number less than 1.
    When the press the button to convert.
    Then system show message: "Invalid age".

Scenario: when a child's age

    Given user writes a number between 1 and 15
    When the press the button to convert.
    Then system show message: "Kid."

Scenario: when the age of an adult

    Given user writes a number between 16 and 59
    When the press the button to convert.
    Then system show message: "Adult."

Scenario: when the age of an elderly

    Given user writes a number greater than 59.
    When the press the button to convert.
    Then system show message: "Elderly."


