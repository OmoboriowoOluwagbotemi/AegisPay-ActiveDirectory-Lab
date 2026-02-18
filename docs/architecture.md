# Architecture & Design

## Business Scenario
AegisPay is a FinTech organization requiring centralized identity management, endpoint hardening, role-based file access control, and audit-ready logging.

## Domain Information
- Domain Name: corp.aegispay.local
- Forest Functional Level: Windows Server 2016+
- Domain Controller: AP-HQ-DC01
- Roles Installed:
  - Active Directory Domain Services (AD DS)
  - DNS Server
  - File Services

## Network Layout

### VirtualBox Adapters
- Adapter 1: NAT (Internet access)
- Adapter 2: Host-Only / Internal Network (Domain LAN)

### IP Plan
- DC: 10.10.20.10
- Client: 10.10.20.50
- Subnet: 255.255.255.0
- DNS: 10.10.20.10

## Logical Structure

corp.aegispay.local
└── OU=AegisPay
    ├── OU=Admins
    ├── OU=Servers
    ├── OU=Workstations
    ├── OU=Users
    └── OU=Groups

## Security Design Principles
- Least Privilege
- Role-Based Access Control (RBAC)
- Centralized Policy Enforcement (GPO)
- Audit Logging Enabled

---


## Logical Architecture Diagram

                Internet (NAT)
                      │
                ┌──────────────┐
                │  VirtualBox  │
                └──────┬───────┘
                       │
             Host-Only / Internal LAN
                       │
        ┌───────────────────────────────┐
        │  Domain: corp.aegispay.local  │
        └───────────────────────────────┘
                 │                │
        ┌───────────────┐   ┌───────────────┐
        │ AP-HQ-DC01    │   │ AP-HQ-W11-01  │
        │ AD DS + DNS   │   │ Domain Client │
        │ File Services │   │ GPO Applied   │
        └───────────────┘   └───────────────┘

