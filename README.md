# 🚀 ClaudeCraft

**Multi-Agent Development Framework for High-Quality, Secure Software Development with Claude AI**

*Transform your development workflow with AI-powered agents that ensure security, quality, and velocity at every step.*

[![npm version](https://img.shields.io/npm/v/claudecraft.svg)](https://www.npmjs.com/package/claudecraft)
[![PyPI version](https://img.shields.io/pypi/v/claudecraft.svg)](https://pypi.org/project/claudecraft/)
[![GitHub Template](https://img.shields.io/badge/GitHub-Template-brightgreen)](https://github.com/stack-junkie/ClaudeCraft/generate)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Security First](https://img.shields.io/badge/Security-First-red)](docs/rules/security-rules.md)
[![Quality Assured](https://img.shields.io/badge/Quality-Assured-blue)](docs/best-practices.md)

---

## 🎯 What is ClaudeCraft?

ClaudeCraft is a revolutionary **multi-agent development framework** that brings structure, security, and quality to AI-assisted software development. Instead of chaotic back-and-forth coding with AI, you get **specialized AI agents** working together in a coordinated workflow - each optimized for specific development tasks.

### 🏆 Key Benefits

- **🛡️ Security-First**: OWASP Top 10 compliance built into every feature
- **🎯 Quality-Focused**: 80%+ test coverage, code reviews, performance monitoring
- **⚡ High Velocity**: Structured agent handoffs eliminate context loss
- **📚 Self-Documenting**: Comprehensive memory and decision tracking
- **🔧 Production-Ready**: GitHub Actions, deployment configs, monitoring included
- **🚀 Easy Setup**: Get started in under 5 minutes

---

## 📦 Installation

### Via npm (Recommended)
```bash
npm install -g claudecraft
claudecraft-init my-awesome-app react-python
```

### Via pip
```bash
pip install claudecraft
claudecraft-init my-awesome-app react-python
```

### Via GitHub Template
1. Click **"Use this template"** on [GitHub](https://github.com/stack-junkie/ClaudeCraft/generate)
2. Clone your new repository
3. Run `./setup-project.sh "my-app" react-python`

---

## 🤖 Meet Your Development Team

### **👨‍💼 Planner Agent**
- Creates detailed Product Requirements Documents (PRDs)
- Breaks down complex features into implementable tasks
- Makes architectural decisions and manages project vision
- *Long-running sessions, rich context*

### **👨‍💻 Coder Agent**
- Implements single features with security and quality focus
- Follows established patterns and coding standards
- Creates comprehensive tests and documentation
- *Task-focused sessions, implementation expertise*

### **🧪 Tester Agent**
- Develops comprehensive test strategies
- Finds bugs and performance issues
- Validates security measures and edge cases
- *Verification-focused, quality assurance*

### **📝 Documenter Agent**
- Maintains user guides, API docs, and README files
- Updates documentation with every feature change
- Manages GitHub repository files and templates
- *Documentation expertise, user experience focus*

### **🔍 Reviewer Agent**
- Conducts thorough code quality assessments
- Performs security audits and vulnerability scanning
- Provides improvement recommendations and best practices
- *Quality gates, security validation*

---

## ⚡ Quick Start

### 1. Install ClaudeCraft
```bash
# Choose your preferred method:
npm install -g claudecraft          # Node.js users
pip install claudecraft            # Python users
# OR use GitHub template
```

### 2. Initialize Your Project
```bash
# Create new project with your preferred tech stack:
claudecraft-init "my-awesome-app" react-python    # React + Python/FastAPI
claudecraft-init "my-awesome-app" react-node      # React + Node.js/Express  
claudecraft-init "my-awesome-app" react-only      # React frontend only
```

### 3. Start Development with Claude
```bash
# Your first prompt to Claude (Claude Code, ChatGPT, etc.):
"Initialize project development with ClaudeCraft. 
Create PRD for [your app idea] and begin feature implementation."
```

**That's it!** Your multi-agent development environment is ready. 🎉

---

## 🏗️ What You Get Out of the Box

### **📋 Project Management**
- **PRD Template**: Comprehensive requirements documentation
- **Feature Tracking**: todo.md with prioritized development tasks
- **Memory System**: Persistent project knowledge and decisions
- **Bug Tracking**: Systematic issue management and resolution

### **🛡️ Security & Quality**
- **Security Rules**: OWASP Top 10 compliance built-in
- **Quality Gates**: Code review, testing, and performance standards
- **Agent Handoffs**: Structured transitions between development phases
- **CI/CD Pipelines**: GitHub Actions for testing and deployment

### **🔧 Development Tools**
- **Multiple Tech Stacks**: React+Python, React+Node.js, React-only
- **Environment Setup**: Automated dependency management
- **Testing Framework**: Unit, integration, and E2E testing
- **Documentation**: Auto-generated and maintained docs

### **📁 Project Structure**
```
your-project/
├── frontend/                 # React/Next.js application
├── backend/                  # Python/FastAPI or Node.js/Express
├── docs/                     # Project documentation
├── workspace/                # ClaudeCraft agent workspace
│   ├── prd.md               # Product Requirements Document
│   ├── todo.md              # Feature implementation checklist
│   ├── memory-bank.md       # Project knowledge base
│   ├── bug-tracker.md       # Issue tracking
│   └── agent-instructions/  # AI agent guidance
├── .github/                  # CI/CD workflows and templates
├── CLAUDE.md                 # AI agent context and rules
└── framework-workflow.md     # Complete development workflow
```

---

## 🌟 Framework Advantages

### **Traditional AI Development Problems**
❌ Context loss between sessions  
❌ Inconsistent code quality  
❌ Security vulnerabilities  
❌ Poor documentation  
❌ No systematic testing  
❌ Chaotic development process  

### **ClaudeCraft Solutions**
✅ **Persistent Memory**: All decisions and context preserved  
✅ **Quality Gates**: Automated quality and security checks  
✅ **Structured Workflow**: Clear agent roles and handoff procedures  
✅ **Documentation-Driven**: Self-updating, comprehensive docs  
✅ **Test-Driven Development**: Built-in testing at every level  
✅ **Production-Ready**: Deployment and monitoring included  

---

## 🎯 Supported Technology Stacks

### **React + Python/FastAPI** (Recommended)
- **Frontend**: React, Next.js, TypeScript, Tailwind CSS
- **Backend**: Python, FastAPI, SQLAlchemy, Alembic
- **Database**: PostgreSQL (production), SQLite (development)
- **Testing**: Jest, pytest, Playwright
- **Deployment**: Vercel + Railway

### **React + Node.js/Express**
- **Frontend**: React, Next.js, TypeScript, Tailwind CSS
- **Backend**: Node.js, Express, TypeScript
- **Database**: PostgreSQL, MongoDB
- **Testing**: Jest, Supertest, Playwright
- **Deployment**: Vercel + Railway

### **React Only**
- **Frontend**: React, Next.js, TypeScript, Tailwind CSS
- **Backend**: External APIs or serverless functions
- **Testing**: Jest, Playwright
- **Deployment**: Vercel, Netlify

---

## 🚀 Real-World Example

```bash
# 1. Create project
claudecraft-init "task-manager" react-python

# 2. Start with Planner Agent (in Claude)
"Create PRD for a team task management app with user auth, 
project boards, task assignment, and real-time collaboration."

# 3. Coder Agent implements features
"Implement user authentication with JWT tokens and role-based access control."

# 4. Tester Agent validates
"Create comprehensive test suite for authentication system including edge cases."

# 5. Documenter Agent updates docs
"Update API documentation and user guide for authentication features."

# 6. Reviewer Agent ensures quality
"Perform security audit and code quality review of authentication system."

# Result: Production-ready feature with documentation, tests, and security validation!
```

---

## 📚 Documentation

| Document | Purpose |
|----------|---------|
| [Setup Guide](docs/setup-guide.md) | Step-by-step setup and usage |
| [Agent Workflows](docs/agent-workflows.md) | How agents work together |
| [Best Practices](docs/best-practices.md) | Development guidelines |
| [Complete Workflow](framework-workflow.md) | Full development process |
| [Security Rules](docs/rules/security-rules.md) | Security requirements |
| [Handoff Procedures](docs/rules/handoff-rules.md) | Agent transition protocols |

---

## 🔧 Advanced Features

### **Agent Handoff System**
Structured transitions between development phases with complete context preservation.

### **Quality Metrics**
- Code coverage tracking
- Performance monitoring  
- Security vulnerability scanning
- Technical debt assessment

### **Memory Management**
- Persistent project knowledge
- Architectural decision records
- Bug pattern recognition
- Success pattern replication

### **Integration Support**
- Crystal multi-session management
- CrewAI agent orchestration
- GitHub Actions CI/CD
- Monitoring and alerting

---

## 🌍 Community & Support

- **GitHub**: [https://github.com/stack-junkie/ClaudeCraft](https://github.com/stack-junkie/ClaudeCraft)
- **Issues**: [Report bugs or request features](https://github.com/stack-junkie/ClaudeCraft/issues)
- **Discussions**: [Community discussions](https://github.com/stack-junkie/ClaudeCraft/discussions)
- **npm**: [https://www.npmjs.com/package/claudecraft](https://www.npmjs.com/package/claudecraft)
- **PyPI**: [https://pypi.org/project/claudecraft/](https://pypi.org/project/claudecraft/)

---

## 🤝 Contributing

ClaudeCraft follows its own multi-agent development principles:

1. **Planner Agent**: Review and plan improvements
2. **Coder Agent**: Implement changes with tests
3. **Tester Agent**: Validate all functionality
4. **Documenter Agent**: Update documentation
5. **Reviewer Agent**: Quality and security review

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

---

## ⭐ Why Choose ClaudeCraft?

> **"Finally, a development framework that brings order to AI-assisted development. The multi-agent approach eliminates the chaos and ensures every feature is secure, tested, and documented."**

- 🎯 **Structured Development**: Clear roles and responsibilities
- 🛡️ **Security Built-In**: OWASP compliance from day one
- 📈 **Quality Assured**: Comprehensive testing and code review
- 📚 **Self-Documenting**: Always up-to-date documentation
- ⚡ **High Velocity**: Efficient agent handoffs
- 🔧 **Production-Ready**: Deployment and monitoring included

---

## 🌟 Get Started Today

**Ready to transform your development workflow?**

1. **Install ClaudeCraft**: `npm install -g claudecraft` or `pip install claudecraft`
2. **Initialize your project**: `claudecraft-init "my-app" react-python`
3. **Start building** with structured, secure, quality-focused development

Join the revolution in AI-assisted software development! 🚀

---

*Built by developers, for developers. Designed for quality, security, and velocity.*