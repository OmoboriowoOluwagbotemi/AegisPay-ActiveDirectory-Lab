# Group Policy Baselines

## 1. Domain Account Security
- Minimum password length: 12
- Password history: 24
- Maximum age: 60 days
- Lockout threshold: 5 attempts
- Lockout duration: 15 minutes

## 2. Screen Lock Policy
- Screen saver enabled
- Timeout: 900 seconds
- Password required on resume

## 3. USB Restriction
- All removable storage classes: Deny all access

## 4. Microsoft Defender Baseline
- Real-time protection enabled
- Defender not disabled

## 5. Firewall Baseline
- Domain Profile: ON
- Inbound RDP blocked (example rule created)

## 6. Audit Policy
- Logon events (Success + Failure)
- Account management events
- Object access auditing
