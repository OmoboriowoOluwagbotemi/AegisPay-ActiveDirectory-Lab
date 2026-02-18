# IP & DNS Plan

## Network Range
10.10.20.0/24

## Domain Controller
- Hostname: AP-HQ-DC01
- IP Address: 10.10.20.10
- DNS: 10.10.20.10

## Windows 11 Client
- Hostname: AP-HQ-W11-01
- IP Address: 10.10.20.50
- DNS: 10.10.20.10

## DNS Validation Commands
- nslookup corp.aegispay.local
- nslookup -type=SRV _ldap._tcp.dc._msdcs.corp.aegispay.local
