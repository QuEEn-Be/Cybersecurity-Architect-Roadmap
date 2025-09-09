<#
.SYNOPSIS
    Create a baseline Conditional Access policy (template).
#>

Connect-MgGraph -Scopes "Policy.ReadWrite.ConditionalAccess,Directory.ReadWrite.All"
$policy = @{
    displayName = "Baseline - Require MFA for Admins"
    state = "enabledForReportingButNotEnforced"
    conditions = @{
        users = @{
            includeRoles = @("62e90394-69f5-4237-9190-012177145e10") # Global Administrator
        }
    }
    grantControls = @{
        operator = "AND"
        builtInControls = @("mfa")
    }
}
# NOTE: Use Microsoft Graph SDK objects to create policy if required.
Write-Host "Template only. Replace with proper Graph SDK calls to create CA policy."
