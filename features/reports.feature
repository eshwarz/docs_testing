# language: en

Feature: User can be able to see the documents in a group, group status,documents history,pqs matrix,on hold report,document hierarchy,calender based on group number
	
	Background: User logs in
		Given I am not authenticated
		When I log in as "<email>"
			| email  					| password | last_name | first_name |
			| test_user1@example.com	| password | Test      | User       |
		And I go to "/reports"
	
	@javascript	
	Scenario:User can see the following content
		Given I am on "/reports"
		Then I should see below content
		|content			 |
		|Documents in a Group|
		|Group Status 		 |
		|Document History 	 |
		|PQS Matrix 		 |
		|On Hold Report 	 |
		|Open Requests 		 |
	  	|Document Hierarchy	 |
		|Calendar			 |
		|Select Group Number |

	@javascript	
	Scenario: User can see the content in "Document in a Group"
		Given I am on "/reports"
		When I click on following links
		|link 				  |
		|Documents in a Group |
		|menu1 				  |
		|Group Number D 	  |
		Then I should see header for 'Group Documents for "D"'
		And I should see below content
		|content 			 	 |
		|Doclink Ref Num 	 	 |
		|Condor Ref Num 	 	 |
		|Title				 	 |
		|Author 			 	 |
		|Group Number 		 	 |
		|Version Number 	 	 |
		When I click on following links 
		|link 				  |
		|menu1 				  |
		|Group Number E 	  |
		Then I should see header for 'Group Documents for "E"'
		And I should see below content
		|content 			 	 |
		|Doclink Ref Num 	 	 |
		|Condor Ref Num 	 	 |
		|Title				 	 |
		|Author 			 	 |
		|Group Number 		 	 |
		|Version Number 	 	 |
		When I click on following links 
		|link 				  |
		|menu1 				  |
		|Group Number F 	  |
		Then I should see header for 'Group Documents for "F"'
		And I should see below content
		|content 			 	 |
		|Doclink Ref Num 	 	 |
		|Condor Ref Num 	 	 |
		|Title				 	 |
		|Author 			 	 |
		|Group Number 		 	 |
		|Version Number 	 	 |
		When I click on following links 
		|link 				  |
		|menu1 				  |
		|Group Number G 	  |
		Then I should see header for 'Group Documents for "G"'
		And I should see below content
		|content 			 	 |
		|Doclink Ref Num 	 	 |
		|Condor Ref Num 	 	 |
		|Title				 	 |
		|Author 			 	 |
		|Group Number 		 	 |
		|Version Number 	 	 |
		When I click on following links 
		|link 				  |
		|menu1 				  |
		|Group Number H 	  |
		Then I should see header for 'Group Documents for "H"'
		And I should see below content
		|content 			 	 |
		|Doclink Ref Num 	 	 |
		|Condor Ref Num 	 	 |
		|Title				 	 |
		|Author 			 	 |
		|Group Number 		 	 |
		|Version Number 	 	 |
		When I click on following links 
		|link 				  |
		|menu1 				  |
		|Group Number Special |
		Then I should see header for 'Group Documents for "Special"'
		And I should see below content
		|content 			 	 |
		|Doclink Ref Num 	 	 |
		|Condor Ref Num 	 	 |
		|Title				 	 |
		|Author 			 	 |
		|Group Number 		 	 |
		|Version Number 	 	 |
		
	@javascript	
	Scenario: User can see the content in "Group Status"
		Given I am on "/reports"
		When I click on following links 
		|link 				  |
		|Group Status 		  |
		|menu2 				  |
		|Group Number D 	  |
		Then I should see header for 'Group Status for "D"'
		And I should see below content
		|content 				 |
		|Doclink Ref Num 		 |
		|Condor Ref Num 		 |
		|Title					 |
		|Author 				 |
		|Group Number 			 |
		|Version Number 		 |
		When I click on following links 
		|link 				  |
		|menu2 				  |
		|Group Number E 	  |
		Then I should see header for 'Group Status for "E"'
		And I should see below content
		|content 				 |
		|Doclink Ref Num 		 |
		|Condor Ref Num 		 |
		|Title					 |
		|Author 				 |
		|Group Number 			 |
		|Version Number 		 |
		When I click on following links 
		|link 				  |
		|menu2 				  |
		|Group Number F 	  |
		Then I should see header for 'Group Status for "F"'
		And I should see below content
		|content 				 |
		|Doclink Ref Num 		 |
		|Condor Ref Num 		 |
		|Title					 |
		|Author 				 |
		|Group Number 			 |
		|Version Number 		 |
		When I click on following links 
		|link 				  |
		|menu2 				  |
		|Group Number G 	  |
		Then I should see header for 'Group Status for "G"'
		And I should see below content
		|content 				 |
		|Doclink Ref Num 		 |
		|Condor Ref Num 		 |
		|Title					 |
		|Author 				 |
		|Group Number 			 |
		|Version Number 		 |
		When I click on following links 
		|link 				  |
		|menu2 				  |
		|Group Number H 	  |
		Then I should see header for 'Group Status for "H"'
		And I should see below content
		|content 				 |
		|Doclink Ref Num 		 |
		|Condor Ref Num 		 |
		|Title					 |
		|Author 				 |
		|Group Number 			 |
		|Version Number 		 |
		When I click on following links 
		|link 				  |
		|menu2 				  |
		|Group Number Special |
		Then I should see header for 'Group Status for "Special"'
		And I should see below content
		|content 				 |
		|Doclink Ref Num 		 |
		|Condor Ref Num 		 |
		|Title					 |
		|Author 				 |
		|Group Number 			 |
		|Version Number 		 |

	@javascript	
	Scenario: User can see the content in "Document History"
	Given I am on "/reports"
	When I click on "Document History"
	Then I should see search for documents by Search By Document Number

	@javascript	
	Scenario: User can see the content in "PQS Matrix"
	Given I am on "/reports"
	When I click on "PQS Matrix"
	Then I should see header for "PQS Matrix"

	@javascript	
	Scenario: User can see the content in "On Hold Report"
	Given I am on "/reports"
	When I click on "On Hold Report"
	Then I should see header for "On Hold Report"

	@javascript	
	Scenario: User can see the content in "Open Requests"
	Given I am on "/reports"
	When I click on "Open Requests"
	Then I should see header for "Open Requests"
	
	@javascript	
	Scenario: User can see the content in "Document Hierarchy"
	Given I am on "/reports"
	When I click on "Document Hierarchy"
	Then I should see search for documents by Search By Document Number

	@javascript	
	Scenario: User can see the content in "Calendar"
	Given I am on "/reports"
	When I click on "Calendar"
	Then I should see "Calendar Coming Soon!"