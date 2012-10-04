# language: en

Feature: User should be able to create a new document or edit the existing document

	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  					| password | last_name | first_name |
			| test_user1@example.com	| password | Test      | User       |
		And I go to "/home"

	@javascript
	Scenario:
        Given I am on "/home"
        When I click on "Edit Document 1"
        Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
        
        #New Request
	    When I click on "New Request"
        And I should see the following
            | Doclink ref num |
            | Global coord    |
            | Parent          |
            | Condor ref num  |
            | German doc num  |
            | Author          |
            | Chapter name    |
            | Training type   |
            | Comments        |
	    And I fill in "request_requested_by" with "request"
	    And I fill in "request_requested_date" with "2012-09-05"
	    And I fill in "request_team_sponsor" with "sponsor"
	    And I select "New" from "Request Type"
        And I fill in "request_proposed_version_number" with "575"
        And I fill in "request_justification" with "justification"
        And I fill in "request_description" with "description"
        And I fill in "request_sites" with "sites"
        And I select "F" from "Timeline"
        And I fill in "request_team" with "team"
        And I select "Yes" from "Commitment"
        And I fill in "request_commitment_details" with "commitment details"
        And I fill in "request_superseded_docs" with "request docs"
        And I select "Update" from "Training Impact"
        And I select "WBT" from "Training Strategy"
        And I fill in "request_pqs_bmt_date" with "2012-10-03"
        And I fill in "request_pqs_bmt_decision_rationale" with "bmt decision"
        And I fill in "request_pqs_ct_date" with "2012-10-09"
        And I fill in "request_pqs_ct_decision_rationale" with "decision rationale"
        And I fill in "request_request_closed_date" with "2012-03-04"
        And I fill in "request_comments" with "comments"
        And I press "Save"
        Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"

        #Editing
        When I click on "Edit Request 1"
        And I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
        And I fill in "request_superseded_docs" with "request_superseded_docs"
        And I press "Save"

        #Deliting  
        When I click on "Delete Request 1"
        And I confirm Popup
        Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
           
        #Converting to Version
        When I click on "New Request" 
        And I fill in "request_requested_by" with "request"
        And I fill in "request_requested_date" with "2012-09-05"
        And I fill in "request_team_sponsor" with "sponsor"
        And I select "New" from "Request Type"
        And I fill in "request_proposed_version_number" with "575"
        And I fill in "request_justification" with "justification"
        And I fill in "request_description" with "description"
        And I fill in "request_sites" with "sites"
        And I select "F" from "Timeline"
        And I fill in "request_team" with "team"
        And I select "Yes" from "Commitment"
        And I fill in "request_commitment_details" with "commitment details"
        And I fill in "request_superseded_docs" with "request docs"
        And I select "Update" from "Training Impact"
        And I select "WBT" from "Training Strategy"
        And I fill in "request_pqs_bmt_date" with "2012-10-03"
        And I fill in "request_pqs_bmt_decision_rationale" with "bmt decision"
        And I fill in "request_pqs_ct_date" with "2012-10-09"
        And I fill in "request_pqs_ct_decision_rationale" with "decision rationale"
        And I fill in "request_request_closed_date" with "2012-03-04"
        And I fill in "request_comments" with "comments"
        And I press "Save"
        When I click on "Convert to Version"
        And I click on "Version"
        Then I should see the following
            |   request           | 
            | 2012-09-05        |
            | sponsor           |
            | New               |
            | 575               |
            | justification     |
            | description       |
            | sites             |
            | team              |
            | Yes               |
            | Commitment details|        
            |Request docs       |
            | Update            |
            | WBT               |
            | 2012-10-03        |
            | bmt decision      |
            | 2012-10-09        |
            | decision rationale|
            | 2012-03-04        |
            |comments           |

        #Cancelling
        When I click on "Request"
        And I click on "New Request"
        And I click on "Cancel"
        Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
  



   
   

   


