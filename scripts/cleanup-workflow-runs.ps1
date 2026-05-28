[CmdletBinding()]
param(
    [Parameter()]
    [string]$Repository = $env:GITHUB_REPOSITORY,

    [Parameter()]
    [string]$WorkflowPath = '.github/workflows/deploy-pages.yml',

    [Parameter()]
    [int]$Keep = 10,

    [Parameter()]
    [string]$Token = $env:GITHUB_TOKEN
)

$ErrorActionPreference = 'Stop'

if ([string]::IsNullOrWhiteSpace($Repository)) {
    throw 'Repository was not provided. Set GITHUB_REPOSITORY or pass -Repository owner/repo.'
}

if ([string]::IsNullOrWhiteSpace($Token)) {
    throw 'GitHub token was not provided. Set GITHUB_TOKEN or pass -Token.'
}

if ($Keep -lt 0) {
    throw '-Keep must be zero or greater.'
}

$headers = @{
    Authorization = "Bearer $Token"
    Accept = 'application/vnd.github+json'
    'X-GitHub-Api-Version' = '2022-11-28'
}

function Invoke-GitHubApi {
    param(
        [Parameter(Mandatory = $true)]
        [ValidateSet('GET', 'DELETE')]
        [string]$Method,

        [Parameter(Mandatory = $true)]
        [string]$Uri
    )

    Write-Host "$Method $Uri"
    Invoke-RestMethod -Method $Method -Headers $headers -Uri $Uri
}

$encodedWorkflowPath = [System.Uri]::EscapeDataString($WorkflowPath)
$perPage = 100
$page = 1
$runs = @()

do {
    $uri = "https://api.github.com/repos/$Repository/actions/workflows/$encodedWorkflowPath/runs?per_page=$perPage&page=$page"
    $response = Invoke-GitHubApi -Method GET -Uri $uri
    $pageRuns = @($response.workflow_runs)

    if ($pageRuns.Count -eq 0) {
        break
    }

    $runs += $pageRuns
    $page += 1
} while ($pageRuns.Count -eq $perPage)

$sortedRuns = $runs | Sort-Object -Property created_at -Descending
$oldRuns = @($sortedRuns | Select-Object -Skip $Keep)

Write-Host "Found $($sortedRuns.Count) runs for $WorkflowPath in $Repository. Keeping $Keep and deleting $($oldRuns.Count)."

foreach ($run in $oldRuns) {
    $deleteUri = "https://api.github.com/repos/$Repository/actions/runs/$($run.id)"
    Invoke-GitHubApi -Method DELETE -Uri $deleteUri | Out-Null
    Write-Host "Deleted run $($run.id) created $($run.created_at) status=$($run.status) conclusion=$($run.conclusion)"
}