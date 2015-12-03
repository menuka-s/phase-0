## 1.5 reflections
#### How does tracking and adding changes make developers' lives easier?
Tracking and adding changes can easily solve or eliminate confusion that can occur. When one developer or a team are working on a project for a while it can be really helpful to see when a feature was added or last edited. This adds a paper trail of documentation that can be looked back on if something is no longer working.

#### What is a commit?
Commits are like checkpoints. When you are working on some code you can save it as it is and documented what you edited or wrote. Then when you can come back later you can start working on it again and see what you last changed.

#### What are the best practices for commit messages?
Commit messages follow a general structure. The intial commit message is a short description. This is followed by a paragraph with a more detailed explanation, if needed. It is standard practice to use the imperative instead of the past tense. We should use blank lines to seperate paragraphs and we are allowed to use bullet points if needed.

#### What does the HEAD^ argument mean?
HEAD refers to the current commit you are on. HEAD^ is the last commit you worked on.

#### What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of files that can be seen with git status: untracked files, modified files that aren't ready to be commited, and files ready to be committed. Git allows untracked files to be tracked with 'git add'. These files, when ready to be committed need the command 'git commit'.

#### Write a handy cheatsheet of the commands you need to commit your changes?
'git checkout -b new_feature_branch' = new branch where you can write your new code

'git checkout master'

'git add fileName'

'git commit -m "commit message"'

'git reset --soft HEAD^' = allows you to redo the last commit you worked on

#### What is a pull request and how do you create and merge one?
A pull request informs others that you have pushed some new changes that can be reviewed before added to the master code.

Once the code is committed, it can be pushed out to GitHub using 'git push origin new_feature_branch'. On GitHub the person who manages the repo will see a "Compare & pull request" button where they can compare the new changes and accept them to be added or request more work.

#### Why are pull requests preferred when working with teams?
Pull requests allow teams a natuaral way to review the code that was written by each developer. The pull request interface on GitHub allows easy comparison of the changes vs the original code. Once the new code is reviewed and looks good, it can easily be merged to the master branch.