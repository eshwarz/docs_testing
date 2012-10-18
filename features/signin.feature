Feature: Sign in
  
  @javascript
  Scenario: User is not signed up
    Given I do not exist as a user
    When I sign in with valid credentials
    Then I should be signed out
    
  @javascript
  Scenario: User signs in successfully
      Given I exist as a user
      And I am not logged in
      When I sign in with valid credentials
      When I return to the site
      Then I should be signed in
  @javascript
    Scenario: User enters wrong email
      Given I exist as a user
      And I am not logged in
      When I sign in with a wrong email
      And I should be signed out
    @javascript  
    Scenario: User enters wrong password
      Given I exist as a user
      And I am not logged in
      When I sign in with a wrong password
      And I should be signed out
  

      