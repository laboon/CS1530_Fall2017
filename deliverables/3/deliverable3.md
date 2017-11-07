# CS/COE 1530 - Software Engineering
Fall Semester 2017

### ASSIGNED 8 NOV 2017, DUE 20 NOV 2017

## Deliverable 3

For the third sprint, each group will need to:

1. Continue implementing user stories
2. Turn in a paper showing a task network of the user stories and detailing which member(s) worked on which user stories.

The team should determine the Scrum Master for the third sprint.  Remember that the Scrum Master will change each sprint.

## Format

For the third sprint, you will turn in:

1. A cover page, in the format described below
2. A breakdown of the user stories BEING DONE IN THIS SPRINT as a task network.  You do NOT need to estimate time, but only indicate which user stories must be completed before others.
3. A list of which developer worked on which user story
3. The application available on GitHub in the SAME PRIVATE repository as the first sprint.  

Format for cover page:
* The title "*your team name* - SPRINT 3 DELIVERABLE"
* The names of the people in the group, and their GitHub or GitLab username.  Mark down who the Scrum Master is this sprint, e.g. "Jane Doe (Scrum Master)"
* Link to the project repository on GitHub
* The date that it is due (20 NOV 2017)

Recall that all user stories must be shown as "issues" and planned out using the GitHub projects interface.

All user stories should be done in SEPARATE BRANCHES and submitted via pull request.  They should be reviewed by somebody who is NOT the originator of the code.  This other person should review the code and merge the pull request.

YOU SHOULD NEVER MERGE YOUR CODE DIRECTLY TO MASTER.  IT SHOULD ALWAYS BE REVIEWED BY ANOTHER MEMBER OF THE TEAM AND SUBMITTED VIA PR.

## Grading
* User Stories (in GitHub): 5% of grade
* Task network: 10% of grade
* Project set up and used correctly on GitHub: 5% of grade
* Game: 80% of grade

User stories shall be in the Connextra template ("As a.. I want.. so that..") and provide good, user-level descriptions of user needs and wants.  User stories should be printed in order of priority.  It is NOT expected that you will complete every single user story, or even that these are the final versions of the user story; they may change and be prioritized differently as the sprints go on.

All user stories shall have story points listed, either in the main description or in the comments.

User stories should flow from the needs of the customer.  Your discussions with the customer should guide the user stories themselves as well as their prioritization.

The number of user stories in the product backlog will vary based on the project, but it should be at least eight at the VERY minimum.  If there are fewer than eight stories, the project may be too small or your user stories too big.

User Stories should be entered as "issues" and put in the appropriate place (product backlog, sprint backlog, in progress, complete) in the Project.  Tasks can also be added as issues.

Your program __must__ compile and show the UI for the application using the command "gradle run".  You can have more functionality if you like, but it is essential that your program compiles, runs and displays the UI without error!

The program __must__ be able to run on __everybody's__ computer!  Everybody should have access to the repository on GitHub and able to make commits by the end of this sprint.

You must "tag" the particular commit you want to have graded with the tag "D3".  Make sure you make an annotated and not a lightweight tag.  Also be sure you push the tag up to GitHub specifically!  Pushing up the branch to origin will NOT automatically push up the tag as well, you must do so separately.  If you want to tag the current commit, you may do so with the following commands:

```
git tag -a D3 -m "D3"
git push origin D3
```

Further details on tagging are here: https://git-scm.com/book/en/v2/Git-Basics-Tagging

## The Game

For the third deliverable, you should implement and test, at a minimum, the following features:

1. A running timer showing minutes and seconds that the game is played (should be updated on-screen once per second in a different thread)
2. The ability to save/load games to a file.  This file should include all game state including player positions, the card deck, and the current elapsed game time.  Game time should be "paused" while players are not playing the game.
3. Modify the "move to middle" cards so that there are five "move to Square X" cards which take you one of five different locations on the board.  These locations should _only_ be reachable via these cards and should have some sort of candy-themed unique visual specifier/identifier for each one.  For example, you may have an Ice Cream square, Licorice square, etc.  These must be visually distinct from each other.  These squares are "colorless" - unless you get an Ice Cream card, for example, you will never land on the Ice Cream square.  Remove the "move to middle" cards and have five of these cards, with each one of the cards moving to a specific square (e.g. one Ice Cream card which moves you to the Ice Cream square, one Licorice card which moves you to the Licorice square, etc.)
4. One additional feature of your team's choice

There should be, at a bare minimum, two tests per story completed.  If you cannot do a unit test for a specific case, you should write and execute a manual test for that case.

Endeavour to write your code in a good, object-oriented way.  This will help with testing and extension later.

## Other

Each team member must indicate which user stories they worked on during the sprint.  Every sprint, team members must implement at least one user story.

Please feel free to email me or come to office hours to discuss any problems you have.
