# Troubleshooting Playbook

## User Cannot Log In
- Check if account locked (Event ID 4740)
- Check password reset
- Verify DNS configuration
- Confirm computer trust relationship

## GPO Not Applying
- Run gpupdate /force
- Run gpresult /r
- Verify OU placement
- Check SYSVOL access

## Access Denied to Share
- Verify group membership
- Check share permissions
- Check NTFS permissions
- Logoff/logon to refresh token

## DNS / Domain Join Failure
- Confirm client DNS = 10.10.20.10
- Flush DNS cache
- Restart Netlogon and DNS services
