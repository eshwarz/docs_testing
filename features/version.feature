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
		And I select "D" from "Group Num"
		And I fill in "version_version_number" with "1"
		And I select "On hold" from "LIA Status"
		And I fill in "version_comment" with "TEST COMMENT "
		And I fill in "version_description_of_change" with "TEST CHANGED DESCRIPTION"
		And I fill in "version_capa_number" with "1"
		And I select "New" from "Revision Type"
		And I choose "version_bio_ou_true" 
		And I fill in "version_bio_ou_comment" with "TEST COMMENT"
		And I choose "version_sm_ou_true" 
		And I fill in "version_sm_ou_comment" with "TEST COMMENT"
		And I choose "version_cmo_ou_false"
		And I fill in "version_cmo_ou_comment" with "TEST COMMENT "
		And I choose "version_ptd_ou_true"
		And I fill in "version_other_ou_comment" with "TEST COMMENT"
    And I choose "version_other_ou_true"
		And I fill in "version_other_ou_comment" with "TEST COMMENT "
		And I press "Save"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I click on "Versions"
		Then I should see "Group Num"
		When I click on "Edit Version 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I press "Save"
		Then I am on "/versions"
		When I click on "Delete Version 1"


				


