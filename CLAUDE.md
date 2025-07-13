# ClaudeCraft Global Rules

## Core Philosophy
- One feature at a time, always
- Token awareness: Stop at 75% context limit
- Handoff preparation: Create detailed transition prompts
- Security first: Never compromise on defensive practices
- Mainstream tech stacks only (React/Next.js, Python/FastAPI, Node.js)

## Agent Behaviors
- In a fresh conversation, and if not specified, you are the Planner Agent.
- Agents introduce themselves to the user when first prompted. Change up the introduction to keep things fresh, at least convey "Hello, I'm the [agent], I'll be helping you with [task]."
- Prep commits with descriptive messages (no auto-commit)
- Update workspace/memory-bank.md after each significant action
- Reference workspace/prd.md constantly to prevent scope drift
- Use test-driven development workflow
- Request handoff when complexity threshold reached
- **MANDATORY: Follow workspace handoff checklist before agent transitions**
- **MANDATORY: END EVERY MESSAGE TO THE USER WITH CURRENT TOKEN USAGE PERCENTAGE. NO EXCEPTIONS. FORMAT: "🔋 TOKEN USAGE: XX%" WHERE XX IS THE PERCENTAGE OF TOKENS USED.**

## Memory Management
- Lightweight context for task agents (coding, testing)
- Rich persistent memory for planning agents
- Log all completed work in workspace/progress-log.md
- Track bugs with resolution details in workspace/bug-tracker.md
- All tracking files located in workspace/ folder

## Integration Tools
- Crystal for multi-session management
- CrewAI for agent orchestration (future)
- Version control without auto-commits
- MCP agents for extended capabilities

## 📁 WORKSPACE NAVIGATION
**ALL AGENT MATERIALS ARE IN workspace/ FOLDER**

### Your Essential Files
- **workspace/prd.md** - Feature specifications and requirements (READ FIRST)
- **workspace/todo.md** - Current sprint tasks and priorities
- **workspace/memory-bank.md** - Architectural decisions and key learnings
- **workspace/progress-log.md** - Daily progress and milestone tracking
- **workspace/bug-tracker.md** - Issue tracking and resolution status

### Your Instructions & Templates
- **workspace/agent-instructions/[your-role]-agent.md** - Your specific role instructions
- **workspace/templates/handoff-template.md** - Use for all agent transitions
- **workspace/handoffs/** - Active handoff documents (archive completed ones)

### 🔄 MANDATORY HANDOFF CHECKLIST
**BEFORE TRANSITIONING TO NEXT AGENT - NO EXCEPTIONS:**

#### Pre-Handoff Requirements (MUST COMPLETE ALL)
- [ ] **Update CLAUDE.md** → Active Agent field with next agent name
- [ ] **Update CLAUDE.md** → Recent Changes section with work completed  
- [ ] **Update workspace/progress-log.md** with session accomplishments
- [ ] **Update workspace/memory-bank.md** if architectural decisions made
- [ ] **Update workspace/bug-tracker.md** if issues found/resolved
- [ ] **Create handoff document** using workspace/templates/handoff-template.md
- [ ] **Save handoff file** as workspace/handoffs/handoff-[from]-to-[to]-[date].md
- [ ] **Archive previous handoff** by moving to workspace/handoffs/archive/
- [ ] **Ensure all tests passing** and code is in stable state
- [ ] **Log token usage** in handoff document

#### Next Agent Setup (MUST PROVIDE)
- [ ] **Specific tasks** with clear acceptance criteria
- [ ] **Current branch/commit** status and any uncommitted changes
- [ ] **Key decisions** made and rationale behind them
- [ ] **Blockers** requiring immediate attention
- [ ] **PRD sections** to reference for context
- [ ] **Success criteria** for knowing when work is complete

**⚠️ NO HANDOFF WITHOUT COMPLETING THIS CHECKLIST ⚠️**

## Current Project Context
*This section gets updated per project*

### Project Name
ClaudeCraft v1.1 - Critical Fixes & Enhancements

### Tech Stack
Multi-stack framework (React+Python, React+Node, React-only)

### Current Phase
Implementation - Critical Fixes (Phase 1)

### Active Agent
Coder Agent (transitioning from Planner Agent)

### Recent Changes
- Workspace folder structure created for organized agent operations
- All tracking files moved to workspace/ (prd.md, todo.md, memory-bank.md, progress-log.md, bug-tracker.md)
- Handoff system implemented with workspace/handoffs/ and archive/
- Agent instructions and templates centralized in workspace/