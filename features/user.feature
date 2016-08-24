Feature: User
  Scenario Outline: Create a user
    Given I am on sign up page
    And I fillin First Name with "<fname>"
    And I fillin Last Name with "<lname>"
    And I fillin Email with "<email>"
    And I fillin Password with "<password>"
    And I fillin Password Confirmation with "<confirmation>"
    When I click "Sign Up"
    Then I should see "<message>"

    Examples:
      | fname | lname | email        | password | confirmation | message        |
      |       | Kane  | ek@email.com | password | password     | can't be blank |
      | Eyna  | Kane  | ek@email.com | password | PASSWORD     | doesn't match  |
      | Eyna  | Kane  | ek@email.com | password | password     | Welcome, Eyna! |
      | Eyna  | Kane  | ek@email.com | password | password     | already taken  |
