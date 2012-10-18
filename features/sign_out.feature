Feature: Sign out
  To protect my account from unauthorized access
  
    @javascript
    Scenario: User signs out
      Given I am logged in
      When I sign out
      When I return to the site
      Then I should be signed out
