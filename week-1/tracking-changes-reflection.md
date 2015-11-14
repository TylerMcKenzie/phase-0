#How does tracking and adding changes make developers' lives easier?

### Tracking and adding changes makes a developer's life easier by allowing him/her to be able to view and edit their code without having to start all over again, especially if a bug is encountered. 

#What is a commit?

### A commit is the term used when files or code is "committed" to the master branch to be merged

#What are the best practices for commit messages?

### The best practices for commit messages are; writing in the imperative present tense, includes motavation for the change and contrasts its use with what was before it 

#What does the HEAD^ argument mean?

### The HEAD^ argument means the last commit made

#What are the 3 stages of a git change and how do you move a file from one stage to the other?

### The 3 stages of a git change are creation of a branch, the committing of that information, and pushing the changes onto the master branch. You can do this through a series of commands as follows;
git pull
(pull any updates and update your branch)
git checkout -b branch_name
(make your own branch to work in)
git add
(add your files to be committed)
git commit -m "commit message"
(send your files to the master branch with a message of what changed)
git push origin branch_name
(update your repository files that you committed)
git checkout master
(return to the master branch)
git fetch origin master
(update your master branch)
git merge origin/master
(merge your files with the master branch)

#Write a handy cheatsheet of the commands you need to commit your changes?

### git pull
(pull any updates and update your branch)
git checkout -b branch_name
(make your own branch to work in)
git add
(add your files to be committed)
git commit -m "commit message"
(send your files to the master branch with a message of what changed)
git push origin branch_name
(update your repository files that you committed)
git checkout master
(return to the master branch)
git fetch origin master
(update your master branch)
git merge origin/master
(merge your files with the master branch)

#What is a pull request and how do you create and merge one?

### A pull request pulls the file you want to merge out. This can be located on your GitHub account. After createing a pull request choose to merge your files with the master branch. Confirm and viola! Pulled and Merged.

#Why are pull requests preferred when working with teams?

### Pull requests are preferred when working with teams because it allows the other members to review and choose whether or not the code will work or is necessary.