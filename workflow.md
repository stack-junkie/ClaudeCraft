# ClaudeCraft Workflow: Multi-Agent Development Methodology

*Comprehensive guide to how ClaudeCraft actually works - agent interactions, user patterns, and system mechanics*

## What ClaudeCraft Actually Is

ClaudeCraft is a **multi-agent development methodology** that coordinates five specialized AI agents to deliver production-ready software. It's not a traditional software framework but rather a systematic approach to AI-powered development with:

- **Structured agent coordination** with mandatory handoff procedures
- **Comprehensive tracking system** for decisions, progress, and issues
- **Quality gates** ensuring security, performance, and maintainability
- **Token management** preventing context loss during development
- **Workspace organization** supporting complex, multi-session projects

## Core Philosophy & Constraints

### Development Principles
- **One feature at a time** - Complete implementation before starting new work
- **Token awareness** - Stop at 75% context limit with structured handoffs
- **Security first** - OWASP Top 10 compliance from day one
- **Mainstream technologies only** - React/Next.js, Python/FastAPI, Node.js

### Quality Standards
- **80%+ test coverage** for all new code
- **300 lines maximum** per file (components), 200 lines (API routes)
- **Sub-200ms API responses**, sub-3s page loads
- **Mandatory code review** before commits
- **Documentation updates** with every change

## The Five Agent System

### Agent Specializations & Triggers

| Agent | Primary Role | Context Type | Session Duration | Handoff Triggers |
|-------|-------------|--------------|------------------|------------------|
| **Planner** | Strategic planning, PRD creation, architecture | Rich persistent memory | Long-running | Specs complete, architecture decided |
| **Coder** | Implementation, basic testing, technical setup | Lightweight task-focused | Task-focused | Feature complete, token limit reached |
| **Tester** | Quality assurance, comprehensive testing, bugs | Feature-specific testing | Verification sessions | Testing complete, quality validated |
| **Documenter** | Documentation, user guides, API docs | Content creation focused | Documentation sprints | All docs current and validated |
| **Reviewer** | Quality assessment, security audit, architecture | Comprehensive analysis | Review sessions | Quality review complete |

### Agent Interaction Patterns

```
Standard Feature Development:
Planner → Coder → Tester → Documenter → Reviewer

Bug Fix Cycle:
Tester → Coder → Tester → Reviewer

Architecture Planning:
Planner → Reviewer → Planner → Coder

Emergency Response:
Any Agent → Reviewer → Coder → Tester

Documentation Sprint:
Documenter → Reviewer → Documenter
```

## User Interaction Model

### How Users Engage

**Natural Language First**: Users interact through conversational prompts, not rigid commands:
```
"I have an idea for a task management app"
"Fix the login bug users are reporting"
"Add dark mode to the dashboard"
"Review the security of our authentication"
```

**Template Guidance Available**: 8 categories of structured prompts for complex scenarios:

1. **Project Initiation** - New projects or existing PRDs
2. **Agent Transitions** - Fresh token limits or specific handoffs  
3. **Review & Assessment** - Code quality or project status
4. **Issue Resolution** - Bugs and performance problems
5. **Emergency Response** - Critical production issues
6. **Project Migration** - Framework migrations or modernization
7. **Integration** - Adding features or connecting systems
8. **Documentation** - Updating guides and documentation

### User Journey Examples

**New Project Flow:**
```
User: "I want to build a project management app for small teams"
→ Planner Agent activates, creates PRD, breaks down features
→ Hands off to Coder Agent for implementation
→ Continues through testing, documentation, review phases
```

**Bug Fix Flow:**
```
User: "Users can't log in, getting 500 errors"  
→ Tester Agent reproduces issue, identifies root cause
→ Hands off to Coder Agent for fix implementation
→ Back to Tester for verification, then Reviewer for quality check
```

**Enhancement Flow:**
```
User: "Add real-time notifications to the existing app"
→ Planner Agent updates PRD, plans integration
→ Coder implements feature
→ Full testing and documentation cycle
```

## Workspace Information Architecture

### Central Tracking System

The `/workspace/` folder creates a self-contained development environment:

```
workspace/
├── prd.md                 # Single source of truth for requirements
├── todo.md               # Sprint tasks and feature priorities
├── memory-bank.md        # Architectural decisions and learnings
├── progress-log.md       # Daily progress and milestone tracking
├── bug-tracker.md        # Issue patterns and resolution tracking
├── agent-instructions/   # Role definitions for each agent
├── templates/           # Standardized handoff and PRD templates
└── handoffs/           # Active agent transition documents
    └── archive/        # Historical handoff records
```

