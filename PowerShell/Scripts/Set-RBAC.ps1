<#
.SYNOPSIS
    Assign least-privilege RBAC to a principal.
#>

param(
    [Parameter(Mandatory)][string]$Scope = "/subscriptions/<SUB-ID>/resourceGroups/<RG-NAME>",
    [Parameter(Mandatory)][string]$RoleName = "Reader",
    [Parameter(Mandatory)][string]$ObjectId = "<AAD-OBJECT-ID>"
)

Connect-AzAccount -Identity:$false | Out-Null
$roleDef = Get-AzRoleDefinition -Name $RoleName
New-AzRoleAssignment -ObjectId $ObjectId -RoleDefinitionName $roleDef.Name -Scope $Scope
Write-Host "Assigned $RoleName to $ObjectId at $Scope"
