git pull [origin/<branch-name>]
git pull origin/master
git push [origin/<branch-name>]
git push origin/super-feature

git branch
git branch <branch-name>
git checkout <branch-name>

git add <folder> || <file>
git add .
git commit -m <message>
git commit -m "Change background image"

git diff [<file> || <folder>]
git diff --cached
git status

git stash
git stash pop

git clone <repo-name>
git fork <repo-name>

git reset <commit>
git reset HEAD
git reset HEAD~2
git reset HEAD --hard
git checkout -- <commit> <file>
git checkout HEAD~2 foo.js

git log
git log --oneline --decorate --graph
git show <commit>

git rebase
git merge

git tag -a v0.1.3 -m "Release to beta-users"
git push origin <tag-name>
git tag
