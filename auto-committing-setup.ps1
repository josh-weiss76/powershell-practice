# declare variables

$GitHubUsername = 'josh-weiss76'
$PracticeRepoDir = 'C:\users\sgtko\source\repos\josh-weiss76\Azure-Chapter9-Studio1'
$CommitMessage = 'auto committed from auto-committing-setup.ps1'

# fork and clone this repo into the powershell-studio directory

#git clone "https://github.com/$GitHubUsername/powershell-practice" "$PracticeRepoDir\powershell-practice"

# copy the auto-committing-setup.ps1 file from current directory to the cloned repo directory

Copy-Item $PracticeRepoDir\auto-committing-setup.ps1 $PracticeRepoDir\powershell-practice\auto-committing-setup.ps1

# changing into the cloned directory

Set-Location $PracticeRepoDir\powershell-practice

# Add the new script file in the cloned directory to git staging

git init
git add .

#Commit the changes to the repo using the message variable ($CommitMessage)

git commit -m "$CommitMessage"

# Push the local git history back to your forked repo

git push --all


