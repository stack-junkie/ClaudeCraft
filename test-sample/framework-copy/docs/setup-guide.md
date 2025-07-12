# 📋 Stack-Junkie-Framework Setup Guide

*Complete step-by-step guide to setting up and using the Stack-Junkie-Framework for your projects.*

---

## 📖 Table of Contents

1. [Prerequisites](#prerequisites)
2. [Initial Setup](#initial-setup)
3. [Project Configuration](#project-configuration)
4. [Development Workflow](#development-workflow)
5. [Agent Usage](#agent-usage)
6. [Troubleshooting](#troubleshooting)
7. [Advanced Configuration](#advanced-configuration)

---

## 🔧 Prerequisites

### Required Software
- **Git** 2.0+ - Version control
- **Node.js** 18+ - Frontend development and tooling
- **Python** 3.8+ (for Python backend projects)
- **Code Editor** - VS Code recommended with Claude extension

### Optional but Recommended
- **Crystal** - Enhanced multi-session agent management
- **Docker** - Containerized development (future feature)
- **PostgreSQL** - Production database

### Accounts Needed
- **GitHub** account for repository hosting
- **Vercel** account for frontend deployment (optional)
- **Railway/Render** account for backend deployment (optional)

---

## 🚀 Initial Setup

### Step 1: Create Your Project Repository

#### Option A: Use GitHub Template (Recommended)
1. Go to the [Stack-Junkie-Framework repository](https://github.com/your-org/stack-junkie-framework)
2. Click **"Use this template"** button
3. Fill in your new repository details:
   - Repository name: `your-awesome-project`
   - Description: Brief project description
   - Visibility: Public or Private
4. Click **"Create repository from template"**

#### Option B: Manual Clone and Setup
```bash
# Clone the framework
git clone https://github.com/your-org/stack-junkie-framework.git your-project-name
cd your-project-name

# Remove the original git history
rm -rf .git
git init
```

### Step 2: Clone Your New Repository
```bash
git clone https://github.com/your-username/your-awesome-project.git
cd your-awesome-project
```

### Step 3: Make Setup Script Executable
```bash
chmod +x setup-project.sh
```

---

## ⚙️ Project Configuration

### Step 1: Choose Your Technology Stack

The framework supports three technology stack configurations:

#### **React + Python/FastAPI** (Recommended for Full-Stack)
```bash
./setup-project.sh "your-project-name" react-python
```
**Best for:** Full-stack applications, APIs, data processing, ML integration

#### **React + Node.js/Express** (JavaScript Full-Stack)
```bash
./setup-project.sh "your-project-name" react-node
```
**Best for:** JavaScript-only teams, real-time applications, rapid prototyping

#### **React Only** (Frontend-Only)
```bash
./setup-project.sh "your-project-name" react-only
```
**Best for:** Static sites, JAMstack applications, frontend-only projects

### Step 2: What the Setup Script Does

The setup script automatically:

1. **Cleans up framework files** - Removes lab configuration and development files
2. **Creates project structure** - Sets up directories based on your tech stack
3. **Updates template files** - Customizes CLAUDE.md, PRD, and configuration files
4. **Generates tech stack files** - Creates package.json, requirements.txt, etc.
5. **Sets up environment** - Creates .env templates with secure defaults
6. **Creates project README** - Generates project-specific documentation
7. **Initializes Git** - Creates initial commit with your project

### Step 3: Review Generated Files

After setup, review these key files:

#### **CLAUDE.md** - Agent Context
```markdown
# Your Project Name - Claude Context

## Project Overview
- Project Name: [Your project name]
- Tech Stack: [Selected stack]
- Current Phase: [Planning/Development/Testing]

## Current Development Context
- Active Agent: [Current agent working]
- Session Focus: [What's being worked on]
- Next Priorities: [Upcoming tasks]
```

#### **prd.md** - Product Requirements Document
```markdown
# Product Requirements Document

## Project Overview
[Customize with your project details]

## Technical Specifications
[Updated with your chosen tech stack]

## Feature Specifications
[Define your MVP and enhancement features]
```

#### **todo.md** - Feature Checklist
```markdown
# Feature Implementation Checklist

## High Priority - MVP
- [ ] Project setup and initial configuration ✅
- [ ] [Your features to be defined]

## Medium Priority - Enhancement
- [ ] [Enhancement features]
```

---

## 🔄 Development Workflow

### Phase 1: Project Planning

#### Start with Planner Agent
```
"Initialize project development with Stack-Junkie-Framework. 
Create comprehensive PRD for [your specific app idea] including:
- Target users and use cases
- Core features for MVP
- Technical architecture decisions
- Security and quality requirements"
```

**Expected Outcome:**
- Detailed PRD with feature specifications
- Updated todo.md with prioritized tasks
- Architecture decisions documented
- Initial project roadmap

### Phase 2: Feature Development

#### Hand off to Coder Agent
```
"Implement [specific feature from PRD] following Stack-Junkie-Framework 
security and quality standards. Include comprehensive testing and 
update documentation."
```

**Expected Outcome:**
- Working feature implementation
- Unit and integration tests
- Security validation
- Updated documentation

### Phase 3: Quality Assurance

#### Hand off to Tester Agent
```
"Perform comprehensive testing of [feature] including edge cases, 
performance validation, and security testing. Report any issues 
found and verify all acceptance criteria."
```

**Expected Outcome:**
- Comprehensive test coverage
- Performance benchmarks
- Security validation
- Bug reports (if any)

### Phase 4: Documentation

#### Hand off to Documenter Agent
```
"Update all project documentation for [feature] including user guides, 
API documentation, and README. Ensure documentation matches 
current implementation."
```

**Expected Outcome:**
- Updated user documentation
- API reference updates
- README.md improvements
- Installation guide updates

### Phase 5: Quality Review

#### Hand off to Reviewer Agent
```
"Perform complete quality review of [feature] including code quality, 
security audit, performance analysis, and maintainability assessment. 
Provide improvement recommendations."
```

**Expected Outcome:**
- Quality assessment report
- Security audit results
- Performance analysis
- Improvement recommendations

---

## 🤖 Agent Usage

### Planner Agent Best Practices

**When to Use:**
- Starting new projects or major features
- Making architectural decisions
- Breaking down complex requirements
- Coordinating multiple features

**Sample Prompts:**
```
"Plan the user authentication system for our app including OAuth, 
role-based access control, and security requirements."

"Break down the dashboard feature into implementable tasks with 
clear acceptance criteria and dependencies."
```

### Coder Agent Best Practices

**When to Use:**
- Implementing specific features
- Writing tests and documentation
- Setting up development environment
- Technical file management

**Sample Prompts:**
```
"Implement user registration API endpoint with email validation, 
password hashing, and rate limiting."

"Set up the React component structure for the dashboard with 
TypeScript and comprehensive testing."
```

### Tester Agent Best Practices

**When to Use:**
- Validating feature implementations
- Creating test strategies
- Finding bugs and edge cases
- Performance testing

**Sample Prompts:**
```
"Create comprehensive test suite for the authentication system 
including unit tests, integration tests, and security tests."

"Perform load testing on the API endpoints and identify 
performance bottlenecks."
```

### Documenter Agent Best Practices

**When to Use:**
- Updating project documentation
- Creating user guides
- API documentation
- Repository maintenance

**Sample Prompts:**
```
"Update the API documentation for the new authentication endpoints 
with examples and error codes."

"Create user guide for the dashboard feature with screenshots 
and step-by-step instructions."
```

### Reviewer Agent Best Practices

**When to Use:**
- Code quality assessments
- Security audits
- Architecture reviews
- Final validation before release

**Sample Prompts:**
```
"Perform security audit of the authentication system and 
identify any vulnerabilities or improvements."

"Review the overall code quality and provide recommendations 
for maintainability improvements."
```

---

## 🛠️ Troubleshooting

### Common Setup Issues

#### **Setup Script Permission Denied**
```bash
# Solution: Make script executable
chmod +x setup-project.sh
```

#### **Git Not Initialized**
```bash
# Solution: Initialize git repository
git init
git add .
git commit -m "Initial commit"
```

#### **Package Installation Failures**
```bash
# For Node.js projects
rm -rf node_modules package-lock.json
npm install

# For Python projects
pip install --upgrade pip
pip install -r requirements.txt
```

### Development Issues

#### **Agent Context Loss**
- Always use handoff templates when switching agents
- Update memory-bank.md with important decisions
- Reference PRD frequently to stay aligned

#### **Test Failures**
- Run tests after each feature implementation
- Fix failing tests before moving to next feature
- Use Tester Agent for comprehensive validation

#### **Documentation Out of Sync**
- Update documentation with every feature change
- Use Documenter Agent regularly
- Validate examples and code snippets

### Environment Issues

#### **Environment Variables**
```bash
# Copy and customize environment files
cp .env.example .env.local  # Frontend
cp backend/.env.example backend/.env  # Backend
```

#### **Database Connection Issues**
```bash
# For SQLite (development)
# Ensure database file permissions are correct

# For PostgreSQL (production)
# Verify DATABASE_URL format:
# postgresql://username:password@localhost:5432/database_name
```

---

## 🚀 Advanced Configuration

### Environment Configuration

#### Development Environment
```bash
# Frontend (.env.local)
NEXT_PUBLIC_API_URL=http://localhost:8000
NEXT_PUBLIC_APP_NAME=Your App Name
NODE_ENV=development

# Backend (.env)
DATABASE_URL=sqlite:///./app.db
SECRET_KEY=your-development-secret-key
DEBUG=true
```

#### Production Environment
```bash
# Frontend
NEXT_PUBLIC_API_URL=https://your-api.com
NEXT_PUBLIC_APP_NAME=Your App Name
NODE_ENV=production

# Backend
DATABASE_URL=postgresql://user:pass@host:5432/db
SECRET_KEY=your-production-secret-key
DEBUG=false
```

### GitHub Actions Configuration

#### Required Secrets
Set these in your GitHub repository settings:

**For Vercel Deployment:**
- `VERCEL_TOKEN` - Vercel deployment token
- `VERCEL_ORG_ID` - Your Vercel organization ID
- `VERCEL_PROJECT_ID` - Your Vercel project ID

**For Railway Deployment:**
- `RAILWAY_TOKEN` - Railway deployment token
- `RAILWAY_SERVICE_NAME` - Your Railway service name

**For Security Scanning:**
- `SNYK_TOKEN` - Snyk security scanning token

### Custom Agent Rules

You can customize agent behavior by modifying:

- `lab-config/rules/global-rules.md` - Universal rules
- `lab-config/rules/security-rules.md` - Security requirements
- `lab-config/rules/handoff-rules.md` - Agent transition protocols

### Memory Management

**Update these files regularly:**
- `memory-bank.md` - Important decisions and learnings
- `bug-tracker.md` - Issues and resolutions
- `progress-log.md` - Development progress and metrics

---

## 📚 Next Steps

Once setup is complete:

1. **Review and customize your PRD** - Define your specific requirements
2. **Start with Planner Agent** - Create detailed feature specifications
3. **Follow the agent workflow** - Use structured handoffs between agents
4. **Monitor quality metrics** - Track test coverage, security, and performance
5. **Iterate and improve** - Use the framework's memory system to get better over time

---

## 🤝 Getting Help

- **Documentation**: Check [docs/](../) for detailed guides
- **Issues**: Create GitHub issue with framework tag
- **Community**: Join discussions in repository discussions
- **Security**: Report security issues privately to maintainers

---

*Ready to build amazing software with the Stack-Junkie-Framework? Let's get started! 🚀*