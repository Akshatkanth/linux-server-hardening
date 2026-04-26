# Linux Server Hardening & Deployment

## Overview

Configured and secured an Ubuntu server on Google Cloud and automated setup using Ansible. Deployed a static website using Nginx and Docker.

---

## Features

### Server Setup & Security

* Non-root sudo user
* SSH key authentication (password login disabled)
* UFW firewall (SSH, HTTP)
* Fail2Ban for brute-force protection
* Automatic security updates
* Timezone and hostname configuration

---

### Automation (Ansible)

* Automated server setup using playbooks
* Role-based structure:

  * `base` → system setup
  * `ssh` → key configuration
  * `nginx` → web server
  * `app` → deployment

---

### Deployment

* Nginx web server
* Static website deployment
* Docker containerization
* Nginx reverse proxy → Docker container

---

## Project Structure

```
linux-server-hardening/
├── ansible/
├── app/
└── README.md
```

---

## How to Run

```bash
ssh devadmin@<SERVER_IP>
ansible-playbook -i inventory.ini setup.yml --ask-become-pass
```

---

## Key Concepts

* Linux server hardening
* SSH authentication
* Firewall management
* Ansible automation
* Docker basics
* Reverse proxy setup

---

## References

https://roadmap.sh/projects/linux-server-setup
https://roadmap.sh/projects/configuration-management
