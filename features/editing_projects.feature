Feature: Editing Projects
 As a User I want to edit a project So that I can maintain the project information
 
Background:
 	Given there is a project called "TextMate 2"
	And I am on the homepage
	When I follow "TextMate 2"
	And I follow "Edit Project"

 Scenario: Updating a project
	And I fill in "Name" with "TextMate 2 beta"
	And I press "Update Project"
	Then I should see "Project has been updated."
	Then I should be on the project page for "TextMate 2 beta"

Scenario: Updating a project with invalid attributes is bad
	And I fill in "Name" with ""
	And I press "Update Project"
	Then I should see "Project has not been updated."