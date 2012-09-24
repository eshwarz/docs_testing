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
		And I fill in "Chapter Name" with "Enablers"
		And I fill in "Training Type" with "R&U"
		And I fill in "Comments" with "Some test comment goes here"
		And I press "Save"
		Then I should be on Documents page
		And I should see the following
			| entry 											|
			| P12A34V56S									|
			| Head: Test document					|
			| k3u6m2a8r9i2								|
			| b4l7a9h											|
			| P12A34V56S									|
			| s8o2m5e8t7									|
			| Eshwar											|