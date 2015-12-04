### How does tracking and adding changes make developers' lives easier?
The workflow and associated annotations help developers streamline efforts (solo or team). There is less wasted energy and a finished product is superior product.
### What is a commit?
A commit takes the snapshot in the directory previously added by “git add”, you run the command “git commit” to actually record your data and work.
### What are the best practices for commit messages?
Speak directly and speak in the imperative form. Use a short 50 character or less summary, a more detailed summary explaining paragraph. Bullet points are okay to use after the paragraph.
### What does the HEAD^ argument mean?
If you commit some files and decide that you actually want to change the files.
### What are the 3 stages of a git change and how do you move a file from one stage to the other?
“git add”, “git checkout”, and “git reset HEAD”. Once a file has been modified, it’s either ready to commit (“git add”) or discard changes (“git checkout”). Once you use “git add”, the modified file in the working directory will go from yellow to green, your file is ready to commit, unless you want to upstage with “git reset HEAD”.
### Write a handy cheatsheet of the commands you need to commit your changes?
1. git status
2. See your modified (yellow) file in working directory
3. git add <file>…”
4. git status
5. See your modified file turn to green in the working directory
6. git commit -m “[short message]”
7. git status
8. You see a clean and empty working directory

### What is a pull request and how do you create and merge one?
A pull request is a way to merge code from a different branch into the master branch. To create one run the command “git push origin [working-branch-name]”, the branch is pushed to the github remote repo. Go to your Github account, and look for the “Compare & Pull request” tab, see the changes between the master and branch, then once you’re ready, click the “Create pull request” button. Once the branch is ready to be merged back to the master, press the “merge pull request” button, then “Confirm merge” and you’re done. Make sure to delete the old branch to come the remote repo clean.
Why are pull requests preferred when working with teams?
So peer reviewers (team members) can easily see the changes you made and compare between the master and branch.
