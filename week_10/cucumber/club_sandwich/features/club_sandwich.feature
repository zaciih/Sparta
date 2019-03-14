Feature: Sandwich site

  Scenario Outline: Clicking on a sandwich
  Given I access the sandwich homepage
  When I click on a <Sammich>
  Then I am taken to the show page of that sandwich <ID>

  Examples:
    | Sammich  | ID |
    | Ham      | 1  |
    | Jam      | 2  |
    | Spam     | 3  |
    | Clam     | 4  |
    | Lamb     | 5  |

  Scenario: Number of sandwiches on the index page is correct
  Given I access the sandwich homepage
  Then The total number of sandwiches are displayed
