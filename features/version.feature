# language: en

Feature: User should be able to see all the documents, the ajax search feature, and others functions

	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  									| password | last_name | first_name |
			| test_user1@example.com	| password | Test      | User       |
		And I go to "/home"

		@javascript
		Scenario: 
		Given I am on "/home"
		When I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		Then I click on "Versions"
		And I click on "New Version"
		Then I should see "Issues" pointing to "/issues"
		


