# language: en

Feature: User should be able to see all the documents, the ajax search feature, and others functions

	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  					| password | last_name | first_name |
			| test_user1@example.com	| password | Test      | User       |
		And I go to "/home"

	@javascript
	Scenario: User should be able to see the documents
		Given I am on "/home"
		Then I should see "Documents for PTQS"
		And I should see "New Document" pointing to "/docs/new"
		And I should see the following
			| entry 					|
			| id 						|
			| Doclink 			|
			| Title 				|
			| Global coord 	|
			| Parent 				|
			| Condor				| 
			| German 				|
			| Author 				|
			| Actions 			|
		And I should see search for documents by Doclink Ref Number
		And I should see "Edit"
		And I should see "Delete"