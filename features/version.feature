# language: en

Feature: User should be able to see all the documents, the ajax search feature, and others functions

	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  									| password | last_name | first_name |
			| test_user1@example.com	| password | Test      | User       |
		And I go to "/home"

	@javascript
	Scenario: User selects "Special" from Group Number
		Given I am on "/home"
		When I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		Then I click on "Versions"
		And I click on "New Version"
		And I fill in "version_version_number" with "1"
		When I select "Special" from "Group Num"
   	Then I should see header for "Timelines"
    And I should see the following
		|Final draft to PQS BMT      |
		|Tech review period          |
		|Out for stakeholder review  |
		|Stakeholder review ends     |
		|Author adjudication complete|
		|To PQS CT for OU review     |
		|OU review complete          |
		|OU review mtg               |
		|Approval                    |
		|Effective and LIA due       |
		|Bio Ou comment 						 |
		|Sm Ou Comment 							 |
		|Cmo Ou comment 						 |
		|Ptd Ou Comment 						 |
		|Other Ou Comment 					 |
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
		And I fill in "version_other_ou_comment" with "TEST COMMENT" 
		And I press "Save"
		Then I click on "Versions"
		Then I should see the following
		|1|
		|On hold|
		|TEST COMMENT|
		|TEST CHANGED DESCRIPTION |
		|1|
		|New|
		When I click on "Edit Version 1"
		And I fill in "version_description_of_change" with "TEST CHANGED DESCRIPTIONS"
		And I press "Save"
		Then I click on "Versions"
		And I click on "New Version"
		And I click on "Cancel"
		When I click on "Versions"
		Then I click on "Delete Version 1"
		And I confirm popup
		Then I click on "Versions"
		When I click on "Edit Version 1"

	@javascript
	Scenario:User selects "D" from Group Number
		Given I am on "/home"
		When I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		Then I click on "Versions"
		And I click on "New Version"
		And I fill in "version_version_number" with "1"
		When I select "D" from "Group Num"
		And I select "On hold" from "LIA Status"
		And I fill in "version_comment" with "TEST COMMENT "
		And I fill in "version_description_of_change" with "TEST CHANGED DESCRIPTION"
		And I fill in "version_capa_number" with "1"
		And I select "New" from "Revision Type"
		And I choose "version_bio_ou_false" 
		And I fill in "version_bio_ou_comment" with "TEST COMMENT"
		And I choose "version_sm_ou_false" 
		And I fill in "version_sm_ou_comment" with "TEST COMMENT"
		And I choose "version_cmo_ou_true"
		And I fill in "version_cmo_ou_comment" with "TEST COMMENT "
		And I choose "version_ptd_ou_false"
		And I fill in "version_other_ou_comment" with "TEST COMMENT"
    And I choose "version_other_ou_false"
		And I fill in "version_other_ou_comment" with "TEST COMMENT" 
		And I press "Save"
		Then I click on "Versions"
		Then I should see the following
		|1|
		|On hold|
		|TEST COMMENT|
		|TEST CHANGED DESCRIPTION |
		|1|
		|New|

		