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
		Then I should see below content
		|content						 |
		|Documents in a Group|
		|Group Status 			 |
		|Document History 	 |
		|PQS Matrix 				 |
		|On Hold Report 		 |
		|Open Requests 			 |
	  |Document Hierarchy	 |
		|Calendar						 |
		|Select Group Number |

	@javascript	
	Scenario: User can see the content in "Document in a Group"
		Given I am on "/reports"
		When I click on "Documents in a Group"
		And I click on "menu1"
		And I click on "Group Number D"
		Then I should see header for 'Group Documents for "D"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu1"
		And I click on "Group Number E"
		Then I should see header for 'Group Documents for "E"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu1"
		And I click on "Group Number F"
		Then I should see header for 'Group Documents for "F"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu1"
		And I click on "Group Number G"
		Then I should see header for 'Group Documents for "G"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu1"
		And I click on "Group Number H"
		Then I should see header for 'Group Documents for "H"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu1"
		And I click on "Group Number Special"
		Then I should see header for 'Group Documents for "Special"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|

	@javascript	
	Scenario: User can see the content in "Group Status"
		Given I am on "/reports"
		When I click on "Group Status"
		And I click on "menu2"
		And I click on "Group Number D"
		Then I should see header for 'Group Status for "D"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu2" 
		And I click on "Group Number E"
		Then I should see header for 'Group Status for "E"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu2" 
		And I click on "Group Number F"
		Then I should see header for 'Group Status for "F"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu2" 
		And I click on "Group Number G"
		Then I should see header for 'Group Status for "G"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu2" 
		And I click on "Group Number H"
		Then I should see header for 'Group Status for "H"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|
		When I click on "menu2" 
		And I click on "Group Number Special"
		Then I should see header for 'Group Status for "Special"'
		And I should see below content
		|content 								|
		|Doclink Ref Num 				|
		|Condor Ref Num 				|
		|Title									|
		|Author 								|
		|Group Number 					|
		|Version Number 				|