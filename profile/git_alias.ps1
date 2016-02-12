
function git-status{
        $cmd = "git status $args"
        Invoke-Expression($cmd)
}
function git-commit{
        $cmd = "git commit $args"
        Invoke-Expression($cmd)
}
function git-add{
        $cmd = "git add $args"
        Invoke-Expression($cmd)
}
function git-branch{
        $cmd = "git branch $args"
        Invoke-Expression($cmd)
}
function git-diff{
        $cmd = "git diff $args"
        Invoke-Expression($cmd)
}
function git-checkout{
        $cmd = "git checkout $args"
        Invoke-Expression($cmd)
}

Set-Alias -Name gs -Value git-status
# gc and gcm are existing aliases in powershell...
#Set-Alias -Name gc -Value git-commit
Set-Alias -Name ga -Value git-add
Set-Alias -Name gb -Value git-branch
Set-Alias -Name gd -Value git-diff
Set-Alias -Name gco -Value git-checkout
