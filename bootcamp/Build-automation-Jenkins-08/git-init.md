# how to create repostiry in GitLab

1. create an empty project in git lab with now initialization of readme.md file
    -> it create an project with no repository
2. initialized repository from local machine.
    - create a new project
    - add some file

## git command to initialized the repository in terminal
1. `cd <prject path>`
2. `git status` - return fatal: not a git repository (or any of the parent directories)
3. `git init` - return Initialized empty Git repository in <path to project>
4. `git remote add origin <url>` - goto to the project side and find the url (SEction "Configrue the git repository")
    - example: `git remote add origin git@gitlab.com:nana-jirka/jenkins-shared-library.git`
5. `git commit -m "Initial commit`
6. `git push -u origin master`


