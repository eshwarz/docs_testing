# language: en

Feature: User should be able to see all the documents, the ajax search feature, and others functions

	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  									| password | last_name | first_name |
			| test_user2@example.com	| password | Test      | User       |
		And I go to "/timelines"
	
	@javascript
	Scenario: 
		Given I am on "/timelines"
		#Group D
		When I selected link  "D"
		And I fill in "1" with "2012-09-25"
		And I fill in "2" with "2012-09-27"
    And I fill in "3" with "2012-09-28"
		And I fill in "4" with "2012-09-29"
		And I fill in "5" with "2012-09-30"
		And I fill in "6" with "2012-10-01"
		And I fill in "7" with "2012-10-02"
		And I fill in "8" with "2012-10-03"
		And I fill in "9" with "2012-10-04"
		And I fill in "10" with "2012-10-05"
		And I press "Save"
		Then I should be on "/timelines"

		#Group E
		When I go to "/timelines"
		When I selected link  "E"
		And I fill in "11" with "2012-11-31"
		And I fill in "12" with "2012-11-01"
        And I fill in "13" with "2012-09-28"
		And I fill in "14" with "2012-09-29"
		And I fill in "15" with "2012-09-30"
		And I fill in "16" with "2012-10-01"
		And I fill in "17" with "2012-10-02"
		And I fill in "18" with "2012-10-03"
		And I fill in "19" with "2012-10-04"
		And I fill in "20" with "2012-10-05"
		And I press "Save"
		Then I should be on "/timelines"

		#Group F
		When I go to "/timelines"
		When I selected link  "F"
		And I fill in "21" with "2012-11-31"
		And I fill in "22" with "2012-11-01"
        And I fill in "23" with "2012-09-28"
		And I fill in "24" with "2012-09-29"
		And I fill in "25" with "2012-09-30"
		And I fill in "26" with "2012-10-01"
		And I fill in "27" with "2012-10-02"
		And I fill in "28" with "2012-10-03"
		And I fill in "29" with "2012-10-04"
		And I fill in "30" with "2012-10-05"
		And I press "Save"
		Then I should be on "/timelines"

		#Group G
		When I go to "/timelines"
		When I selected link  "G"
		And I fill in "31" with "2012-11-31"
		And I fill in "32" with "2012-11-01"
        And I fill in "33" with "2012-09-28"
		And I fill in "34" with "2012-09-29"
		And I fill in "35" with "2012-09-30"
		And I fill in "36" with "2012-10-01"
		And I fill in "37" with "2012-10-02"
		And I fill in "38" with "2012-10-03"
		And I fill in "39" with "2012-10-04"
		And I fill in "40" with "2012-10-05"
		And I press "Save"
		Then I should be on "/timelines"

		#Group H
		When I go to "/timelines"
		When I selected link  "H"
		And I fill in "41" with "2012-11-31"
		And I fill in "42" with "2012-11-01"
        And I fill in "43" with "2012-09-28"
		And I fill in "44" with "2012-09-29"
		And I fill in "45" with "2012-09-30"
		And I fill in "46" with "2012-10-01"
		And I fill in "47" with "2012-10-02"
		And I fill in "48" with "2012-10-03"
		And I fill in "49" with "2012-10-04"
		And I fill in "50" with "2012-10-05"
		And I press "Save"
		Then I should be on "/timelines"


	

		
