# language: en

Feature: User should be able to create a new document or edit the existing document

	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  									| password | last_name | first_name |
			| test_user1@example.com	| password | Test      | User       |
		And I go to "/docs/new"

	@javascript
	Scenario:
		Given I am on "/docs/new"
		And I fill in "Doclink Ref Num" with "P12A34V56S"
		And I fill in "Title" with "Head: Test document"
		And I fill in "Global Coord" with "k3u6m2a8r9i2"
		And I fill in "Parent" with "b4l7a9h"
		And I fill in "Condor Ref Num" with "P12A34V56S"
		And I fill in "German Doc Num" with "s8o2m5e8t7"
		And I fill in "Author" with "Eshwar"
		And I select "Enablers" from "Chapter Name"
		And I select "R&U" from "Training Type"
		And I fill in "Comments" with "Some test comment goes here"
		And I press "Save"
		Then I should be on "/docs"
		And I should see the following
			| entry 											|
			| P12A34V56S									|
			| Head: Test document					|
			| k3u6m2a8r9i2								|
			| b4l7a9h											|
			| P12A34V56S									|
			| s8o2m5e8t7									|
			| Eshwar											|
		
		#Cancelling
		When I go to "/docs/new"
		And I click on "Cancel"
		Then I should be on "/docs/new"
		
		#searching by doclink Ref Num	
		When I fill in "search_documents" with "P12A34V56S"
		Then I should see the following
			| entry 											|
			| P12A34V56S									|
			| Head: Test document					|
			| k3u6m2a8r9i2								|
			| b4l7a9h											|
			| P12A34V56S									|
			| s8o2m5e8t7									|
			| Eshwar		                  |
		#not present doclink ref num
		When I fill in "search_documents" with "p12A3465"
		Then I should see "No results found!" 
			
		#Editing
		Given I am on "/docs"
    When I click on "Edit Document 1"
    And I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
    And I fill in "Parent" with "1234FS"
		And I fill in "Condor Ref Num" with "P235678"
		And I fill in "German Doc Num" with "s8o2m"
    And I fill in "Comments" with "Some values are edited here"
		And I press "Save"
		Then I should see the following
			| entry 											|
			| P12A34V56S									|
			| Head: Test document					|
			| k3u6m2a8r9i2								|
			| 1234FS											|
			| P235678											|
			| s8o2m												|
			| Eshwar		                  |

		#delete
		When I click on "delete_doc_1"
    And I confirm Popup
    Then I should be on "/docs"