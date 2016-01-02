# Reflections on tracking changes

## How does tracking and adding changes make developers' lives easier?

Version control allows developers to keep meticulous detail on what, when, and by whom their code was changed. Tracking these changes is important as it makes large, multi-team development projects possible by providing a history of all code changes and allowing the team to revert to previous versions of the code if necessary. Adding changes using the git method is an amazing way to allow a team of developers to work on the same code simultaneously. Without tracking and adding changes, development changes would not be possible on multiple person teams or be completed within the expected time frame.

Even as an individual developer, it is still incredibly useful to be able to track and add changes within git. You can see the history of your code and revert to previous versions at any time.

## What is a commit?

A commit is a great deal like saving a document in a word processor, if each save gave you a detailed history of all previous saved documents, a decription of what was changed, and the ability to revert to previous documents. A commit is basically a checkpoint that you can view or revert back to at any time.

## What are the best practices for commit messages?

An ideal git practitioner would include commit messages with both a header and a body. The header should be capitalized and contain a brief overview of changes made to the code. The body should be short and to the point. Both the header and body should be wrapped to around 72 characters. The commit message should also be addressed in the imperative verb form. This form is consistant with git commands and maintains consistency throughout your project.

## What does the HEAD^ argument mean?

HEAD is the commit that you are currently working on, while HEAD^ refers to the last commit. Calling on HEAD^ will allow you to revert to a previous commit. You can revert to any commit in your history by calling HEAD~3, HEAD~4, etc. If you are unsure which number commit you are looking for, try "git log" to see all previous commits.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of a git change are the Working Directory, Staging Area, and the .git directory (aka the Repository).

The Working Directory is where you initially create changes. If you were to commit in this stage, any changes in the Working Diretory would not be carried in to this commit.

The Staging Area is where you prepare changes to be committed. These changes are referred to as the "index". Any changes in this area will carry over to the git directory when committed.

Finally, the git directory, or the Repository, is where files are permanently stored after a commit. You can fork and clone files from the Repository, and start the process all over!

See the following image for more details: https://git-scm.com/book/en/v2/book/01-introduction/images/areas.png

## Write a handy cheatsheet of the commands you need to commit your changes?

0. git status <- Always start by checking your git status!

1. git checkout -b branch-name <- Create a new branch to make changes
2. Complete your work, use the command subl . to edit files in Sublime
3. git add . <- add all changes to the new git

Reminder - check your status again!! (see #0)

4. git commit -m "commit message" <- commits changes, includes a detailed message of what was changed
5. git push origin branch_name <- sends commit to a pull request

## What is a pull request and how do you create and merge one?

A pull request is a request to pull your work in to the master code. After completing work on a project, you create a pull request by first committing your work (hopefully saved on an individual branch) with a well worded message, then pushing the branch using "git push origin branch-name".

This request will be sent in for validation. The person checking your work will review changes, ensure it integrates with the master code, and then either approve or reject your pull request. In order to merge a pull request, go to GitHub, select "Compare and Pull Request", then view the pull request on your account. You can then press "Create Pull Request" to send the request to your teammate. Your teammate can then see the pull request, along with a comparison of changes to the previous commit, and either confirm or cancel the merge. Hopefully your code is great, and they confirm!

Don't forget to delete branches on your GitHub account and locally as well once you are certain the work is complete! "git branch -d branch-name" is the command needed to delete a branch in your terminal.

## Why are pull requests preferred when working with teams?

Image how big projects become with multiple developers all working on the same code. Now, imagine if different team members could all add to the master code at anytime without validation from their teammates. It would be absolute chaos! This is why pull requests are preferred when working with teams. Pull requests are an efficient and accurate way to ensure all changes made to the code are reviewed and accepted by the team. With this method, there is some reassurance that everyone's code will work in harmony.