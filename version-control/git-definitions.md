#This has been changed

# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	-Version control allows for the construction of a timeline documenting different versions and save points throughout a project. This is useful because it allows for programmers to easily return to previous versions of a document and fix issues that may have arisen. Basically, version control is a good method for clearly cataloguing progress on any given project.
* What is a branch and why would you use one?
	-Branches are essentially duplicates of a git repository. Branches are used to make edits to parts of a project without altering anything in the master branch. This means that any changes can be reviewed before being merged back into the master, which provides a safety against making mistakes that could impact the main program in a major way. 
* What is a commit? What makes a good commit message?
	-A commit creates a new save point on the version control timeline. Commit messages should be concise, but specific as to what was changed from the previous save point. 
* What is a merge conflict?
	-From what I've gathered, merge conflicts occur when new commits have occured in both branches trying to be merged, since they were split. In such a situation, git doesn't know which changes to apply to the new merged copy, so it returns an error. 