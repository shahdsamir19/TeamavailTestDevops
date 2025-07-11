# 🛠️ Jenkins + GitHub DevOps Setup Guide

This file documents all key commands and steps used to:

- Install Jenkins
- Configure and trigger builds using GitHub webhooks
- Run a Node.js application in Docker
- Troubleshoot webhook and network issues

---

## ✅ 1. System & Package Setup

```bash
sudo apt update
sudo apt install -y openjdk-11-jdk wget curl unzip git
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
git clone https://github.com/your-username/TeamavailTestDevops.git
cd TeamavailTestDevops
npm install
docker build -t teamavail-app .
docker-compose up
git init
git remote add origin https://github.com/your-username/TeamavailTestDevops.git
git add .
git commit -m "Initial DevOps setup"
git push -u origin main
git remote remove origin
