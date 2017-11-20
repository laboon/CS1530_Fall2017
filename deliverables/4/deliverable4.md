# CS/COE 1530 - Software Engineering
Fall Semester 2017

### ASSIGNED 20 NOV 2017, DUE 6 DEC 2017

## Deliverable 4

For the fourth and final sprint, each group will need to:

1. Continue implementing user stories
2. Turn in a paper showing a task network of the user stories and detailing which member(s) worked on which user stories.

The team should determine the Scrum Master for the final sprint.  Remember that the Scrum Master will change each sprint.

## Format

For the fourth sprint, you will turn in:

1. A cover page, in the format described below
2. A breakdown of the user stories BEING DONE IN THIS SPRINT as a task network.  You do NOT need to estimate time, but only indicate which user stories must be completed before others.
3. A list of which developer worked on which user story
3. The application available on GitHub in the SAME PRIVATE repository as the first sprint.  

Format for cover page:
* The title "*your team name* - FINAL DELIVERABLE"
* The names of the people in the group, and their GitHub or GitLab username.  Mark down who the Scrum Master is this sprint, e.g. "Jane Doe (Scrum Master)"
* Link to the project repository on GitHub
* The date that it is due (6 DEC 2017)

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

You must "tag" the particular commit you want to have graded with the tag "D4".  Make sure you make an annotated and not a lightweight tag.  Also be sure you push the tag up to GitHub specifically!  Pushing up the branch to origin will NOT automatically push up the tag as well, you must do so separately.  If you want to tag the current commit, you may do so with the following commands:

```
git tag -a D4 -m "D4"
git push origin D4
```

Further details on tagging are here: https://git-scm.com/book/en/v2/Git-Basics-Tagging

## The Game

For the final deliverable, you should implement and test, at a minimum, the following features:

1. Switch between "Classic" and "Strategic" modes of the game.  Players will have the ability to choose at the beginning of the game.  Classic mode is the game as it is been developed so far.  In strategic mode, players will have three "boomerangs" at the start of the game.  At the beginning of each turn, the player can either draw a card as per normal, or use a boomerang.  If they use a boomerang, they select another player, then draw a card, and that player goes BACKWARD to the last square of that color, or to the START square if there are no squares of that color behind them.  If the boomeranged player gets a "go to space" card, the player will go to that space.  If the boomeranged player gets a "skip" card, nothing happens.  Every use of a boomerang by a player will decrement their boomerang count by one.  When a player has no more boomerangs, they cannot use a boomerang.  These boomerangs shall be visibly displayed in such a manner that players are aware of how many boomerangs they have at the start of their turn.  They may be visible at other times as well, at your discretion.
2. Incorruptible file - Saved game files should include a mechanism to discourage tampering with the file (to avoid somebody modifying it).  You may do this with a simple cipher or adding a checksum to the end of the file.  You do not need to worry about it being cryptographically secure, only enough to discourage a layman.  If the file is tampered with, the game should refuse to load the game and inform the user that the file is corrupt.
3. AI players - There should an option to have the computer "play" for a player.  This should apply for both modes of the game.  You may have the AI randomly choose options if there are multiple options (as in "Strategic" mode).
4. "Dad" cheat - Players should be able to enter their names, if they cannot do so.  If a player enters their name as "Dad", the game will cheat against them.  Every time the player with the name "Dad" plays, the game will look through the remaining cards for the _worst_ possible card (defined as the card that will move that player to the square closest to the START square) and deal it to that player.  

There should be, at a bare minimum, two tests per story completed.  If you cannot do a unit test for a specific case, you should write and execute a manual test for that case.

Endeavour to write your code in a good, object-oriented way.  

## Other

Each team member must indicate which user stories they worked on during the sprint.  Every sprint, team members must implement at least one user story.

Please feel free to email me or come to office hours to discuss any problems you have.
