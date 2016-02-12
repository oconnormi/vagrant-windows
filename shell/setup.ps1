chocolatey feature enable -n=allowGlobalConfirmation
choco install jdk8 --force
choco install maven
choco install git
choco install intellijidea-community

if (!(Test-Path /Users/IEUser/.m2)) {
 mkdir C:\Users\IEUser\.m2
}
if (!(Test-Path /Users/IEUser/.ssh)) {
 mkdir C:\Users\IEUser\.ssh
}

# Copy maven settings
cp C:\shares\.m2\settings*.xml C:\Users\IEUser\.m2\
# Copy ssh keys
cp C:\shares\.ssh\* C:\Users\IEUser\.ssh\

# Add alias scripts to profile
Add-Content $profile '. C:\vagrant\profile\mvn_alias.ps1'
Add-Content $profile '. C:\vagrant\profile\git_alias.ps1'
