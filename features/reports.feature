# language: en

Feature: User can be able to see the documents in a group, group status,documents history,pqs matrix,on hold report,document hierarchy,calender based on group number

	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  									| password | last_name | first_name |
			| test_user1@example.com	| password | Test      | User       |
		And I go to "/reports"
	@javascript
	Scenario:User can see the following content
		Given I am on "/reports"
		Then I should see "Documents in a Group"
		And I should see "Group Status"
		And I should see "Document History"
		And I should see "PQS Matrix"
		And I should see "On Hold Report"
		And I should see "Open Requests"
		And I should see "Document Hierarchy"
		And I should see "Calendar"
		And I should see "Select Group Number"
	Scenario:
		Given I am on "reports#document_in_a_group" 