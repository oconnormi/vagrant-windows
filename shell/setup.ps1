chocolatey feature enable -n=allowGlobalConfirmation
choco install jdk8 --force
choco install maven
choco install git
choco install intellijidea-community
choco install 7zip

if (!(Test-Path /Users/vagrant/.m2)) {
 mkdir C:\Users\vagrant\.m2
}
if (!(Test-Path /Users/vagrant/.ssh)) {
 mkdir C:\Users\vagrant\.ssh
}

# Copy maven settings
cp C:\shares\.m2\settings*.xml C:\Users\vagrant\.m2\
# Copy ssh keys
cp C:\shares\.ssh\* C:\Users\vagrant\.ssh\

# Removed due to profile not working correctly
# Add alias scripts to profile
#Add-Content $profile '. C:\vagrant\profile\mvn_alias.ps1'
#Add-Content $profile '. C:\vagrant\profile\git_alias.ps1'
