# ClaudeCraft

A multi-agent development methodology for AI-powered software development using specialized agents that coordinate through structured workflows to ensure security, quality, and velocity.

## What ClaudeCraft Is

ClaudeCraft is a **systematic approach to AI development** that coordinates five specialized agents to deliver production-ready software. It's not a traditional software framework but rather a comprehensive methodology with:

- **Structured agent coordination** with mandatory handoff procedures
- **Comprehensive tracking system** for decisions, progress, and issues  
- **Quality gates** ensuring security, performance, and maintainability
- **Token management** preventing context loss during development
- **Natural language interface** supporting conversational development

## The Five Agent System

| Agent | Role | Expertise | Session Type |
|-------|------|-----------|--------------|
| **Planner** | Strategic planning, PRD creation, architecture | Rich persistent memory | Long-running |
| **Coder** | Feature implementation, testing, technical setup | Lightweight task-focused | Task-focused |
| **Tester** | Quality assurance, bug discovery, performance | Feature-specific testing | Verification |
| **Documenter** | Documentation, user guides, API docs | Content creation | Documentation sprints |
| **Reviewer** | Code quality, security audits, architecture review | Comprehensive analysis | Review sessions |

## Core Philosophy

- **One feature at a time** - Complete implementation before starting new work
- **Token awareness** - Stop at 75% context limit with structured handoffs  
- **Security first** - OWASP Top 10 compliance from day one
- **Mainstream technologies only** - React/Next.js, Python/FastAPI, Node.js

## Quick Start

1. **Clone or use as template:**
   ```bash
   git clone https://github.com/your-org/claudecraft.git your-project
   cd your-project
   ```

2. **Review workspace structure:**
   ```
   workspace/
    prd.md                 # Product Requirements Document
    todo.md               # Sprint tasks and priorities  
    memory-bank.md        # Architectural decisions
    progress-log.md       # Development tracking
    bug-tracker.md        # Issue management
    agent-instructions/   # Agent-specific role definitions
    templates/           # Standard templates
    handoffs/           # Agent transition management
   ```

3. **Start with natural language:**
   ```
   "I have an idea for a task management app for small teams"
   "Fix the login bug users are reporting"  
   "Add dark mode to the dashboard"
   "Review the security of our authentication"
   ```

## Preferred Tech Stacks

- **React + Python:** Frontend with React/Next.js, backend with Python/FastAPI
- **React + Node:** Frontend with React/Next.js, backend with Node.js/Express
- **React Only:** Single-page applications with React/Next.js

## How It Works

### Agent Interaction Patterns
```
Standard Feature Development:
Planner → Coder → Tester → Documenter → Reviewer

Bug Fix Cycle:
Tester → Coder → Tester → Reviewer

Architecture Planning:  
Planner → Reviewer → Planner → Coder
```

### Mandatory Handoff System
Every agent transition requires:
- ✅ Update all workspace tracking files
- ✅ Create comprehensive handoff document  
- ✅ Ensure tests passing and code stable
- ✅ Archive previous handoff
- ✅ Define clear next steps and success criteria

### Quality Standards
- **80%+ test coverage** for all new code
- **300 lines maximum** per file  
- **OWASP Top 10 compliance** verified
- **Sub-200ms API responses**, sub-3s page loads
- **Comprehensive documentation** with every change

## Documentation

- **[Complete Workflow Guide](workflow.md)** - How the agent system actually works
- **[Workspace Guide](workspace/README.md)** - Understanding the workspace structure
- **[Agent Instructions](workspace/agent-instructions/)** - Detailed role definitions for each agent
- **[Best Practices](docs/best-practices.md)** - Proven patterns for development velocity and quality
- **[Security Guidelines](docs/rules/security-rules.md)** - Security-first development approach

## Success Metrics

- **>80% test coverage** across all components
- **OWASP Top 10 security compliance** verified
- **<200ms API response times** and **<3s page loads**
- **>95% successful agent handoffs** with minimal clarification needed

## License

MIT License - see [LICENSE](LICENSE) for details.