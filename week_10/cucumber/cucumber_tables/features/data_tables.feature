Feature: cucumber data tables
  As a tester
  I want to use data tables
  so that I can access data


  Scenario: I am able to iterate through a data table
    Given I have a data table
    | Name     | Title     |
    | Hank     | Honk King |
    | Hank Sr. | Bartender |
    | Hank Jr. | Decoy     |
    | Hank     | Kerchief  |

    Then I am able to print out the data
