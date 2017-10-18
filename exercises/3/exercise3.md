# Gradle Exercise

You and a partner are going to create a Java application gradle project which will print results from two different integer sequences.  You will then push your project to GitHub and show me.  You must do this with a partner!  

The first integer sequence is the Triangle number sequence.  Think of this as an "additive" version of a factorial function: whereas 5! = 5 * 4 * 3 * 2 * 1, Tri(5) = 5 + 4 + 3 + 2 + 1.  You can find the exact equation here: https://en.wikipedia.org/wiki/Triangular_number

The second sequence is the Lazy Caterer sequence.  This is the sequence which indicates how many pieces a cake could be cut into by using n knife cuts.  For example, with 0 knife cuts, a cake would have to stay in one piece.  With two knife cuts, you could have four pieces.  You can find the equation governing the Lazy Caterer sequence here: https://en.wikipedia.org/wiki/Lazy_caterer%27s_sequence

The project should meet the following specifications:

1. A main class which accepts one argument, an integer.
1. If the argument is not an integer, or there are the wrong number of arguments (including no arguments), the program shall inform the user and exit with error code 1.
2. The program shall print out the result (the Lazy Caterer number and the Triangle number) in the following format: "Tri(n) = x" and on a separate line, "Lazy(n) = x".
3. At least three unit tests each for two methods (one to calculate triangle numbers and the other to calculate Lazy Caterer numbers) shall be added.  Thus there should be a total of six unit tests.  Each of these methods should accept a value _n_ and then simply return the _n_th sequence value.  These methods should have no "side effects" (e.g. printing information to the terminal).
4. Aside from the gradle commands "build", "run", and "test", an additional task, "sequencehelp", shall be added.  I should be able to run this command with `gradle -q sequencehelp` or `gradle sequencehelp` .  This task shall do the following (in Groovy):

```
  1. Print "Integer Sequence Project"
  2. Print "Given an integer n as an argument, displays Tri(n) and LC(n)."
```

If you need to exit with an error, it is important to exit with a different error than 0, as 0 indicates success to gradle.  It will not know that your program has an error unless you indicate it with a non-zero exit code.  This is good advice not just for this class but in general - if your program exits abnormally, the way to indicate this is with some non-zero exit code.  Other programs which may depend on yours can use that as a "signal" from your program.

When complete, you should push up to GitHub and either show me a link or email it to me (if you finish after class).  It must be turned in by the next class.  If you are emailing, be sure to note both your name and your partner's so that I give you both credit.

## Git / GitHub Basics

Reminder for creating a repository and adding files.

### Creating A Repository

1. Log in to GitHub at https://github.com
2. Click on "Repositories" tab
3. Click on the green "New" button
4. Name the repository CS1530_Exercise3
5. Ensure that the "public" radio button is selected
6. Check the checkbox to create a repository with a README.md file
7. Underneath that, select Add .gitignore: Gradle
8. Click the green "Create Repository" button

### Cloning It To Your Computer

1. Make sure you have git installed!
1. Navigate to https://github.com/YOUR_GITHUB_USERNAME/CS1530_Exercise3
2. Click on the green "Clone or Download" button
3. Make sure it says "Clone with HTTPS" (if it does not, click the "Use HTTPS" link)
4. Copy and paste the URL shown in the textbox
5. At the command line, or git command window if in Windows, navigate to the directory you want the repo to live under.
6. Type "git clone" and then paste the URL you copied.  This URL should end in .git, e.g., https://github.com/laboon/CS1530_Exercise3.git.
6. A copy of the repository is now located in a subdirectory called "CS1530_Exercise3" under the current directory.

### Adding Appropriate Files and Pushing Back To GitHub

1. Ensure that you have completed the project.
2. Go to the root directory of the gradle project.
3. Type `git add .`
4. Type `git commit -am "final"`
5. Type `git push origin master`
6. Go to https://github.com/YOUR_GITHUB_USERNAME/CS1530_Exercise3 in your browser and ensure that you see all of the files you expected to see.

### Submission

Email me a link to repository (e.g., https://github.com/YOUR_GITHUB_USERNAME/CS1530_Exercise3) and the names and github usernames of the people who worked on it.  This should be done _before_ the next class.

```
Grading:
Lazy sequence: 0.5
Triangle sequence: 0.5
Tests: 0.5
Error-checking: 0.5
```