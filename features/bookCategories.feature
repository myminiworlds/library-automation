@lib-03
Feature: Book Categories

    As a user, I want to see 23 book categories, so I can filter my favorite books.

    #* AC1: users should see 23 book categories When users click the Book Categories drop down 
    #*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
    #*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
    #*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry, Thrillers, Young adults           


    Background:
        Given user is already on the login page


    Scenario: Verify users see 21 book categories
        When user navigates to the Book Categories page
        And user clicks on the Book Categories drop down menu
        Then user should see the following 21 categories:
            | ALL                     |
            | Action and Adventure    |
            | Anthology               |
            | Classic                 |
            | Comic and Graphic Novel |
            | Crime and Detective     |
            | Drama                   |
            | Fable                   |
            | Fairy Tale              |
            | Fan-Fiction             |
            | Fantasy                 |
            | Historical Fiction      |
            | Horror                  |
            | Science Fiction         |
            | Humor                   |
            | Biography/Autobiography |
            | Romance                 |
            | Short Story             |
            | Essay                   |
            | Memoir                  |
            | Poetry                  |

Scenario Outline: Verify user can select and filter by each category
        When user clicks on the Book Categories drop down menu
        And user selects "<category>" category
        Then the book list should be filtered to show only "<category>" books


        Examples:
            | category                |
            | Action and Adventure    |
            | Anthology               |
            | Classic                 |
            | Comic and Graphic Novel |
            | Crime and Detective     |
            | Drama                   |
            | Fable                   |
            | Fairy Tale              |
            | Fan-Fiction             |
            | Fantasy                 |
            | Historical Fiction      |
            | Horror                  |
            | Science Fiction         |
            | Humor                   |
            | Biography/Autobiography |
            | Romance                 |
            | Short Story             |
            | Essay                   |
            | Memoir                  |
            | Poetry                  |


    Scenario: Verify category selection resets to 'ALL' after page refresh
        When user clicks on the Book Categories drop down menu
        And user selects "Romance" category
        And user refreshes the page
        Then "ALL" category should be selected by default






#* AC1: users should see 21 book categories When users click the Book Categories drop down
#*      ALL, Action and Adventure, Anthology, Classic, Comic and Graphic Novel, Crime and Detective, Drama
#*      , Fable, Fairy Tale, Fan-Fiction, Fantasy, Historical Fiction, Horror, Science Fiction, Humor
#*      , Biography/Autobiography ,Romance, Short Story, Essay, Memoir, Poetry, Thrillers, Young adults

    # TODO: verify users see 21 book categories

    
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.