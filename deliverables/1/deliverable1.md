# CS/COE 1530 - Software Engineering
Fall Semester 2017

### ASSIGNED 11 OCT 2017, DUE 25 OCT 2017

## Deliverable 1

For the first sprint, each group will need to:

1. Determine initial user stories for the project, including prioritization, based on an interview with the product owner
2. Write a task network to determine ordering/prioritization 
2. Write a walking skeleton and prototype UI of the application using gradle, which should include unit tests 

The team should determine the Scrum Master for this first sprint.  The Scrum Master will change each sprint.

## Format

For the first sprint, you will turn in:

1. A cover page, in the format described below
2. A breakdown of the user stories BEING DONE IN THIS SPRINT as a task network.  You do NOT need to estimate time, but only indicate which user stories must be completed before others.
3. A "walking skeleton" application available on GitHub in a PRIVATE repository (ADD ME AND THE TA AS COLLABORATORS!  Usernames "laboon" and "hardikchinoy25" (1:00 class) or "KrithikaGanesh" (3:00 class)).  This should include a basic UI of the program - note that only minimal functionality is required here for the first deliverable.


Format for cover page:
* The title "*your team name* - SPRINT 1 DELIVERABLE"
* The names of the people in the group, and their GitHub or GitLab username.  Mark down who the Scrum Master is this sprint, e.g. "Jane Doe (Scrum Master)"
* Link to the project repository on GitHub
* The date that it is due (25 OCT 2017)

## Grading
* User Stories (in GitHub): 15% of grade
* Task network: 10% of grade
* Project set up and used correctly on GitHub: 15% of grade
* Initial GUI: 60% of grade

User stories shall be in the Connextra template ("As a.. I want.. so that..") and provide good, user-level descriptions of user needs and wants.  User stories should be printed in order of priority.  It is NOT expected that you will complete every single user story, or even that these are the final versions of the user story; they may change and be prioritized differently as the sprints go on.

All user stories shall have story points listed, either in the main description or in the comments.

User stories should flow from the needs of the customer.  Your discussions with the customer should guide the user stories themselves as well as their prioritization.

The number of user stories in the product backlog will vary based on the project, but it should be at least eight at the VERY minimum.  If there are fewer than eight stories, the project may be too small or your user stories too big.

You should set up a GitHub Project which has four columns: product backlog, sprint backlog, in progress, complete.  All user stories should start in the product backlog, and move to sprint backlog when they are scheduled to be done in this sprint.  Stories should generally progress from there to in progress to complete.

User Stories should be entered as "issues" and put in the appropriate place (product backlog, sprint backlog, in progress, complete) in the Project.  Tasks can also be added as issues.

The walking skeleton __must__ compile and show a basic UI for the application.  You can have more functionality if you like, but it is essential that your program compiles, runs and displays a basic UI without error!

This basic UI should display:

1. The game area (including the squares of the game with labels)
2. Tokens on the board, indicating players.
3. A place to see the deck and the last card dealt

The game should ask for the number of players and names upon startup, which will be displayed in the status area.

The basic UI may change over the course of the project.

The walking skeleton __must__ be able to run on __everybody's__ computer!  Everybody should have access to the repository on GitHub and able to make commits by the end of this sprint.

You must "tag" the particular commit you want to have graded with the tag "D1".  Make sure you make an annotated and not a lightweight tag.  Also be sure you push the tag up to GitHub specifically!  Pushing up the branch to origin will NOT automatically push up the tag as well, you must do so separately.  If you want to tag the current commit, you may do so with the following commands:

```
git tag -a D1 -m "D1"
git push origin D1
```

Further details on tagging are here: https://git-scm.com/book/en/v2/Git-Basics-Tagging

The needs of the customer will be determined in class by interviewing the product owner (i.e., Bill Laboon).

## The Game

