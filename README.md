Step 1: Created Ubuntu 22.04 VM ✅  

Step 2: Updated system packages  

Step 3: Created non-root sudo user (devadmin)  

Step 4: Configured SSH key authentication  
- Generated ed25519 key pair  
- Added public key to server  
- Disabled password authentication  
- Disabled root login
  
Step 5: Configured UFW firewall  
- Allowed SSH (port 22)  
- Enabled firewall  
- Verified active status
  
Step 6: Configured Fail2Ban
- Installed fail2ban
- Created jail.local
- Enabled SSH protection
- Configured max retries and ban time
   
Step 7: Enabled automatic security updates
- Installed unattended-upgrades
- Enabled automatic security patching
- Verified service is running

Step 8: Server configuration
- Set timezone to Asia/Kolkata
- Updated hostname to prod-server

Step 9: Service and log management
- Used systemctl to manage services
- Used journalctl to view logs
- Explored /var/log directory
