# Student Management System (AWS DevOps Lab)

A beginner-friendly web application built for AWS DevOps training. This project is optimized for deployment on EC2 and integration with AWS CI/CD tools.

## 🚀 Features
- **Frontend**: HTML5, CSS3 (Modern Glassmorphism), JavaScript (Fetch API)
- **Backend**: Node.js, Express.js
- **Database**: MySQL Ready (includes schema)
- **Responsive**: Works on mobile and desktop
- **DevOps Ready**: Includes health checks for AWS Load Balancers

## 📂 Project Structure
```text
app/
├── public/
│   ├── index.html   # Frontend logic & structure
│   └── style.css    # Modern UI styling
├── index.js         # Backend Express server
├── package.json     # Dependencies & Scripts
└── db.sql           # MySQL Schema (for RDS/Local)
```

## 🛠️ Local Setup Instructions

1. **Install Dependencies**:
   ```bash
   npm install
   ```

2. **Run the Application**:
   ```bash
   npm start
   ```
   Open [http://localhost:3000](http://localhost:3000) in your browser.

## ☁️ AWS Deployment Guide

### 1. EC2 Deployment
- Launch an EC2 Instance (Ubuntu/Amazon Linux).
- Install Node.js: `curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - && sudo apt-get install -y nodejs`.
- Clone this repo or upload files.
- Run `npm install` and `npm start`.

### 2. RDS (MySQL) Integration
- Create an AWS RDS MySQL instance.
- Run the code in `db.sql` in your RDS database.
- Update `index.js` or use `.env` to connect to your RDS endpoint.

### 3. CI/CD (CodePipeline)
- **CodeBuild**: Use `buildspec.yml` (to be added) to install dependencies.
- **CodeDeploy**: Deploy the app folder to your EC2 instance.

## 📝 Database Schema (MySQL)
```sql
CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    roll VARCHAR(50) NOT NULL UNIQUE,
    dept VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
