# ClaudeCraft

A multi-agent development framework for Claude Code powered AI software development using specialized agents that ensure security, quality, and velocity.

## Overview

ClaudeCraft enables teams to go from concept to production-ready MVP through a coordinated workflow of five specialized AI agents:

- **Planner Agent** - Strategic planning, PRD creation, architecture decisions
- **Coder Agent** - Feature implementation, testing, technical setup  
- **Tester Agent** - Quality assurance, bug discovery, performance validation
- **Documenter Agent** - Documentation updates, user guides, API docs
- **Reviewer Agent** - Code quality, security audits, final validation

## Core Philosophy

- **One feature at a time** - Complete features fully before starting new ones
- **Token awareness** - Stop at 75% context limit to preserve handoff quality
- **Security first** - Never compromise on defensive practices (OWASP Top 10 compliance)
- **Mainstream tech stacks preferred** - React/Next.js, Python/FastAPI, Node.js for maximum maintainability

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

3. **Start with a Planner Agent prompt:**
   ```
   "I have an idea for [app description]. Can you help me create a PRD?"
   ```

## Preferred Tech Stacks

- **React + Python:** Frontend with React/Next.js, backend with Python/FastAPI
- **React + Node:** Frontend with React/Next.js, backend with Node.js/Express
- **React Only:** Single-page applications with React/Next.js

## Features

- **Structured Development Process** - Clear phases from concept to MVP delivery
- **Agent Specialization** - Each agent optimized for specific development tasks
- **Quality Gates** - Comprehensive testing, security, and performance validation
- **Memory Management** - Persistent context and decision tracking across sessions
- **Security-First** - OWASP Top 10 compliance built into every phase
- **Documentation-Driven** - Complete user guides, API docs, and troubleshooting

## Documentation

- **[Complete Workflow Guide](framework-workflow.md)** - Detailed process from concept to MVP
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