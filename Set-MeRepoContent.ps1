
function Set-RepoContent {
    param (
        [string]$BranchName
    )
    Write-Host $BranchName
    git checkout -b $BranchName
    Add-Content $BranchName -Path .\README.md
    gaa
    gcmm "Add $BranchName content"
    gpush
}

Set-RepoContent 'bug/123-ouch'
Set-RepoContent 'topic/456-query-optimization'
Set-RepoContent 'bug/555-fix-release-issues'
Set-RepoContent 'user/merpenbeck/sandbox'
Set-RepoContent 'user/merpenbeck/poc-for-spike'
Set-RepoContent 'user/trex/jurassic-park-project'
Set-RepoContent 'bug/645-insecure-password-reset'
Set-RepoContent 'feature/646-new-checkbox'
Set-RepoContent 'feature/647-update-radio-button'
Set-RepoContent 'bug/689-pen-test-finding'
Set-RepoContent 'hotfix/234-yikes-fix-it'
Set-RepoContent 'hotfix/235-another-fix'