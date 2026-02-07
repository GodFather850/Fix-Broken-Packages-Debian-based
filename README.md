# Fix Broken Packages Debian based

# 🛠️ GodFather System Fixer  
### 🔥 Fix Broken Linux Packages Like a Boss

![Linux](https://img.shields.io/badge/Linux-Ubuntu%20%7C%20Debian-orange?style=for-the-badge&logo=linux)
![Bash](https://img.shields.io/badge/Bash-Script-green?style=for-the-badge&logo=gnu-bash)
![Status](https://img.shields.io/badge/Status-Stable-brightgreen?style=for-the-badge)
![Made With Love](https://img.shields.io/badge/Made%20With-%E2%9D%A4-red?style=for-the-badge)

<p align="center">
  <img src="https://media.giphy.com/media/13HgwGsXF0aiGY/giphy.gif" width="420"/>
</p>

---

## 😵 What Problem Does This Solve?

If you are facing errors like:

- ❌ Broken packages  
- ❌ `dpkg was interrupted`
- ❌ Half-installed packages  
- ❌ Unconfigured packages  
- ❌ `apt install` not working  

This script is your **last boss fight weapon** ⚔️

---

## 🚀 What Does This Script Do?

This script automatically:

✅ Cleans apt cache  
✅ Updates package lists  
✅ Fixes broken dependencies  
✅ Reconfigures `dpkg`  
✅ Upgrades all installed packages  
✅ Reinstalls `dpkg` if needed  
✅ Reinstalls **all installed packages**  
✅ Removes crash reports  
✅ Reboots the system if everything succeeds 🔄  

---

## 📜 Script
```bash
#!/bin/bash
# Created By GodFather
# Clean & Update your System for get broken packages

sudo apt clean
sudo apt update

# Reconfigure your PKGS
sudo apt --fix-broken install
sudo dpkg --configure -a

# is it fixed
sudo apt upgrade -y

# Otherwise, if it was not fixed:
sudo apt install --reinstall dpkg
sudo apt install --reinstall $(dpkg -l | awk '/^ii/ {print $2}')
sudo rm -rf /var/crash/*

# reboot after fix:
if [[ "$?" -eq 0 ]]; then
    reboot
fi
```

---

# 🧑‍💻 How To Use
```bash
chmod +x fix-system.sh
./fix-system.sh
```

---

⚠️ WARNING (Read This!)

🚨 This script:

**.** Reinstalls ALL installed packages
 
**.** Automatically reboots the system

⚠️ Do NOT run on:

**.** Production servers

**.** Critical environments

🧪 Always test on a VM or non-critical system first.

---

🐧 Supported Systems

Ubuntu ✅

Debian ✅

Kali Linux ✅

---

# 💀 When Should You Use This?

After interrupted package installations

After power loss during apt operations

When dpkg is broken

When nothing else works

---

👑 Author

GodFather
🖤 Linux | Bash | python Learner | Lua (MTA:sa) | SQL

⭐ If this script saved your system, give it a star!
---
<img src="https://media.giphy.com/media/l0MYt5jPR6QX5pnqM/giphy.gif" width="300"/> </p>