### Information Flow Patterns

**Strategic Planning Phase:**
```
User Concept → PRD (requirements) → Todo (prioritized features) → Memory Bank (architecture)
```

**Implementation Phase:**
```
Todo (tasks) → Progress Log (daily work) → Bug Tracker (issues) → Memory Bank (decisions)
```

**Quality Control Phase:**
```
Bug Tracker (patterns) → Memory Bank (lessons) → PRD (updated requirements)
```

**Agent Transitions:**
```
All Tracking Files → Handoff Document → Archive → Next Agent Context
```

## The Handoff System

### Mandatory Handoff Checklist

Every agent transition requires **9 mandatory steps**:

1. **Update CLAUDE.md** → Active Agent field with next agent name
2. **Update CLAUDE.md** → Recent Changes section with work completed
3. **Update workspace/progress-log.md** with session accomplishments  
4. **Update workspace/memory-bank.md** if architectural decisions made
5. **Update workspace/bug-tracker.md** if issues found/resolved
6. **Create handoff document** using workspace/templates/handoff-template.md
7. **Save handoff file** as workspace/handoffs/handoff-[from]-to-[to]-[date].md
8. **Archive previous handoff** by moving to workspace/handoffs/archive/
9. **Ensure tests passing** and code in stable state

### Handoff Document Structure

Each handoff captures comprehensive context:

**Project State** - Branch info, progress, milestone status
**Work Completed** - Specific accomplishments, files modified, code changes  
**Feature Status** - Acceptance criteria progress, requirements validation
**Next Agent Instructions** - Primary objectives, specific tasks with priorities
**Important Context** - Key decisions made, technical/business context
**Blockers & Issues** - Current blockers, known issues, technical debt
**Quality Status** - Testing, code quality, security, performance metrics
**Resource Information** - Token usage, session metrics, remaining work

## Quality Gates & Standards

### Agent-Specific Quality Requirements

**Planner Agent Deliverables:**
- ✅ Complete PRD with all sections filled
- ✅ Prioritized todo.md with MVP features
- ✅ Architectural decisions in memory-bank.md
- ✅ Timeline and milestones in progress-log.md

**Coder Agent Standards:**
- ✅ Working feature implementation following security standards
- ✅ Basic unit tests with instructions for comprehensive testing
- ✅ Code follows style guidelines (ESLint/Prettier)
- ✅ Files under size limits (300 lines max)
- ✅ Clean git commits with descriptive messages

**Tester Agent Validation:**
- ✅ 80%+ test coverage across all components
- ✅ Performance benchmarks (sub-200ms API, sub-3s page loads)
- ✅ Security testing against OWASP Top 10
- ✅ Detailed bug reports in workspace/bug-tracker.md
- ✅ Test automation scripts and procedures

**Documenter Agent Completeness:**
- ✅ Updated README.md with current features
- ✅ Complete user guides for all features  
- ✅ Comprehensive API documentation with examples
- ✅ Developer setup and contribution guides
- ✅ Validated and tested examples

**Reviewer Agent Assessment:**
- ✅ Complete quality assessment report
- ✅ Security audit with vulnerability analysis
- ✅ Performance analysis with optimization recommendations
- ✅ Architecture review with maintainability scoring
- ✅ Prioritized improvement roadmap

## Development Workflow Patterns

### Standard Feature Development Cycle

```
1. PLANNING PHASE
   User Request → Planner Agent
   ↓
   PRD Creation/Update → Feature Breakdown → Architecture Decisions
   ↓
   Handoff to Coder Agent

2. IMPLEMENTATION PHASE  
   Coder Agent → Feature Implementation
   ↓
   Basic Testing → Code Quality Check → Technical File Management
   ↓
   Handoff to Tester Agent

3. QUALITY ASSURANCE PHASE
   Tester Agent → Comprehensive Testing
   ↓
   Unit/Integration/E2E Testing → Performance Validation → Security Testing
   ↓
   Handoff to Documenter Agent

4. DOCUMENTATION PHASE
   Documenter Agent → Documentation Updates
   ↓  
   README Updates → API Docs → User Guides → Examples Validation
   ↓
   Handoff to Reviewer Agent

5. REVIEW & VALIDATION PHASE
   Reviewer Agent → Quality Assessment
   ↓
   Code Quality → Security Audit → Performance Analysis → Architecture Review
   ↓
   Approval or Back to Appropriate Agent for Improvements
```

