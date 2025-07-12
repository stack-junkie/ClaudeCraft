# Project-Specific CLAUDE.md Template

*This template creates a project-specific CLAUDE.md file that inherits from the Stack-Junkie-Framework global rules while adding project context*

---

# [PROJECT NAME] - Claude Context

## Stack-Junkie-Framework Integration
*This project uses the Stack-Junkie-Framework for multi-agent development*

### Framework Rules (Inherited)
- One feature at a time, always
- Token awareness: Stop at 75% context limit
- Handoff preparation: Create detailed transition prompts
- Security first: Never compromise on defensive practices
- Mainstream tech stacks only (React/Next.js, Python/FastAPI, Node.js)

### Agent Behaviors (Inherited)
- Prep commits with descriptive messages (no auto-commit)
- Update memory-bank.md after each significant action
- Reference PRD constantly to prevent scope drift
- Use test-driven development workflow
- Request handoff when complexity threshold reached

---

## Project Overview

### Project Name
**[INSERT PROJECT NAME]**

### Project Description
*[Brief description of what this application does]*

### Current Phase
**Phase:** [Planning/MVP Development/Enhancement/Maintenance]
**Milestone:** [Current milestone or sprint]
**Progress:** [Overall project progress]

### Tech Stack
- **Frontend:** [React/Next.js + specific libraries]
- **Backend:** [Python/FastAPI OR Node.js/Express + specific libraries]
- **Database:** [PostgreSQL/SQLite + any ORMs]
- **Authentication:** [Auth0/Clerk/Firebase Auth/Custom]
- **Testing:** [Jest/Vitest/pytest + testing libraries]
- **Deployment:** [Vercel/Railway/Render + any specific config]

---

## Current Development Context

### Active Agent
**Current Agent:** [Planner/Coder/Tester/Documenter/Reviewer]
**Session Focus:** [What the current agent is working on]
**Expected Handoff:** [When and to which agent]

### Recent Significant Changes
*[Summary of the last 2-3 major developments]*
- [Change 1 with date]
- [Change 2 with date]
- [Change 3 with date]

### Next Priorities
1. **[Priority 1]** - [Brief description]
2. **[Priority 2]** - [Brief description]
3. **[Priority 3]** - [Brief description]

---

## Project-Specific Rules & Guidelines

### Custom Coding Standards
*[Any project-specific coding standards beyond the framework defaults]*
- [Custom rule 1]
- [Custom rule 2]
- [Custom rule 3]

### Project-Specific Security Requirements
*[Any additional security requirements for this project]*
- [Security requirement 1]
- [Security requirement 2]

### Performance Requirements
*[Specific performance goals for this project]*
- [Performance requirement 1]
- [Performance requirement 2]

### Quality Gates
*[Project-specific quality requirements]*
- [Quality gate 1]
- [Quality gate 2]

---

## Architecture Context

### System Architecture
*[Brief overview of the system architecture]*

### Key Architectural Decisions
1. **[Decision 1]**
   - **Rationale:** [Why this was chosen]
   - **Impact:** [How this affects development]

2. **[Decision 2]**
   - **Rationale:** [Why this was chosen]
   - **Impact:** [How this affects development]

### Integration Points
- **[Integration 1]:** [Description and status]
- **[Integration 2]:** [Description and status]

### Data Models
*[Key data structures and relationships]*
- **[Model 1]:** [Purpose and key fields]
- **[Model 2]:** [Purpose and key fields]

---

## Current Feature Context

### Active Feature
**Feature:** [Current feature being developed]
**PRD Section:** [Reference to relevant PRD section]
**Status:** [In Progress/Testing/Review]
**Assigned Agent:** [Which agent is responsible]

### Acceptance Criteria Status
- [ ] [Criteria 1] - [Status]
- [ ] [Criteria 2] - [Status]
- [ ] [Criteria 3] - [Status]

