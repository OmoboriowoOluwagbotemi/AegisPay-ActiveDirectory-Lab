# AegisPay FinTech – Enterprise Active Directory Lab

## Project Summary
Designed and implemented a secure Windows Server 2022 Active Directory environment simulating a FinTech HQ network with centralized identity management, GPO hardening, RBAC-based file access control, and audit logging.
This project follows Microsoft enterprise best practices including OU-based policy scoping, AGDLP group nesting, and separation of administrative accounts.

## Environment
- Hypervisor: VirtualBox
- Domain: corp.aegispay.local
- Domain Controller: AP-HQ-DC01 (10.10.20.10)
- Client: AP-HQ-W11-01 (10.10.20.50)
- DNS: Internal (10.10.20.10)

## Key Implementations
✔ AD DS + DNS Deployment  
✔ Enterprise OU Structure  
✔ RBAC (AGDLP model)  
✔ Group Policy Security Baselines  
✔ Secure SMB Shares (HR/Finance/IT)  
✔ Advanced Audit Policy  
✔ Event Log Investigation (4625 / 4740)  
✔ PowerShell Automation (bulk onboarding + password reset + service health)

## Security Controls Implemented
- 12-character minimum password policy
- Account lockout after 5 attempts
- USB storage restriction
- Defender enforced
- Firewall baseline applied
- Audit logging enabled for logon & account management

## Documentation
See `/docs` folder for:
- Architecture
- IP Plan
- GPO Baselines
- RBAC Model
- Validation Tests
- Troubleshooting Playbook

## Backup
Backup design plan documented but deferred due to lab disk constraints.

---

### Skills Demonstrated
Active Directory | DNS | Group Policy | RBAC | NTFS & Share Permissions | Windows Security Auditing | PowerShell Automation | Enterprise Documentation

---

## Security Focus

This lab was designed with a security-first approach:

- Tiered access model (Admin vs Standard accounts)
- No direct user ACL assignments (group-based control only)
- Account lockout enforcement
- Audit trail for authentication failures
- Endpoint hardening via GPO
- Controlled firewall configuration
- Defender baseline enforcement

