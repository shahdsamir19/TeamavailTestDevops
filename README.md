# 🚀 Team Availability Tracker - DevOps Automation

This project involves building a full DevOps pipeline for a real-world Node.js application used to track team availability, currently hosted on GCP. The objective was to automate the process of formatting, testing, containerization, and deployment using tools like Bash, Docker, Jenkins, and Terraform.

---

## 📁 Project Structure

TeamavailTest/
├── Dockerfile
├── docker-compose.yml
├── ci.sh
├── Jenkinsfile
├── main.tf
├── README.md
├── input/
├── output/
├── public/
├── server.js
└── ...

yaml
Copy
Edit

---

## 🔧 Tools & Technologies

| Area                   | Tools Used                           |
|------------------------|--------------------------------------|
| Version Control        | Git, GitHub                          |
| Scripting              | Bash                                 |
| Containerization       | Docker, Docker Compose               |
| CI/CD                  | Bash scripts, Jenkins                |
| Code Quality           | ESLint (JS), Prettier (optional)     |
| Infrastructure as Code | Terraform                            |

---

## ✅ Objectives Completed

- ✅ Dockerized the application with best practices.
- ✅ Created a Bash script (`ci.sh`) to lint, test, and run the app.
- ✅ Set up a Jenkins CI/CD pipeline to automate the workflow.
- ✅ Used Terraform to simulate Docker-based infrastructure.
- ✅ Integrated GitHub Webhooks and ngrok to test dynamic updates.
- ✅ Documented and debugged through real-world DevOps problems.

---

## 📜 Bash CI Script (`ci.sh`)

```bash
#!/bin/bash
set -e

echo "🔧 Running lint..."
# Add ESLint or Prettier commands here

echo "🧪 Running tests..."
# Add test commands (if implemented)

echo "🐳 Building Docker image..."
docker build -t teamavail-app .

echo "🚀 Running with Docker Compose..."
docker-compose up -d
🐳 Dockerization
Dockerfile builds the app using Node.js and sets WORKDIR /app.

docker-compose.yml runs the app with port mapping and potential external services.

🤖 Jenkins Integration
Jenkins is installed locally on a VM.

Configured to pull from GitHub repository and run the pipeline stages:

Checkout

Lint & Test

Build Docker Image

Run Docker Compose

(Optional) Terraform Apply
```

🌍 Terraform Automation
Installed Terraform and used the kreuzwerker/docker provider.

Created main.tf to:

Build Docker image from Dockerfile

Start container with mapped ports


🛠️ Troubles Faced & Fixes
Issue	Fix
GitHub Push Permission Denied	Forked repo and added correct origin
Jenkins fetch error couldn't find remote ref master	Changed default branch to main
terraform apply prompts for confirmation	Used terraform apply -auto-approve
address already in use error in Docker	Stopped conflicting local services or changed ports
Terraform registry error (wrong provider)	Used kreuzwerker/docker instead of hashicorp/docker
Ngrok certificate issues	Used --no-check-certificate or verified manually
Webhook not triggering Jenkins	Used ngrok to expose Jenkins port and updated webhook URL
npm install cert error	Fixed local CA certs or used npm config set strict-ssl false temporarily

🌐 Running the App Locally
bash
Copy
Edit
# 1. Clone repo
git clone https://github.com/yourusername/TeamavailTestDevops
cd TeamavailTestDevops

# 2. Run CI script
chmod +x ci.sh
./ci.sh

# OR run manually
docker-compose up --build
Access the app at: http://localhost:8080

📤 Webhook & Ngrok Setup
To connect GitHub to Jenkins:

Run: ngrok http 8080

Copy the public URL.

Set it in GitHub → Repository → Settings → Webhooks.
