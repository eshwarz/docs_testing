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
		|content			       |
		|Documents in a Group|
		|Group Status 		 	 |
		|Document History 	 |
		|PQS Matrix 		     |
		|On Hold Report 	   |
		|Open Requests 		   |
	  |Document Hierarchy|
		|Calendar			       |
		|Select Group Number |

	@javascript	
	Scenario: User can see the content in "Document in a Group"
		Given I am on "/home"
		When I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I click on "Versions"
		And I click on "New Version"
		And I select "D" from "Group Num"
		When I am on "/reports"
		And I click on following links
			|link 				  			|
			|Documents in a Group |
			|menu1 				  			|
			|Group Number D 	  	|
		Then I should see header for 'Group Documents for "D"'
		And I should see below content
			|content 			 	 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title				 	 |
			|Author 			 	 |
			|Group Number 	 |
			|Version Number  |

		When I am on "/home"
		And I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I click on "Versions"
		And I click on "New Version"
		And I select "E" from "Group Num"
		And I am on "/reports" 
		When I click on following links 
			|link 				  |
			|menu1 				  |
			|Group Number E 	  |
		Then I should see header for 'Group Documents for "E"'
		And I should see below content
			|content 			 	 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title				 	 |
			|Author 			 	 |
			|Group Number 	 |
			|Version Number  |

		When I am on "/home"
		And I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I click on "Versions"
		And I click on "New Version"
		And I select "F" from "Group Num"
		And I am on "/reports" 
		When I click on following links 
			|link 				  |
			|menu1 				  |
			|Group Number F |
		Then I should see header for 'Group Documents for "F"'
		And I should see below content
			|content 			 	 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title				 	 |
			|Author 			 	 |
			|Group Number 	 |
			|Version Number  |

		When I am on "/home"
		And I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I click on "Versions"
		And I click on "New Version"
		And I select "G" from "Group Num"
		And I am on "/reports" 
		When I click on following links 
			|link 				  |
			|menu1 				  |
			|Group Number G |
		Then I should see header for 'Group Documents for "G"'
		And I should see below content
			|content 			 	 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title				 	 |
			|Author 			 	 |
			|Group Number 	 |
			|Version Number  |

			When I am on "/home"
		And I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I click on "Versions"
		And I click on "New Version"
		And I select "H" from "Group Num"
		And I am on "/reports" 
		When I click on following links 
			|link 				  |
			|menu1 				  |
			|Group Number H |
		Then I should see header for 'Group Documents for "H"'
		And I should see below content
			|content 			 	 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title				 	 |
			|Author 			 	 |
			|Group Number 	 |
			|Version Number  |

			When I am on "/home"
		And I click on "Edit Document 1"
		Then I should see "SOP01333 : Network SOP - Biologics Network Tank Management Lifecycle"
		And I click on "Versions"
		And I click on "New Version"
		And I select "Special" from "Group Num"
		And I am on "/reports" 
		When I click on following links 
			|link 				  			|
			|menu1 				  			|
			|Group Number Special |
		Then I should see header for 'Group Documents for "Special"'
		And I should see below content
			|content 			 	 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title				 	 |
			|Author 			 	 |
			|Group Number 	 |
			|Version Number  |
			
	@javascript	
	  Scenario: User can see the content in "Group Status"
	  Given I am on "/home"
		When I click on "Edit Document 1"
		And I click on "Versions"
		And I click on "New Version"
		And I select "D" from "Group Num"
		Given I am on "/reports"
		When I click on following links 
			|link 				  |
			|Group Status 	|
			|menu2 				  |
			|Group Number D	|
		Then I should see header for 'Group Status for "D"'
		And I should see below content
			|content 			 	 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title				 	 |
			|Author 			 	 |
			|Group Number 	 |
			|Version Number  |
		
		When I am on "/home"
		And I click on "Edit Document 1"
		And I click on "Versions"
		And I click on "New Version"
		And I select "E" from "Group Num"
		Given I am on "/reports"
		When I click on following links 
			|link 				  |
			|menu2 				  |
			|Group Number E |
		Then I should see header for 'Group Status for "E"'
		And I should see below content
			|content 				 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title					 |
			|Author 				 |
			|Group Number 	 |
			|Version Number	 |
		When I am on "/home"
		And I click on "Edit Document 1"
		And I click on "Versions"
		And I click on "New Version"
		And I select "F" from "Group Num"
		Given I am on "/reports"
		When I click on following links 
			|link 				  |
			|menu2 				  |
			|Group Number F |
		Then I should see header for 'Group Status for "F"'
		And I should see below content
			|content 				 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title					 |
			|Author 				 |
			|Group Number 	 |
			|Version Number  |
		
    When I am on "/home"
		And I click on "Edit Document 1"
		And I click on "Versions"
		And I click on "New Version"
		And I select "G" from "Group Num"
		And I am on "/reports"
		When I click on following links 
			|link 				  |
			|menu2 				  |
			|Group Number G |
		Then I should see header for 'Group Status for "G"'
		And I should see below content
			|content 				 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title					 |
			|Author 				 |
			|Group Number 	 |
			|Version Number  |

		When I am on "/home"
		And I click on "Edit Document 1"
		And I click on "Versions"
		And I click on "New Version"
		And I select "H" from "Group Num"
		Given I am on "/reports"
		When I click on following links 
			|link 				  |
			|menu2 				  |
			|Group Number H 	  |
		Then I should see header for 'Group Status for "H"'
		And I should see below content
			|content 				 |
			|Doclink Ref Num |
			|Condor Ref Num  |
			|Title					 |
			|Author 				 |
			|Group Number 	 |
			|Version Number  |

		When I am on "/home"
		And I click on "Edit Document 1"
		And I click on "Versions"
		And I click on "New Version"
		And I select "Special" from "Group Num"
		Given I am on "/reports"
		When I click on following links 
			|link 				  			|
			|menu2 				  			|
			|Group Number Special |
		Then I should see header for 'Group Status for "Special"'
		And I should see below content
			|content 				  |
			|Doclink Ref Num  |
			|Condor Ref Num   |
			|Title					 	|
			|Author 				 	|
			|Group Number 		|
			|Version Number 	|

	@javascript	
	Scenario: User can see the content in "Document History"
	Given I am on "/reports"
	When I click on "Document History"
	Then I should see "Search By Document Number"
	When I fill in "search_document_versions" with "SOP01333"
	Then I should see below content
			|content 				  		|
			|Doclink Ref Num  		|
			|Condor Ref Num   		|
			|Title					 			|
			|Group Number 				|
			|Version Number 			|
			|Description of Change|	
			|CAPA Number					|
			|	Revision Type				|


	@javascript	
	Scenario: User can see the content in "PQS Matrix"
	Given I am on "/reports"
	When I click on "PQS Matrix"
	Then I should see header for "PQS Matrix"
	And I should see below content
		|Global Coordinate			|
		|Doclink Ref number 		|
		|Parent 								|
		|	Condor Ref Num    		|
		|German Doc Num     		|
		|	Author								|
		|	Title									|
		|	Group Number      		|
		|	Version Number   			|
		|	Description of Change	|	
		|Training Type				 	|
		|	Version Number 				|
		|	CAPA Number           |
		|	LIA Status            |

	@javascript	
	Scenario: User can see the content in "On Hold Report"
	Given I am on "/reports"
	When I click on "On Hold Report"
	Then I should see header for "On Hold Report"
	And I should see below content
		|	Global Coordinate			|
		|	Doclink Ref number 		|
		|	Condor Ref Num    		|			
		|	Group Number      		|
		|	Version Number   			|
		|	Description of Change	|	
		|	Version Number 				|
		|	CAPA Number           |
		|	LIA Status            |
		|	Comment								|


	@javascript	
	Scenario: User can see the content in "Open Requests"
	Given I am on "/reports"
	When I click on "Open Requests"
	Then I should see header for "Open Requests"
	And I should see below content
		|Doclink Ref Num|
		|Condor Ref Num |
		|Title					|
		|Author					|
	
	@javascript	
	Scenario: User can see the content in "Document Hierarchy"
	Given I am on "/reports"
	When I click on "Document Hierarchy"
	Then I should see "Search By Document Number"
	And I fill in "search_document_hierarchy" with "QR001"
	And I should see below content
		|Doclink Ref Num|
		|Condor Ref Num |
		|parent         |
		|Title					|
		|Author					|


	@javascript	
	Scenario: User can see the content in "Calendar"
	Given I am on "/reports"
	When I click on "Calendar"
	Then I should see "Calendar Coming Soon!"