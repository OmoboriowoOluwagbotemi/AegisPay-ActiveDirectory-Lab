Import-Module ActiveDirectory

$users = Import-Csv ".\new_users.csv"

foreach ($user in $users) {

    Write-Host "Creating user $($user.SamAccountName)..." -ForegroundColor Cyan

    New-ADUser `
        -Name "$($user.FirstName) $($user.LastName)" `
        -GivenName $user.FirstName `
        -Surname $user.LastName `
        -SamAccountName $user.SamAccountName `
        -UserPrincipalName "$($user.SamAccountName)@corp.aegispay.local" `
        -Path $user.OU `
        -AccountPassword (ConvertTo-SecureString "TempP@ssw0rd!" -AsPlainText -Force) `
        -Enabled $true `
        -ChangePasswordAtLogon $true

    # Auto-assign department group
    switch ($user.Department) {

        "Finance" {
            Add-ADGroupMember -Identity "GG_HQ_Finance_Staff" -Members $user.SamAccountName
            Write-Host "Added to Finance group" -ForegroundColor Green
        }

        "HR" {
            Add-ADGroupMember -Identity "GG_HQ_HR_Staff" -Members $user.SamAccountName
            Write-Host "Added to HR group" -ForegroundColor Green
        }

        "IT" {
            Add-ADGroupMember -Identity "GG_HQ_IT_Staff" -Members $user.SamAccountName
            Write-Host "Added to IT group" -ForegroundColor Green
        }

        Default {
            Write-Host "No department match found for $($user.SamAccountName)" -ForegroundColor Yellow
        }
    }

    Write-Host "---------------------------------------"
}

Write-Host "Bulk user creation complete." -ForegroundColor Cyan
