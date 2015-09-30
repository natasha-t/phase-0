## Tracking Changes Reflection

1. How does tracking and adding changes make developers' lives easier?
2. What is a commit?
3. What are the best practices for commit messages?
4. What does the HEAD^ argument mean?
5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
6. Write a handy cheatsheet of the commands you need to commit your changes?
7. What is a pull request and how do you create and merge one?
8. Why are pull requests preferred when working with teams?


1. Tracking and adding changes is helpful because developers are then constantly up-to-date with what the most recent changes to the code are, allowing for the writing of programs to be fast, clean, and efficient.
2. A commit is an indication to git that an edit has been made to the file. Commit is equivalent to saving the file, so that when the code changes are later reviewed, the user can refer to all commits to know exactly what was modified, when, and with what message.
3. The commit message should be between 50 - 72 characters long, written in the imperative, present tense. An example would be "Add text" which "tells someone what applying the commit will do" (365git.tumblr.com) as opposed to what you did (past tense).
4. HEAD^ is the last commit you were on. To use the current commit, you'd use HEAD with no carrot.
5. First you make a branch from the master to work on. Within that branch, you access the file you want to edit and proceed to that file using 'subl .' You make the change, then check the git status in Terminal to track the change. When you're ready to stage the change (step before committing), you type 'git add .' which will stage the file. Type git status to confirm that file has been staged, then git commit -m "commit message" which indicate that a file has been changed and with the number of insertions. Check git status again to see what else needs to be committed or if working directory is clean.
6. Cheat sheet
- git checkout -b "branch_name" - creates new branch from master
- git status - check what files are untracked
- git add . - stage file for commit
- git commit -m "commit message" - commit file to be tracked
7. A pull request is made when a change has been made to a file and it needs to be reviewed or compared to the master. To create one, after pushing the branch to origin (github) from Terminal, you click on 'Pull Requests,' then you make sure your own repo's master is being compared to and merged with the branch you were working on. You then "create pull request", compare changes, then proceed to merge it with the master.
8. Pull requests are important when working with teams because it allows for all members of the team to review the code BEFORE anything is merged with the master.