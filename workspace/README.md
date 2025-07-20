# Agent Workspace

**Self-contained workspace for multi-agent development workflow**

## 📁 Structure

```
workspace/
├── README.md                 # This file - workspace overview
├── prd.md                   # Product Requirements Document
├── todo.md                  # Sprint tasks and priorities  
├── memory-bank.md           # Architectural decisions and learnings
├── progress-log.md          # Daily progress and milestone tracking
├── bug-tracker.md           # Issue tracking and resolution
├── agent-instructions/      # Agent-specific role definitions
│   ├── planner-agent.md    # Strategic planning and coordination
│   ├── coder-agent.md      # Implementation and development
│   ├── tester-agent.md     # Testing and quality validation
│   ├── documenter-agent.md # Documentation and user guides
│   └── reviewer-agent.md   # Quality assessment and security
├── templates/              # Standard templates for consistency
│   ├── handoff-template.md # Agent transition template
│   ├── prd-template.md     # Product requirements template
│   └── project-claude.md   # Project-specific CLAUDE.md template
└── handoffs/              # Active agent transitions
    ├── archive/           # Completed handoff history
    └── [active handoffs] # Current transition documents
```

## 🚀 Quick Start for Agents

### 1. Read Your Role Instructions
- Navigate to `agent-instructions/[your-role]-agent.md`
- Follow the workspace orientation section
- Review your specific responsibilities

### 2. Check Project Status
- **Always start with:** `prd.md` for requirements
- **Check priorities:** `todo.md` for your current tasks
- **Review progress:** `progress-log.md` for project status
- **Check context:** `memory-bank.md` for decisions and learnings

### 3. Handle Handoffs
- **Incoming:** Check `handoffs/` for work passed to you
- **Outgoing:** Use `templates/handoff-template.md` for transitions
- **Archive:** Move completed handoffs to `handoffs/archive/`

## 📋 Mandatory Update Requirements

### Every Agent Must Update
- **progress-log.md** - Daily accomplishments and status
- **memory-bank.md** - Architectural decisions and learnings (when applicable)
- **bug-tracker.md** - Issues found or resolved (when applicable)

### Specific Agent Responsibilities
- **Planner Agent:** Maintain `prd.md` and `todo.md`
- **Coder Agent:** Update implementation progress
- **Tester Agent:** Document testing results and issues
- **Documenter Agent:** Track documentation status
- **Reviewer Agent:** Provide quality assessments

## 🔄 Handoff Process

### Before Any Agent Transition
1. **Complete** mandatory handoff checklist in CLAUDE.md
2. **Create** handoff document using `templates/handoff-template.md`
3. **Save** as `handoffs/handoff-[from]-to-[to]-[date].md`
4. **Archive** previous handoff to `handoffs/archive/`
5. **Update** CLAUDE.md with active agent and recent changes

### Handoff Quality Gates
- [ ] All tracking files updated
- [ ] Work is in stable state
- [ ] Next steps clearly defined
- [ ] Context fully preserved
- [ ] Success criteria specified

## 🎯 Benefits of This Structure

### For Development Teams
- **Self-contained:** Everything agents need in one place
- **Plug-and-play:** Download repo and start immediately
- **Organized:** Clear separation of concerns and responsibilities
- **Traceable:** Complete audit trail of decisions and progress

### For Individual Agents
- **Clear navigation:** Know exactly where to find information
- **Mandatory checklists:** Never miss important updates
- **Structured handoffs:** Seamless transitions between agents
- **Role clarity:** Specific instructions for your responsibilities

## 🔧 Maintenance

### Regular Cleanup
- Archive completed handoffs monthly
- Consolidate progress-log.md entries quarterly
- Review and update agent instructions as needed
- Maintain memory-bank.md organization

### Quality Assurance
- Ensure all agents follow workspace protocols
- Validate handoff completeness before transitions
- Monitor tracking file currency and accuracy
- Review agent instruction effectiveness

## 💬 User Prompt Templates

### 🚀 Project Initiation Templates

#### New Project from Idea
```
"I have an idea for [app/feature description]. Can you help me create a PRD?"
"Help me plan and build [project description] with [tech requirements]"
```

#### Existing PRD or Requirements  
```
"I have a PRD ready, let's start development"
"Continue development on existing project in [current state/branch]"
```

### 🔄 Agent Transition Templates

#### Fresh Token Limit
```
"Continue with [planner/coder/tester/documenter/reviewer] agent - fresh token limit"
"Hand off to [specific agent] for [specific task] - approaching token limit"
```

### 🔍 Review & Assessment Templates

#### Single File/Component Review
```
"Review [specific file/component] for [quality/security/performance]"
"Analyze [file path] and suggest improvements"
```

#### Full Project Review
```
"Full project review and status check"
"Comprehensive quality assessment of the entire codebase"
```

### 🐛 Issue Resolution Templates

#### Bug Fixes
```
"Fix bug in [feature/area]: [description of issue]"
"Tests are failing: [specific test/area]"
```

#### Performance Issues
```
"Performance optimization needed for [area/feature]"
"App is running slow, need performance analysis"
```

### ⚡ Emergency Response Templates

```
"Production is down - immediate help needed"
"Critical security vulnerability found: [description]"
"Emergency: [specific issue] breaking user functionality"
```

### 🔄 Project Migration Templates

```
"Migrate existing [framework] project to Stack-Junkie-Framework"
"Help me modernize legacy [technology] codebase"
"Move from [current platform] to [target platform]"
```

### 🔗 Integration Templates

```
"Add [new feature] to existing [project type] codebase"
"Integrate [API/service] into current project"
"Connect project to [external system/database]"
```

### 📚 Documentation Templates

```
"Update documentation for recent changes"
"Create user guide for [feature/functionality]"
"Document deployment process for [environment]"
```

### 🛠️ Environment & Deployment Templates

```
"Help me set up the development environment"
"Configure deployment for [platform/environment]"
"Set up CI/CD pipeline"
```

### 📊 Project Health Check Templates

```
"What's our progress on current milestones?"
"Overall code quality assessment"
"Are we on track for our target timeline?"
```

**Note:** These templates guide common scenarios, but agents can handle natural language requests. Feel free to describe your needs in your own words!

---

*This workspace enables consistent, high-quality multi-agent development with clear accountability and seamless coordination.*