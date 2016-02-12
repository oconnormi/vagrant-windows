
# Setup maven
if($env:M2_HOME){
    # Fast builds with no tests, but multithreading
    function maven-quick-build{
            $cmd = "$env:M2_HOME\bin\mvn.cmd clean install '-D-Dmaven.repo.local=C:\shares\.m2\repository' '-T 2C' '-Dfindbugs.skip=true' '-DskipTests=true' '-Dpmd.skip=true' '-Djacoco.skip=true' '-DskipTestScope=true' '-DskipProvidedScope=true' '-DskipRuntimeScope=true' '-P!documentation' $args"
            Invoke-Expression($cmd)
    }
    function mvn-cmd{
            $cmd = "$env:M2_HOME\bin\mvn.cmd '-Dmaven.repo.local=C:\shares\.m2\repository' $args"
            Invoke-Expression($cmd)
    }
}

Set-Alias -Name mvn -Value mvn-command
Set-Alias -Name mqb -Value maven-quick-build
