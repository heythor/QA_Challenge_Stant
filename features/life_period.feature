#language: en

 Feature: Convert_Age

     Feature Convert age in life span

Scenario Outline: when user needs convert age in life span

    Given user write <age>
    When the press the button to convert
    Then system show <message>
    Examples:
    | age | message        |
    | -1  | "Invalid age"  |
    |  0  | "Invalid age"  |
    |  7  | "Kid"          |
    |  14 | "Kid"          |
    |  18 | "Adult"        |
    |  58 | "Adult"        |
    |  61 | "Elderly"      |
    |  99 | "Elderly"      |


