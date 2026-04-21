# 🚀 Linux Server Hardening & Deployment (Ansible)

## 📌 Overview

This project demonstrates how to provision, secure, and automate the configuration of a production-ready Ubuntu server on Google Cloud using Ansible.

It covers end-to-end server setup, security hardening, and deployment of a static web application using infrastructure-as-code principles.

---

## 🧱 Architecture

Local Machine (WSL)
→ Ansible (Control Node)
→ SSH
→ Google Cloud Ubuntu Server (Managed Node)

---

## 🔐 Features

### 🛡️ Server Hardening

* Created non-root sudo user
* Disabled password-based SSH authentication
* Disabled root login over SSH
* Configured UFW firewall (SSH + HTTP)
* Installed and configured Fail2Ban
* Enabled automatic security updates
* Set timezone and hostname

---

### ⚙️ Automation (Ansible)

* Automated full server setup using Ansible playbooks
* Used structured roles:

  * `base` → system setup & packages
  * `ssh` → SSH key management
  * `nginx` → web server setup
  * `app` → application deployment
* Implemented idempotent configuration

---

### 🌐 Deployment

* Installed and configured Nginx
* Deployed a static HTML/CSS website
* Served application on public IP

---

## 📁 Project Structure

```
linux-server-hardening/
│
├── ansible/
│   ├── inventory.ini
│   ├── setup.yml
│   └── roles/
│       ├── base/
│       ├── ssh/
│       ├── nginx/
│       └── app/
│
├── app/
│   ├── index.html
│   └── style.css
│
└── README.md
```

---

## ▶️ How to Run

### 1. Connect to server

```bash
ssh devadmin@<SERVER_IP>
```

### 2. Run Ansible playbook

```bash
ansible-playbook -i inventory.ini setup.yml --ask-become-pass
```

---

## 🧠 Key Concepts Learned

* SSH key-based authentication
* Linux server hardening practices
* Firewall configuration (UFW)
* Brute-force protection using Fail2Ban
* Infrastructure as Code (IaC)
* Configuration management with Ansible
* Role-based automation structure

---

## 🎯 Outcome

Successfully built a secure and automated Linux server environment capable of deploying and serving web applications.

---

## 🔗 Reference

https://roadmap.sh/projects/linux-server-setup  
https://roadmap.sh/projects/configuration-management


