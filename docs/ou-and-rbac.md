# OU Structure & RBAC Model

## OU Structure

AegisPay
├── Admins
├── Servers
├── Workstations
│   ├── HQ
│   ├── Branch
│   └── Kiosk-Secure
├── Users
│   ├── HQ
│   │   ├── Finance
│   │   ├── HR
│   │   └── IT
└── Groups
    └── FileAccess

## Group Strategy (AGDLP Model)

### Global Groups (Role-Based)
- GG_HQ_Finance_Staff
- GG_HQ_HR_Staff
- GG_HQ_IT_Staff

### Domain Local Groups (Resource-Based)
- DL_FS_FIN_RW
- DL_FS_HR_RW
- DL_FS_IT_RW

## Access Flow
User → Global Group → Domain Local Group → Share/NTFS Permission

## Principle Applied
No direct user permissions assigned to folders.
All access controlled via security groups.
