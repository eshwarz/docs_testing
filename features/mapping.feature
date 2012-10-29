Feature: User should be able to see all the documents, the ajax search feature, and others functions

Background: User logs in
	Given I am not authenticated
	When I log in as "<email>"
	| email | password | last_name | first_name |
	| bhargavt.ece@example.com	| password1 | Test | User |
	And I go to "/home"

@javascript
Scenario: User should be able to see the documents
	Given I am on "/home"
	Then I should see "Documents for PTQS"
	When I click on "Edit Document 1"
	Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
	And I click on "Mapping"
	And I click on "New Mapping"
	Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
	And I should see "Doclink ref num"
	And I fill in "mapping_us_cfrs" with "mapping1"
	And I fill in "mapping_japan" with "japan"
	And I fill in "mapping_pic_s" with "pics"
	And I fill in "mapping_eudralex" with "eudralexxx"
	And I fill in "mapping_iso" with "ISO"
	And I fill in "mapping_ich" with "ICH"
	And I press "Save"
	Then I should see the following
		| mapping1  |
		| japan     |
		| pics      |
		| eudralexxx|
		| ISO       |
		| ICH       |
	
	#Editing
	When I click on "Edit Mapping 1"	
	Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
	And I fill in "mapping_us_cfrs" with "mapping1"
	And I fill in "mapping_japan" with "japan"
	And I press "Save"
	
	#deleting
	When I press "Delete"
	And I confirm Popup
	Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"

