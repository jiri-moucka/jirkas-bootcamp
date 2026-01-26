# Initialize git locally from my local machine

Step by step in git console to initialize git locally from my local machine:

```bash
KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/jirkas-bootcamp/bootcamp (main)
$ cd ../..

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing
$ ls
Aspire       Ciklum-assesment                        Documents       Microservices  Reviewme        TestingApp_1     nana-git-from-local
Blazor       Codewrinkles_MicroservicesAspireBlazor  Eshop           Mosh           ReviewmeOld     Ubuntu           nana-test-repo-todelete
BonusSheets  Docker                                  GitVersionTool  Onion          SeniorityExams  jirkas-bootcamp

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing
$ cd nana-git-from-local

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local
$ git status
fatal: not a git repository (or any of the parent directories): .git

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local
$ git init
Initialized empty Git repository in D:/Projects/Scholing/nana-git-from-local/.git/

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ ls -a
.  ..  .git

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ ls -lsa
total 4
0 drwxr-xr-x 1 KYIV+jimo 4096 0 Jan 16 15:44 .
4 drwxr-xr-x 1 KYIV+jimo 4096 0 Jan 16 15:43 ..
0 drwxr-xr-x 1 KYIV+jimo 4096 0 Jan 16 15:44 .git

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ touch readme.md

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ ls -a
.  ..  .git  readme.md

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        readme.md

nothing added to commit but untracked files present (use "git add" to track)
exit
KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git add .

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   readme.md


KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git commit
[master (root-commit) c5e2fac] hello
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 readme.md

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git status
On branch master
nothing to commit, working tree clean

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git push
fatal: No configured push destination.
Either specify the URL from the command-line or configure a remote repository using

    git remote add <name> <url>

and then push using the remote name

    git push <name>


KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git remote add origin https://gitlab.com/JiriMoucka1/test-node-app.git

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git push
fatal: The current branch master has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin master

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.


KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git push --set-upstream origin master
info: please complete authentication in your browser...
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 206 bytes | 206.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
remote: 
remote: To create a merge request for master, visit:
remote:   https://gitlab.com/JiriMoucka1/test-node-app/-/merge_requests/new?merge_request%5Bsource_branch%5D=master
remote: 
To https://gitlab.com/JiriMoucka1/test-node-app.git
 * [new branch]      master -> master
branch 'master' set up to track 'origin/master'.

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ git push --set-upstream origin master
branch 'master' set up to track 'origin/master'.
Everything up-to-date

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ ls -a
.  ..  .git  readme.md

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local (master)
$ rm -rf .git

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local
$ ls -lsa
total 4
0 drwxr-xr-x 1 KYIV+jimo 4096 0 Jan 16 15:55 .
4 drwxr-xr-x 1 KYIV+jimo 4096 0 Jan 16 15:43 ..
0 -rw-r--r-- 1 KYIV+jimo 4096 0 Jan 16 15:46 readme.md

KYIV+jimo@LT-924028 MINGW64 /d/Projects/Scholing/nana-git-from-local
$ 
```
