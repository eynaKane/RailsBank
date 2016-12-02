Feature: User
  Scenario Outline: Create a user
    Given I am on sign up page
    And I fillin First Name with "<first_name>"
    And I fillin Last Name with "<last_name>"
    And I fillin Email with "<email>"
    And I fillin Password with "<password>"
    And I fillin Password Confirmation with "<confirmation>"
    When I click "Sign Up"
    Then I should see "<message>"

    Examples:
      | first_name | last_name | email        | password | confirmation | message        |
      |            | Kane      | ek@email.com | password | password     | can't be blank |
      | Eyna       |           | ek@email.com | password | password     | can't be blank |
      | Eyna       | Kane      |              | password | password     | can't be blank |
      | Eyna       | Kane      | ek@email.com |          | password     | can't be blank |
      | Eyna       | Kane      | ek@email.com | password |              | can't be blank |
      | Eyna       | Kane      | ek@email.com | password | PASSWORD     | doesn't match  |
      | Eyna       | Kane      | ek@email.com | password | password     | Welcome, Eyna! |
      | Eyna       | Kane      | ek@email.com | password | password     | already taken  |
