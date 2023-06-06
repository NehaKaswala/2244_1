### git commands 
git status--> shows the status of git repository
git push---> push the code to remote
git pull--> downloads the code from remote to local
git checkout --> creates new branch in repo
git add . --> use to upload all files/folders to repo
git commit --> to commit the changes made in local to remote
git clone --> clone or download repo from remote to local
git branch --> list all the branch
git merge ---> to merge new branch to main or any other branch
git fetch ---> fetch data from some branch  
## how to push a change to github
git checkout master
git pull ##to pull from remote and update local master branch
git checkout -b <branch-name> ## to create a new branch
git status ## to show branch is created
make changes as you needed
git add. ## to stage all changes (the dor includes all the files)
git status ## to make sure files are staged
git commit -m "any commit message you like" ## to commit message
git push -u origin <branch-name> ### to puch branch first time to origin
or git push ## to push any changes onward (after first push)