### Dependencies
- **Completed:** [What's been finished that this depends on]
- **Pending:** [What needs to be done first]
- **Blocked By:** [Any blockers preventing progress]

---

## Development Environment

### Setup Commands
```bash
# Initial setup
[setup commands specific to this project]

# Development server
[dev server command]

# Testing
[test commands]

# Build
[build commands]
```

### Environment Variables
*[Required environment variables - DO NOT include actual values]*
- `DATABASE_URL` - [Description]
- `API_KEY` - [Description]
- `AUTH_SECRET` - [Description]

### Development Tools
- **IDE Configuration:** [Any specific IDE setup]
- **Extensions:** [Recommended VS Code extensions]
- **Debugging:** [How to debug this project]

---

## Testing Strategy

### Test Structure
- **Unit Tests:** [Location and patterns]
- **Integration Tests:** [Location and patterns]
- **E2E Tests:** [Location and patterns]

### Test Commands
```bash
# Run all tests
[command]

# Run unit tests only
[command]

# Run with coverage
[command]

# Run specific test file
[command]
```

### Current Coverage
- **Overall Coverage:** [X%]
- **Critical Path Coverage:** [X%]
- **Last Updated:** [Date]

---

## Project Memory

### Key Lessons Learned
- **[Lesson 1]:** [What was learned and how it applies]
- **[Lesson 2]:** [What was learned and how it applies]

### Successful Patterns
- **[Pattern 1]:** [Description and when to use]
- **[Pattern 2]:** [Description and when to use]

### Avoided Approaches
- **[Approach 1]:** [Why this didn't work and what to do instead]
- **[Approach 2]:** [Why this didn't work and what to do instead]

---

## Agent-Specific Context

### For Planner Agent
- **Decision Authority:** [What decisions this agent can make]
- **Escalation Path:** [When to escalate to user/stakeholder]
- **Planning Horizon:** [How far ahead to plan]

### For Coder Agent
- **Code Style:** [Specific style preferences]
- **Testing Approach:** [TDD/Test-after/specific patterns]
- **Documentation Level:** [How much documentation to include]

### For Tester Agent
- **Critical Paths:** [Most important user journeys to test]
- **Performance Benchmarks:** [Specific performance targets]
- **Security Focus:** [Key security areas to test]

### For Documenter Agent
- **Audience:** [Who will read the documentation]
- **Documentation Style:** [Tone and approach]
- **Update Frequency:** [How often to update docs]

### For Reviewer Agent
- **Quality Standards:** [Specific quality criteria]
- **Review Scope:** [What to focus on in reviews]
- **Approval Criteria:** [What constitutes approval]

---

## Communication & Handoff

### Handoff Frequency
- **Normal Handoffs:** [When to handoff under normal circumstances]
- **Emergency Handoffs:** [When to handoff immediately]
- **Quality Gates:** [What must be complete before handoff]

### Status Reporting
- **Progress Updates:** [How often to update progress]
- **Blocker Escalation:** [When and how to escalate blockers]
- **Success Metrics:** [How to measure and report success]

---

## Quick Reference

### Key Files
- **PRD:** `prd.md` - [Project requirements]
- **Todo:** `todo.md` - [Feature checklist]
- **Memory:** `memory-bank.md` - [Project knowledge]
- **Bugs:** `bug-tracker.md` - [Issue tracking]
- **Progress:** `progress-log.md` - [Development log]

### Important Commands
```bash
# Most common development commands
[command 1]
[command 2]
[command 3]
```

### Contact Information
- **Project Owner:** [Contact if needed]
- **Technical Lead:** [Contact if needed]
- **Stakeholders:** [Key stakeholders]

---

## Document Maintenance

**Created:** [Date]
**Last Updated:** [Date]
**Updated By:** [Agent name]
**Version:** [Version number]
**Next Review:** [Date for next review]

---

*This CLAUDE.md file should be updated by agents as the project evolves, decisions are made, and context changes. It serves as the primary source of project-specific context for all agents.*