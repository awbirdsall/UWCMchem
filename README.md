Collaborative project implementing different changes to atmospheric
oxidation chemistry from [MCM](http://mcm.leeds.ac.uk/MCM/), for Harvard
course ENG-SCI 263, Fall 2015.

Uses [UWCM Box Model](https://sites.google.com/site/wolfegm/models).

Different individual branches of the repository should reflect different
pathways of the chemistry being changed.

### Basic instructions:

(1) Create a Github account and set up Git on your computer (github.com, https://help.github.com/articles/set-up-git/)

(2) Replace the existing UWCMchem folder you have with the version-controlled repository hosted on Github:
- remove the existing UWCMchem folder you are using (or the folder move to a backup location)
- from a command line that lets you use git commands (Git Bash for Windows), navigate to the UWCMv2 folder where UWCMchem should be located, and clone the repository from github using the command:

`git clone https://github.com/awbirdsall/UWCMchem.git`

You now have a local version of the UWCMchem repository!

(3) Working with git. There is some helpful information in [Sections 2.1-2.5 and 3.1-3.2 of the official documentation](http://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository), as well as via online search, but a few simple instructions:

Create a new branch and change it to your current branch:
`git checkout -b branchname`

After editing a file, see what changes you have made:
`git status`

Tell git what files you want to stage for a commit:
`git add filename`

Perform a commit:
`git commit`

Upload your commits to the shared repository on github:
`git push`

Retrieve changes that have been made from the shared repository on github:
`git pull`

Change to a branch that has already been created:
`git checkout otherbranchname`
