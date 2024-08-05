@lib-11
Feature: Add Users Functionality

    As an admin, I should be able to add users on the "Users" page.

    #! Acceptance Criteria are missing :(


  Background:
    Given user is already on the login page


   Scenario: Access Users page
    When user clicks on the "Users" module
    Then user should be navigated to the Users page


Scenario: Verify presence of Edit User button
    Given user is on the "Users" page
    Then user should see the "Edit User" button

    Scenario: Open Edit User form
    Given user is on the "Users" page
    When user clicks the "Edit User" button
    Then the Edit User Information form should be displayed

    Scenario: Verify the Save changes button
    Given the Edit User form is displayed with valid fields
    Then the "Save changes" button should be enabled

    Scenario: Verify the Close button
    Given the Edit User form is displayed with valid fields
    Then the "Close" button should be enabled

    Scenario: Verify successful user update





#* AC1: Admins should be able to access the "Users" page from the main modules.
#* AC2: Admins should see an "Edit User" button on the "Users" page.
#* AC3: Clicking the "Edit User" button should open a form to add a new user.
#* AC4: The form should include fields for Full Name, Password,Email, User Group, Status, Start Date, End Date, and Address.
#* AC5: Admins should be able to save the new user by clicking the "Save changes" button
    #TODO: Analyze the user story and create acceptance criteria yourself!


    #TODO: Create scenarios that cover all the acceptance criteria
