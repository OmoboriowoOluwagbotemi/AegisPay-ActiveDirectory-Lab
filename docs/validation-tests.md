# Validation & Testing Plan

| # | Test | Expected Result |
|---|------|----------------|
| 1 | DC Health (dcdiag) | No critical errors |
| 2 | DNS resolution | Domain resolves to 10.10.20.10 |
| 3 | Domain Join | Client joins successfully |
| 4 | Domain Login | User login works |
| 5 | Password Policy | Weak password rejected |
| 6 | Account Lockout | Lockout occurs after 5 attempts |
| 7 | Failed Logon Event | Event ID 4625 logged |
| 8 | Lockout Event | Event ID 4740 logged |
| 9 | HR Share Access | HR staff allowed |
| 10 | HR Share Denied | Finance denied access |
| 11 | GPO Applied | gpresult shows applied policies |
| 12 | Audit Enabled | auditpol confirms enabled categories |
| 13 | PowerShell Bulk Users | Users created successfully |
| 14 | Password Reset Script | Forced change at next logon |
| 15 | Service Health Report | CSV generated |
