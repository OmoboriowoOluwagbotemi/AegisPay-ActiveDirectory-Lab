param(
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Import-Module ActiveDirectory

Set-ADAccountPassword -Identity $Username `
-Reset `
-NewPassword (ConvertTo-SecureString "TempP@ssw0rd!" -AsPlainText -Force)

Set-ADUser $Username -ChangePasswordAtLogon $true

Write-Output "Password reset successfully for $Username"
