@lib-08
Feature: Total Amount of Users, Books, and Borrowed Books

    As an admin, I want to see the total amount of users, books, and borrowed books on the "Dashboard" page. 

    #* AC1: Admin should see the total number of users and the “Users” text. 
    #* AC2: Admin should see the total number of books and the “Books” text. 
    #* AC3: Admin should see the total number of borrowed books and the “Borrowed Books” text. 

  Background:
    Given user is already on the login page
    And user logs in with valid admin credentials

    Scenario: Verify admins see the total numbers and texts for Users, Books, and Borrowed Books
    When user clicks on the Dashboard module
    Then user should see three information cards on the Dashboard page
    And the first card should display the total number of users and the "Users" text
    And the second card should display the total number of books and the "Books" text
    And the third card should display the total number of borrowed books and the "Borrowed Books" text

Scenario: Verify the accuracy of displayed totals
    When user clicks on the Dashboard module
    Then the total number of users displayed should match the actual number of users in the system
    And the total number of books displayed should match the actual number of books in the system
    And the total number of borrowed books displayed should match the actual number of borrowed books in the system

    Scenario: Verify totals update after changes in the system
    Given user is on the Dashboard page
    When a new user is added to the system
    And user refreshes the Dashboard page
    Then the total number of users should increase by 1
    When a new book is added to the system
    And user refreshes the Dashboard page
    Then the total number of books should increase by 1
    When a book is borrowed by a user
    And user refreshes the Dashboard page
    Then the total number of borrowed books should increase by 1



    #* AC1: Admin should see the total number of users and the “Users” text. 
    #* AC2: Admin should see the total number of books and the “Books” text. 
    #* AC3: Admin should see the total number of borrowed books and the “Borrowed Books” text.
    # TODO: Verify admins see the total number of users and the “Users” text.
    

    # TODO: Verify admins see the total number of books and the “Books” text.
    

    # TODO: Verify admins see the total number of borrowed books and the “Borrowed Books” text.
    
    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.