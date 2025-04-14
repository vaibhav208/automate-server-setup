# Automation & Scripting

## ✅ Objective
Automate the setup process of a Linux server using a Bash script. This script handles updates, essential software installation, user management, and firewall configuration.

---

## 🔧 Script Overview

The script `setup_server.sh` performs the following:

1. System update and upgrade
2. Installs NGINX and starts the service
3. Adds a new sudo user (user input)
4. Installs essential tools (`git`, `curl`, `ufw`)
5. Configures the firewall to allow SSH and HTTP traffic

---

## ▶️ Usage

Make the script executable and run it:

```bash
chmod +x setup_server.sh
./setup_server.sh

