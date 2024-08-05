@lib-07
Feature: User Groups Filtering

    As an admin, I should be able to filter the user groups on the "Users" page.


    #! Acceptance Criteria are missing :(
 Background:
        Given user is already on the login page


Scenario: Verify user group filter options
    Given user is on the "Users" page
    When user clicks on the User Group filter dropdown
    Then the dropdown should include "Librarian" and "Student" options

  Scenario Outline: Filter users by group
    Given user is on the "Users" page
    When user selects "<group>" from the user group filter dropdown
    Then the user list should update to show only users belonging to the "<group>" group
    Examples:
      | group     |
      | All       |
      | Librarian |
      | Student   |

  Scenario: Clear user group filter
    Given user has applied a user group filter on the "Users" page
    When user refreshes the page
    Then the user list should update to show All users 




#* AC1: Admins should be able to access the "Users" page from the main modules.
#* AC2: Admins should see a filter option for user groups on the "Users" page.
#* AC3: The filter should include options for "Librarian" and "Student".
#* AC4: Admins should be able to select a user group from the filter dropdown.
#* AC5: The user list should update to show only users belonging to the selected user group.
#* AC6: Admins should be able to clear the filter to view all users again.



    #TODO: Analyze the user story and create acceptance criteria yourself!


    #TODO: Create scenarios that cover all the acceptance criteria