### Specialized Workflow Patterns

**Bug Fix Workflow:**
```
Issue Reported → Tester Agent (reproduce) → Coder Agent (fix) → Tester Agent (verify) → Reviewer Agent (approve)
```

**Performance Optimization:**
```
Performance Issue → Reviewer Agent (analyze) → Coder Agent (optimize) → Tester Agent (benchmark) → Documenter Agent (document)
```

**Security Audit:**
```
Security Concern → Reviewer Agent (audit) → Coder Agent (remediate) → Tester Agent (security test) → Documenter Agent (security docs)
```

**Architecture Planning:**
```
Architecture Decision → Planner Agent (design) → Reviewer Agent (validate) → Planner Agent (refine) → Coder Agent (implement)
```

## Token Management Strategy

### Context Efficiency Design

**Lightweight Context** (Coder, Tester, Documenter):
- Task-focused sessions with minimal context
- Rely on workspace files for persistent information
- Stop at 75% token usage for clean handoffs

**Rich Context** (Planner, Reviewer):
- Comprehensive project understanding
- Strategic decision-making capability
- Higher token tolerance for complex analysis

### Token Usage Monitoring

**Mandatory Reporting**: Every agent message ends with token usage percentage
**Handoff Triggers**: Token limits automatically trigger agent transitions
**Context Preservation**: Critical information saved to workspace files before handoff
**Memory Archival**: Historical context preserved in structured files

## Success Metrics & Outcomes

### Development Quality Metrics
- **Feature Completion Rate**: 90% features delivered matching PRD specifications
- **Bug Discovery Rate**: <5 bugs per 100 lines of code
- **Test Coverage**: >80% across all components
- **Security Compliance**: OWASP Top 10 adherence verified
- **Performance Standards**: API <200ms, pages <3s load time

### Framework Effectiveness Metrics  
- **Agent Handoff Success**: >95% handoffs require no clarification
- **Context Preservation**: <10% context loss between sessions
- **Setup Time**: <30 minutes for new project initialization
- **Developer Productivity**: 2x improvement over traditional development

### Quality Gate Success
- **Security**: All OWASP Top 10 vulnerabilities addressed
- **Performance**: All benchmarks met before release
- **Documentation**: Complete user onboarding possible
- **Maintainability**: Code quality scores above thresholds

## Integration & Extension Points

### Technology Integration
- **Version Control**: Git-based with structured commit messages
- **CI/CD**: GitHub Actions integration with quality gates
- **Monitoring**: Health checks, logging, and alerting setup
- **Deployment**: Platform-specific deployment guides (Vercel, Railway, Render)

### Framework Extensions
- **Crystal Integration**: Multi-session management and context persistence
- **CrewAI Integration**: Advanced agent orchestration capabilities
- **MCP Agent Support**: Extended functionality through MCP protocols
- **Custom Agent Types**: Framework supports specialized agent extensions

## Emergency Procedures

### Critical Issue Response
- **Security Vulnerabilities**: Direct to Reviewer Agent for immediate assessment
- **Production Outages**: Focus on stabilization over process adherence  
- **Data Loss Risks**: Immediate documentation and emergency response protocols
- **Context Overflow**: Summarize state in memory-bank.md, create lightweight handoff

### Recovery Procedures
- **Failed Handoffs**: Return to previous agent with clarification request
- **Quality Gate Failures**: Loop back to appropriate agent for remediation
- **Token Limit Emergencies**: Emergency handoff with minimal viable context
- **Process Breakdown**: Escalate to Planner Agent for process stabilization

---

## Conclusion

ClaudeCraft operates as a sophisticated **multi-agent development methodology** that transforms software development through systematic agent coordination, comprehensive quality gates, and robust context management. The framework's strength lies in its balance of structure and flexibility - providing clear processes while supporting natural user interactions and emergency adaptations.

The system's comprehensive tracking, mandatory handoff procedures, and quality-focused approach enable teams to consistently deliver production-ready software while maintaining context across complex, multi-session development projects. Its agent specialization model ensures each aspect of development receives appropriate expertise while the handoff system prevents information loss and maintains project coherence.

🔋 TOKEN USAGE: 55%