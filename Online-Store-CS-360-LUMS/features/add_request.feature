Feature: Add request
  As a customer
  I might want a book which is not currently available
  So I want to place a request

Background: Admin ready 
  Given administrator has signed up
  Given administrator has logged in


Scenario: Add request
	Given I am on the home page
	When I follow "Requests"
	When I am on request
	When I follow "New Request"
	And I fill in "request[author]" with "Mary"
	And I fill in "request[edition]" with "9th"
	And I fill in "request[bookTitle]" with "Harry Potter"
	And I fill in "request[instructor]" with "Daud"
	And I fill in "request[courseCode]" with "MECO 121"
	And I press "Create Request"
	Then I should see "Request was successfully created."