In this class, we are going to make a game, World of Sweets, which is similar to but legally distinct from Candyland (tm).  In this game, users take turns drawing cards from a deck and moving the appropriate nunmber of spaces.  The first player to reach the last square on the board (Grandma's House) wins the game.

There are two kinds of cards, single and double.  There is a ratio of 5 singles for every double.  The initial deck has 10 singles and 2 doubles of each color of card (red, yellow, blue, green, orange).  

Squares alternate between several colors: red, yellow, blue, green, and orange, in that order.  The first square should be red.  Players start immediately "before" the first square (on the "zeroth" square).  The last square is a special square, Grandma's House, which can be treated as any color.

```
[GRANDMA'S] <-          ...            <- [YELLOW] <- [RED]
                                                        ^
                                                        |
[START] -> [RED] -> [YELLOW] -> [BLUE] -> [GREEN] -> [ORANGE]
                     
```

Upon receiving a single card of a specific color, the player moves their token to the NEXT space with the same color as the card.  For example, assume Player 1 is on the zeroth square.  They draw a "single red" card.  They go to the first square, which is red.  Player 2 draws a single yellow and goes to the first yellow square (square 2). Player 1 draws another single red and they go to the *next* red square.  Player 2 is now on the red square and draws another single red.  They go to square 6 (the next red square).  Player 2 draws a single blue and moves one space to the next blue square.

For double cards, players move two spaces of that color forward.  For example, assume Player 1, on square 6 (red), draws a double yellow card.  They go one space to the next yellow, and then five more spaces to the next yellow.

Grandma's House, the last square on the board, will be a "rainbow" square which counts as any color.  If a player lands on or goes past Grandma's House, they win the game.

Remember that this is a *deck* of cards.  This deck is "used up" as the game progresses.  When all of the cards have been used, re-shuffle the deck and start from the top of the deck.  You should *not* be randomly choosing a combination of color / number each turn!

Additionally, there are "special" cards.  These special cards will perform special actions, such as moving you to a certain square on the board.  These are not necessary for the first deliverable.

We will start by allowing up to four players to play against each other on the same computer.  Future functionality may include playing the computer (AI), playing by email (correspondence), or via a server.

Further details on what other features, functionality, etc. may be found by interviewing the customer/user during the stakeholder interaction exercise.  Features and functionality are subject to change as the customer better understands the system and their own needs.

For the initial deliverable, you should implement and test, at a minimum, the following features:

1. User is asked how many players
2. Board is displayed, with squares, token, and card deck
3. Players are cycled through (take turns)
4. Cards are drawn and displayed

Tokens do not need to move for the initial deliverable.

There should be, at a bare minimum, two unit tests per story completed.  If you cannot do a unit test for a specific case, you should write and execute a manual test for that case.

Endeavour to write your code in a good, object-oriented way.  This will help with testing and extension later.

Additional features that may or may not be added later:

1. Ability to save/load games
2. "AI" players
3. Special cards
4. "Shortcuts" or "teleports" on the board
5. Game timer

## Other

Each team member must indicate which user stories they worked on during the sprint.  Every sprint, team members must implement at least one user story.

You must use the Java Swing framework for the graphical user interface.  You can use the following repository to either brush up on your Swing or learn it on your own: https://github.com/laboon/GameOfLife This contains a graphical version of Conway's Game of Life.

The following files from my CS0401 class may also be helpful as examples:

1. Frames - https://github.com/laboon/cs0401/blob/master/sample_code/FrameDemo.java
1. Panels - https://github.com/laboon/cs0401/blob/master/sample_code/PanelDemo.java and https://github.com/laboon/cs0401/blob/master/sample_code/PanelDemo2.java
2. Extending Panels - https://github.com/laboon/cs0401/tree/master/sample_code/extended_jpanel
3. Creating and Interacting with Buttons - https://github.com/laboon/cs0401/blob/master/sample_code/ButtonDemo.java
4. Creating a Grid Layout - https://github.com/laboon/cs0401/blob/master/sample_code/GridDemo.java
5. Dynamically Changing A Button - https://github.com/laboon/cs0401/blob/master/sample_code/NameChangeButtonDemo.java

We will also have an in-class exercise for a Swing refresher.

Please feel free to email me or come to office hours to discuss any problems you have.
