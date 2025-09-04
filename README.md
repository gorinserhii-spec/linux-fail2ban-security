# 🔐 Linux Fail2ban Security Project

![Bash](https://img.shields.io/badge/language-bash-green)
![Linux](https://img.shields.io/badge/platform-linux-blue)
![Fail2ban](https://img.shields.io/badge/tool-fail2ban-orange)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

## 📌 Description
This project demonstrates **Linux server security automation** with **Fail2ban** and **Bash scripting**.  
It configures SSH protection and generates an automatic attack report from logs.

## 🎯 Features
- 🚫 Automatic blocking of brute-force SSH attacks with Fail2ban.  
- 📑 Log parsing and attack statistics (failed SSH login attempts).  
- 📊 Markdown report generation with top attacking IP addresses.  

## 🛠 Requirements
- Linux (tested on Ubuntu 24.04.2 LTS)  
- Fail2ban  
- Bash shell  

## 🚀 Installation & Usage
```bash
# 1. Install Fail2ban
sudo apt update && sudo apt install fail2ban -y

# 2. Copy Fail2ban config
sudo cp jail.local /etc/fail2ban/jail.local
sudo systemctl restart fail2ban

# 3. Run log analyzer
chmod +x analyze_logs.sh
./analyze_logs.sh
```

## 📊 Example Report
See [`report.md`](./report.md) for a sample output.  
When executed on a real server, the report will include **real IP addresses** and statistics.

## 📷 Screenshots
 - SSH Attack Report: screenshots/screen.png

## 📜 License
This project is licensed under the [MIT License](./LICENSE).

=================================================
# Author: Serhii Gorin 
# Date: 04.09.2025
