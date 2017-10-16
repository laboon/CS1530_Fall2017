## Git 911 Exercise

You and a partner should create a BasicGit repository (described below) and fork the BadRepo4 repository under GitHub username laboon.

NOTE: There are BadRepos 0, 1, 2, and 3.  It is NOT necessary to work on them for this exercise. 

## Basic Git Functionality

Create a simple Java program, BasicGit, which prints the integers from 1 to 10 inclusive.  Add it to a git repository, and push it to GitHub.

### Creating A Repository

1. Log in to GitHub at https://github.com
2. Click on "Repositories" tab
3. Click on the green "New" button
4. Name the repository BasicGit
5. Ensure that the "public" radio button is selected
6. Check the checkbox to create a repository with a README.md file
7. Underneath that, select Add .gitignore: Java
8. Click the green "Create Repository" button

### Cloning It To Your Computer

1. Make sure you have git installed!
1. Navigate to https://github.com/YOUR_GITHUB_USERNAME/BasicGit
2. Click on the green "Clone or Download" button
3. Make sure it says "Clone with HTTPS" (if it does not, click the "Use HTTPS" link)
4. Copy and paste the URL shown in the textbox
5. At the command line, or git command window if in Windows, navigate to the directory you want the repo to live under.
6. Type "git clone" and then paste the URL you copied.  This URL should end in .git, e.g., https://github.com/laboon/CS1530_Exercise3.git.  You may have to re-enter your username/password at this point.
6. A copy of the repository is now located in a subdirectory called "BasicGit" under the current directory.

### Adding Appropriate Files and Pushing Back To GitHub

1. Ensure that you have completed the project.  Running `java BasicGit` should print out the numbers from 1 to 10.
2. Go to the root directory of the project.
3. Type `git add .` (this will add all files in the current directory to git's tracking)
4. Type `git commit -am "final"` (this will commit all files that have been added to a commit)
5. Type `git push origin master` (this will sync your current git repo with the one on origin, i.e., GitHub)
6. Go to https://github.com/YOUR_GITHUB_USERNAME/BasicGit in your browser and ensure that you see all of the files you expected to see.

## Issue a Pull Request

Create a new branch changing your program to count from 1 to 10 to count to 1 to 20.

### Detailed Instructions

1. From the root directory, create a new branch, `twenty`.  Do this by the command: `git checkout -b twenty`
2. You should be told you are in a new branch: `Switched to a new branch 'twenty'`
3. Verify that you are in the twenty branch by typing `git branch`.  This should have an asterisk next to your current branch.
4. Modify the code to count to 20
5. Type `git status`.  This should show you that there is a modification in your Java file.
6. Add the BasicGit.java file to be commited by typing `git add BasicGit.java`
7. Commit your changes - `git commit -m "20"`
8. Push your changes to origin - `git push origin twenty` __NOTE: PUSH TWENTY, NOT MASTER BRANCH!__
9. Go to your repo's home page (YOUR_USERNAME/BasicGit)
10. Click on the "Compare and Pull Request" button
11. Fill in the textboxes and click on the green Create Pull Request button
12. Click on the "Merge Pull Request" button

You're done!

## Problem Repos

_There is a problem with the following repository.  Fix it.  Please search for the answer via your favorite search engine before asking me.  However, if you feel stuck, please ask!  That is why I am here._

BadRepo4 - Merge the wjl_derp branch into master. Deal with the merge conflicts as best you can to eliminate them.  There should be no merge conflicts for full credit.

Please show or email me the fixed repo by the beginning of the next class.  I will be putting up solutions at that time.

```
Basic Git:      1 point
PR created:     0.5 point
BadRepo4 fixed: 0.5 point
```

