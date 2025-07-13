# ClaudeCraft Complete Workflow

*Comprehensive guide to the complete development workflow from concept to MVP delivery*

---

## 📖 Table of Contents

1. [Framework Overview](#framework-overview)
2. [Setup & Initialization](#setup--initialization) 
3. [Phase 1: Concept to Requirements](#phase-1-concept-to-requirements)
4. [Phase 2: Planning & Architecture](#phase-2-planning--architecture)
5. [Phase 3: Feature Development](#phase-3-feature-development)
6. [Phase 4: Quality Assurance](#phase-4-quality-assurance)
7. [Phase 5: Documentation](#phase-5-documentation)
8. [Phase 6: Review & Validation](#phase-6-review--validation)
9. [Phase 7: MVP Delivery](#phase-7-mvp-delivery)
10. [Ongoing Operations](#ongoing-operations)
11. [Agent Coordination](#agent-coordination)
12. [Process Documentation](#process-documentation)

---

## 🎯 Framework Overview

### Core Philosophy
**Reference:** [`docs/rules/global-rules.md`](docs/rules/global-rules.md)

The ClaudeCraft operates on four foundational principles:
- **One feature at a time** - Complete features fully before starting new ones
- **Token awareness** - Stop at 75% context limit to preserve handoff quality  
- **Security first** - Never compromise on defensive practices (OWASP Top 10 compliance)
- **Mainstream tech stacks only** - React/Next.js, Python/FastAPI, Node.js for maximum maintainability

### Agent Ecosystem
**Reference:** [`docs/agent-workflows.md`](docs/agent-workflows.md)

Five specialized agents work in coordinated workflow:
- **Planner Agent** - Strategic planning, PRD creation, architecture decisions
- **Coder Agent** - Feature implementation, testing, technical setup
- **Tester Agent** - Quality assurance, bug discovery, performance validation
- **Documenter Agent** - Documentation updates, user guides, API docs
- **Reviewer Agent** - Code quality, security audits, final validation

### Workspace Architecture
**Reference:** [`workspace/README.md`](workspace/README.md)

Self-contained workspace structure enables plug-and-play development:
```
workspace/
├── prd.md                 # Product Requirements Document
├── todo.md               # Sprint tasks and priorities  
├── memory-bank.md        # Architectural decisions
├── progress-log.md       # Development tracking
├── bug-tracker.md        # Issue management
├── agent-instructions/   # Agent-specific role definitions
├── templates/           # Standard templates
└── handoffs/           # Agent transition management
```

---

## 🚀 Setup & Initialization

### Framework Installation
**Reference:** [`docs/setup-guide.md`](docs/setup-guide.md)

**Step 1: Repository Creation**
```bash
# Use GitHub template or clone framework
git clone https://github.com/your-org/claudecraft.git your-project
cd your-project
chmod +x setup-project.sh
```

**Step 2: Technology Stack Selection**
```bash
# Choose your stack configuration
./setup-project.sh "project-name" [react-python|react-node|react-only]
```

**What the Setup Script Does:**
- Creates project structure based on tech stack
- Generates `workspace/` folder with all tracking files
- Updates `CLAUDE.md` with project-specific context
- Creates initial `workspace/prd.md` from template
- Sets up development environment configuration
- Initializes git repository with clean history

**Step 3: Workspace Verification**
**Reference:** [`CLAUDE.md`](CLAUDE.md) - Workspace Navigation section

Agents verify workspace structure:
- ✅ `workspace/prd.md` exists for requirements
- ✅ `workspace/todo.md` exists for task tracking
- ✅ `workspace/agent-instructions/` contains role definitions
- ✅ `workspace/templates/handoff-template.md` available for transitions
- ✅ `workspace/handoffs/` folder ready for agent coordination

---

## 📋 Phase 1: Concept to Requirements

### User Initiation
**Reference:** [`workspace/README.md`](workspace/README.md) - User Prompt Templates

**Scenario A: New Project from Idea**
```
User Prompt: "I have an idea for [app description]. Can you help me create a PRD?"
```

**Scenario B: Existing Requirements**
```
User Prompt: "I have a PRD ready, let's start development"
```

**Scenario C: Project Migration**
```
User Prompt: "Migrate existing [framework] project to ClaudeCraft"
```

### Planner Agent Activation
**Reference:** [`workspace/agent-instructions/planner-agent.md`](workspace/agent-instructions/planner-agent.md)

**Agent Introduction:**
> "Hello, I'm the Planner Agent. I'll be helping you transform your concept into a comprehensive development plan with detailed requirements."

**Planner Agent Workflow:**

**Step 1: Requirements Discovery**
- Reviews user concept and existing materials
- Conducts requirement elicitation through structured questioning
- Identifies target users, use cases, and success criteria
- Documents business goals and technical constraints

**Step 2: PRD Creation**
**Reference:** [`workspace/templates/prd-template.md`](workspace/templates/prd-template.md)

Creates comprehensive PRD including:
- Project overview with target users and value proposition
- Technical specifications aligned with framework tech stacks
- Feature specifications with MoSCoW prioritization:
  - **Must Have** (MVP features)
  - **Should Have** (enhancement features)  
  - **Could Have** (future features)
  - **Won't Have** (out of scope)
- Security requirements following OWASP Top 10
- Quality standards and success metrics

**Step 3: Initial Planning**
- Updates `workspace/todo.md` with prioritized feature list
- Documents architectural decisions in `workspace/memory-bank.md`
- Establishes project milestones in `workspace/progress-log.md`

**Deliverables:**
- ✅ Complete `workspace/prd.md` with all sections filled
- ✅ Prioritized `workspace/todo.md` with MVP features
- ✅ Initial `workspace/memory-bank.md` with architectural decisions
- ✅ Project timeline in `workspace/progress-log.md`

---

## 🏗️ Phase 2: Planning & Architecture  

### Detailed Technical Planning
**Reference:** [`workspace/agent-instructions/planner-agent.md`](workspace/agent-instructions/planner-agent.md) - Architecture Decisions section

**Planner Agent Deep Planning:**

**Step 1: Technology Stack Finalization**
**Reference:** [`docs/rules/global-rules.md`](docs/rules/global-rules.md) - Technology Stack Requirements

Validates and details chosen stack:
- **Frontend:** React/Next.js with Tailwind CSS
- **Backend:** Python/FastAPI or Node.js/Express (based on setup choice)
- **Database:** PostgreSQL for production, SQLite for development
- **Testing:** Jest/Vitest for frontend, pytest for backend
- **Deployment:** Vercel for frontend, Railway/Render for backend

**Step 2: Architecture Design**
Documents in `workspace/memory-bank.md`:
- System architecture overview
- Component interactions and data flow
- Authentication and authorization strategy
- Database schema design
- API design patterns
- Integration points and dependencies

**Step 3: Security Planning**
**Reference:** [`docs/rules/security-rules.md`](docs/rules/security-rules.md)

Incorporates security requirements:
- OWASP Top 10 compliance checklist
- Authentication/authorization implementation plan
- Data protection and encryption requirements
- Input validation and sanitization strategy
- Security testing and audit procedures

**Step 4: Implementation Strategy**
- Breaks down MVP features into implementable tasks
- Defines acceptance criteria for each feature
- Identifies feature dependencies and implementation order
- Plans testing strategy for each component
- Estimates effort and timelines

**Deliverables:**
- ✅ Detailed technical architecture in `workspace/memory-bank.md`
- ✅ Complete feature breakdown in `workspace/todo.md`
- ✅ Security requirements integrated in `workspace/prd.md`
- ✅ Implementation roadmap in `workspace/progress-log.md`

---

## 💻 Phase 3: Feature Development

### Development Initiation
**Reference:** [`docs/agent-workflows.md`](docs/agent-workflows.md) - Feature Development Cycle

### Handoff to Coder Agent
**Reference:** [`workspace/templates/handoff-template.md`](workspace/templates/handoff-template.md)

**Mandatory Handoff Process:**
**Reference:** [`CLAUDE.md`](CLAUDE.md) - Mandatory Handoff Checklist

Planner Agent completes checklist:
- [ ] Updates `CLAUDE.md` → Active Agent field with "Coder Agent"
- [ ] Updates `CLAUDE.md` → Recent Changes with planning work completed
- [ ] Updates `workspace/progress-log.md` with planning accomplishments
- [ ] Updates `workspace/memory-bank.md` with architectural decisions
- [ ] Creates handoff document using `workspace/templates/handoff-template.md`
- [ ] Saves as `workspace/handoffs/handoff-planner-to-coder-[date].md`
- [ ] Archives any previous handoff to `workspace/handoffs/archive/`

### Coder Agent Activation
**Reference:** [`workspace/agent-instructions/coder-agent.md`](workspace/agent-instructions/coder-agent.md)

**Agent Introduction:**
> "Hello, I'm the Coder Agent. I'll be implementing your features following ClaudeCraft security and quality standards."

**Coder Agent Workflow:**

**Step 1: Workspace Orientation**
**Reference:** [`workspace/agent-instructions/coder-agent.md`](workspace/agent-instructions/coder-agent.md) - Workspace Orientation

Follows quick start checklist:
1. Reads `workspace/prd.md` for feature requirements
2. Checks `workspace/todo.md` for specific tasks
3. Reviews handoff document in `workspace/handoffs/`
4. Updates `workspace/progress-log.md` when starting work

**Step 2: Feature Implementation**
**Reference:** [`docs/rules/global-rules.md`](docs/rules/global-rules.md) - Quality Standards

Implements features following standards:
- **File Size Limits:** Maximum 300 lines per file
- **Security Implementation:** Input validation, parameterized queries, HTTPS enforcement
- **Error Handling:** Comprehensive error handling with proper logging
- **Code Quality:** Follows ESLint/Prettier rules, proper naming conventions

**Step 3: Testing Integration**
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Testing Strategies

Creates comprehensive tests:
- **Unit Tests:** Individual function/component validation (70% of test pyramid)
- **Integration Tests:** API endpoints and database operations (25% of test pyramid)
- **Security Tests:** Input validation, authentication, authorization
- **Performance Tests:** Response times and load capabilities

**Step 4: Documentation Updates**
Updates relevant documentation:
- Code comments for complex logic (minimal, focused)
- API endpoint documentation
- Configuration changes in README
- Environment variable requirements

**Special Scenario Handling:**
**Reference:** [`workspace/agent-instructions/coder-agent.md`](workspace/agent-instructions/coder-agent.md) - Special Scenario Handling

- **Project Migration:** Analyzes legacy code, maintains functionality while modernizing
- **Integration:** Assesses existing codebase, identifies integration points
- **Bug Fixes:** Reproduces issue, creates tests, implements minimal fix

**Deliverables:**
- ✅ Working feature implementation following security standards
- ✅ Comprehensive test suite with >80% coverage
- ✅ Updated documentation for changes
- ✅ Environment configuration updates
- ✅ Clean git commits with descriptive messages

---

## 🧪 Phase 4: Quality Assurance

### Handoff to Tester Agent
**Reference:** [`docs/rules/handoff-rules.md`](docs/rules/handoff-rules.md) - Coder Agent Handoffs

**Coder Agent Handoff Requirements:**
- Feature implementation complete
- Basic unit tests written and passing
- Code follows style guidelines  
- No obvious bugs or issues

### Tester Agent Activation
**Reference:** [`workspace/agent-instructions/tester-agent.md`](workspace/agent-instructions/tester-agent.md)

**Agent Introduction:**
> "Hello, I'm the Tester Agent. I'll be conducting comprehensive testing to ensure your features meet all quality and security requirements."

**Tester Agent Workflow:**

**Step 1: Testing Protocol**
**Reference:** [`workspace/agent-instructions/tester-agent.md`](workspace/agent-instructions/tester-agent.md) - Testing Protocol Checklist

Follows structured approach:
1. Reviews incoming handoff for implementation details
2. Checks `workspace/prd.md` for acceptance criteria
3. Reviews `workspace/todo.md` for testing scope
4. Documents findings in `workspace/bug-tracker.md` and `workspace/progress-log.md`

**Step 2: Comprehensive Testing Strategy**
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Testing Strategies

**Test Types Performed:**
- **Unit Testing:** Individual component validation with Jest/pytest
- **Integration Testing:** Feature workflow validation across components
- **End-to-End Testing:** Complete user journey validation with Playwright/Cypress
- **Performance Testing:** Load and stress testing with k6 or similar tools
- **Security Testing:** OWASP vulnerability scanning and penetration testing

**Step 3: Bug Discovery and Documentation**
**Reference:** [`workspace/bug-tracker.md`](workspace/bug-tracker.md)

Documents all issues found:
- **Critical Issues:** Block user success, require immediate fixing
- **High Priority:** Significantly impact UX, fix in current sprint  
- **Medium Priority:** Important for functionality, fix in next phase
- **Low Priority:** Nice to have, fix when capacity allows

For each bug:
- Detailed reproduction steps
- Expected vs actual behavior
- Impact assessment and severity level
- Suggested resolution approach
- Test cases to prevent regression

**Step 4: Performance Validation**
**Reference:** [`workspace/templates/prd-template.md`](workspace/templates/prd-template.md) - Performance Requirements

Validates against requirements:
- **API Response Times:** < 200ms for simple queries
- **Page Load Times:** < 3 seconds initial load
- **Database Performance:** Query optimization validation
- **Scalability:** Concurrent user load testing

**Step 5: Security Testing**
**Reference:** [`docs/rules/security-rules.md`](docs/rules/security-rules.md) - Security Testing

Comprehensive security validation:
- Input validation and SQL injection testing
- Authentication and authorization verification
- XSS and CSRF vulnerability scanning
- Security header implementation validation
- Rate limiting and abuse protection testing

**Deliverables:**
- ✅ Comprehensive test coverage report (>80% target)
- ✅ Performance benchmark results
- ✅ Security validation report
- ✅ Detailed bug reports in `workspace/bug-tracker.md`
- ✅ Test automation scripts and procedures

---

## 📚 Phase 5: Documentation

### Handoff to Documenter Agent
**Reference:** [`docs/rules/handoff-rules.md`](docs/rules/handoff-rules.md) - Tester Agent Handoffs

**Tester Agent Handoff Requirements:**
- All tests passing
- Coverage requirements met
- Performance benchmarks established
- Security testing completed

### Documenter Agent Activation
**Reference:** [`workspace/agent-instructions/documenter-agent.md`](workspace/agent-instructions/documenter-agent.md)

**Agent Introduction:**
> "Hello, I'm the Documenter Agent. I'll be ensuring all documentation is current, accurate, and comprehensive for your implemented features."

**Documenter Agent Workflow:**

**Step 1: Documentation Protocol**
**Reference:** [`workspace/agent-instructions/documenter-agent.md`](workspace/agent-instructions/documenter-agent.md) - Documentation Protocol Checklist

Systematic approach:
1. Reviews incoming handoff for new features and changes
2. Checks `workspace/prd.md` for user-facing features requiring documentation
3. Reviews `workspace/memory-bank.md` for technical decisions to document
4. Updates `workspace/progress-log.md` with documentation completion status

**Step 2: Documentation Updates**
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Documentation Standards

**Documentation Hierarchy Maintained:**

**User Documentation:**
- **README.md** - Project overview, setup, and quick start
- **User Guide** - How to use application features
- **API Reference** - Complete API documentation with examples
- **Troubleshooting** - Common issues and solutions

**Developer Documentation:**
- **Architecture Overview** - System design and component interactions
- **Development Guide** - Setup, workflow, and contribution guidelines
- **Deployment Guide** - Production deployment procedures
- **Testing Guide** - Testing strategies and procedures

**Step 3: API Documentation**
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - API Documentation

Comprehensive endpoint documentation:
- Complete request/response schemas
- Authentication requirements
- Rate limiting information
- Error codes and handling
- Working code examples in multiple languages
- Interactive API documentation (Swagger/OpenAPI)

**Step 4: User Guide Creation**
Creates step-by-step guides:
- Feature usage with screenshots
- Common workflows and use cases
- Configuration and customization options
- Integration examples
- Best practices for users

**Step 5: Validation and Testing**
Ensures documentation accuracy:
- Tests all code examples and commands
- Validates installation and setup procedures
- Verifies screenshots and UI references
- Confirms external links and references
- Reviews for clarity and completeness

**Deliverables:**
- ✅ Updated README.md with current features
- ✅ Complete user guides for all features
- ✅ Comprehensive API documentation
- ✅ Developer setup and contribution guides
- ✅ Troubleshooting documentation
- ✅ Validated and tested examples

---

## 🔍 Phase 6: Review & Validation

### Handoff to Reviewer Agent
**Reference:** [`docs/rules/handoff-rules.md`](docs/rules/handoff-rules.md) - Documenter Agent Handoffs

**Documenter Agent Handoff Requirements:**
- All relevant documentation updated
- Links and references verified
- Examples tested and working
- User feedback incorporated

### Reviewer Agent Activation
**Reference:** [`workspace/agent-instructions/reviewer-agent.md`](workspace/agent-instructions/reviewer-agent.md)

**Agent Introduction:**
> "Hello, I'm the Reviewer Agent. I'll be conducting a comprehensive quality review to ensure everything meets our highest standards before release."

**Reviewer Agent Workflow:**

**Step 1: Quality Review Protocol** 
**Reference:** [`workspace/agent-instructions/reviewer-agent.md`](workspace/agent-instructions/reviewer-agent.md) - Quality Review Protocol Checklist

Comprehensive assessment approach:
1. Reviews incoming handoff for scope of work completed
2. Checks `workspace/prd.md` for quality requirements and acceptance criteria
3. Performs multi-dimensional quality assessment
4. Documents findings in `workspace/bug-tracker.md` and recommendations in `workspace/memory-bank.md`

**Step 2: Code Quality Assessment**
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Code Quality Standards

**Review Framework Applied:**
- **Maintainability:** Code structure, naming, complexity analysis
- **Readability:** Code clarity, documentation, self-documenting patterns
- **Standards Compliance:** Style guide adherence, best practices
- **Architecture:** Design pattern validation, component organization

**Quality Metrics Evaluated:**
- File size limits (300 lines max)
- Function complexity scores
- Code duplication analysis
- Dependency management
- Error handling patterns

**Step 3: Security Audit**
**Reference:** [`docs/rules/security-rules.md`](docs/rules/security-rules.md)

**Comprehensive Security Review:**
- **OWASP Top 10 Compliance:** Systematic check against all vulnerabilities
- **Authentication/Authorization:** Security model validation
- **Input Validation:** All endpoints and user inputs verified
- **Data Protection:** Encryption at rest and in transit validation
- **Security Headers:** HTTPS, CSP, security header implementation
- **Dependency Security:** Vulnerability scanning of all dependencies

**Step 4: Performance Analysis**
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Performance Optimization

**Performance Assessment:**
- **Frontend Performance:** Bundle analysis, load times, rendering optimization
- **Backend Performance:** API response times, database query optimization
- **Scalability:** Concurrent user capacity, resource utilization
- **Caching Strategy:** Implementation and effectiveness evaluation
- **Database Optimization:** Query performance, indexing strategy

**Step 5: Architecture Review**
**Reference:** [`workspace/memory-bank.md`](workspace/memory-bank.md)

**Architectural Validation:**
- Design pattern consistency
- Component coupling and cohesion
- Scalability considerations
- Integration point robustness
- Technical debt assessment

**Step 6: Improvement Recommendations**
Creates comprehensive improvement roadmap:
- **High Priority:** Critical issues requiring immediate attention
- **Medium Priority:** Important improvements for next iteration
- **Low Priority:** Nice-to-have enhancements for future consideration
- **Strategic Recommendations:** Long-term architectural improvements

**Deliverables:**
- ✅ Complete quality assessment report
- ✅ Security audit with vulnerability analysis
- ✅ Performance analysis with benchmarks
- ✅ Architecture review with recommendations
- ✅ Prioritized improvement roadmap
- ✅ Approval status and conditions
- ✅ Updated `workspace/memory-bank.md` with quality decisions

---

## 🚀 Phase 7: MVP Delivery

### Final Integration and Deployment
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Deployment & Operations

### Deployment Preparation
**Reference:** [`docs/setup-guide.md`](docs/setup-guide.md) - Advanced Configuration

**Environment Configuration:**
- **Production Environment Variables:** Secure configuration with real secrets
- **Database Setup:** Production PostgreSQL configuration
- **Security Headers:** HTTPS enforcement, security headers configuration
- **Monitoring:** Health checks, logging, alerting setup

**Deployment Pipeline:**
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Continuous Integration

```yaml
# GitHub Actions Pipeline includes:
- Automated testing (unit, integration, e2e)
- Security scanning (SAST, dependency vulnerabilities)
- Performance testing (load tests, lighthouse)
- Documentation validation
- Production deployment
```

### MVP Launch Checklist
**Quality Gates Verification:**
- [ ] **Functionality:** All MVP features working as specified in PRD
- [ ] **Testing:** >80% code coverage, all tests passing
- [ ] **Security:** OWASP Top 10 compliance, security audit passed
- [ ] **Performance:** Response times <200ms, load times <3s
- [ ] **Documentation:** Complete user guides, API docs, troubleshooting
- [ ] **Deployment:** Production environment configured and tested

### Post-Launch Monitoring
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Monitoring & Logging

**Monitoring Implementation:**
- **Health Checks:** Database, external services, system health
- **Performance Monitoring:** Response times, error rates, resource usage
- **Security Monitoring:** Authentication failures, suspicious activity
- **User Analytics:** Feature usage, user journeys, success metrics
- **Error Tracking:** Exception monitoring, error aggregation

**Deliverables:**
- ✅ Fully deployed MVP in production
- ✅ Complete monitoring and alerting setup
- ✅ User onboarding and support documentation
- ✅ Post-launch success metrics tracking
- ✅ Maintenance and support procedures

---

## 🔄 Ongoing Operations

### Continuous Improvement Cycle
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Continuous Improvement

### Maintenance Workflow
**Reference:** [`workspace/README.md`](workspace/README.md) - User Prompt Templates

**Ongoing User Interactions:**

**Bug Fixes:**
```
User Prompt: "Fix bug in [feature/area]: [description of issue]"
```
**Agent Flow:** Tester Agent → Coder Agent → Reviewer Agent

**Feature Enhancements:**
```
User Prompt: "Add [new feature] to the existing project"
```
**Agent Flow:** Planner Agent → Coder Agent → Tester Agent → Documenter Agent → Reviewer Agent

**Performance Optimization:**
```
User Prompt: "Performance optimization needed for [area/feature]"
```
**Agent Flow:** Reviewer Agent → Coder Agent → Tester Agent

**Security Updates:**
```
User Prompt: "Critical security vulnerability found: [description]"
```
**Agent Flow:** Emergency protocol → Reviewer Agent → Coder Agent → Tester Agent

### Memory Management
**Reference:** [`docs/rules/global-rules.md`](docs/rules/global-rules.md) - Agent Behavior Standards

**Regular Maintenance:**
- **Daily:** Update `workspace/progress-log.md` with work completed
- **Weekly:** Review and update `workspace/memory-bank.md` with key decisions
- **Monthly:** Archive old content, summarize patterns in memory files
- **Quarterly:** Framework and process improvements based on learnings

### Success Metrics Tracking
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Success Metrics

**Development Metrics:**
- Feature completion rate vs. plan (target: 90%)
- Bug discovery and resolution rates (target: <5 bugs per 100 LOC)
- Test coverage maintenance (target: >80%)
- Security vulnerability response time (target: <24 hours)

**Framework Metrics:**
- Agent handoff success rate (target: >95% no clarification needed)
- Context preservation between sessions (target: <10% context loss)
- Setup time for new projects (target: <30 minutes)
- Developer productivity with framework (target: 2x improvement)

---

## 🤖 Agent Coordination

### Handoff Management System
**Reference:** [`docs/rules/handoff-rules.md`](docs/rules/handoff-rules.md)

### Handoff Quality Assurance
**Universal Handoff Requirements:**
- Current state is stable and working
- All tests are passing
- Documentation reflects current state
- Next steps are clearly defined
- Important context is preserved
- Token usage is logged and optimized

### Agent Specialization Matrix
**Reference:** [`docs/agent-workflows.md`](docs/agent-workflows.md) - Agent Specializations

| Agent | Primary Expertise | Handoff Triggers | Quality Gates |
|-------|------------------|------------------|---------------|
| **Planner** | Strategic planning, PRD creation, architecture | Requirements clear, architectural decisions made | PRD complete, tasks prioritized |
| **Coder** | Implementation, testing, configuration | Feature complete, token limit reached | Tests passing, code quality standards met |
| **Tester** | Quality assurance, bug discovery, performance | Testing complete, quality validated | Coverage >80%, security validated |
| **Documenter** | Documentation, user guides, API docs | Documentation current and validated | All docs updated, examples tested |
| **Reviewer** | Quality assessment, security audit, architecture review | Quality review complete, improvements identified | Security audit passed, quality gates met |

### Emergency Protocols
**Reference:** [`docs/rules/handoff-rules.md`](docs/rules/handoff-rules.md) - Emergency Handoff Procedures

**Critical Issues:**
- Security vulnerabilities: Direct to Reviewer Agent
- System down: Focus on stabilization over process
- Data loss risk: Immediate documentation and emergency response

**Context Overflow:**
- Summarize current state in `workspace/memory-bank.md`
- Create lightweight handoff focused on immediate next steps
- Archive detailed context in appropriate files

---

## 📋 Process Documentation

### Framework Documentation Structure

**Core Documentation:**
- **[`CLAUDE.md`](CLAUDE.md)** - Agent global rules and workspace navigation
- **[`framework-workflow.md`](framework-workflow.md)** - This document - complete workflow guide
- **[`workspace/README.md`](workspace/README.md)** - Workspace structure and user prompt templates

**Agent Guidance:**
- **[`docs/agent-workflows.md`](docs/agent-workflows.md)** - Comprehensive agent workflow patterns and handoff procedures
- **[`docs/best-practices.md`](docs/best-practices.md)** - Proven patterns for development velocity, quality, and security
- **[`docs/setup-guide.md`](docs/setup-guide.md)** - Complete setup and configuration instructions

**Agent Instructions:**
- **[`workspace/agent-instructions/planner-agent.md`](workspace/agent-instructions/planner-agent.md)** - Strategic planning and PRD management
- **[`workspace/agent-instructions/coder-agent.md`](workspace/agent-instructions/coder-agent.md)** - Implementation and development standards
- **[`workspace/agent-instructions/tester-agent.md`](workspace/agent-instructions/tester-agent.md)** - Testing and quality assurance procedures
- **[`workspace/agent-instructions/documenter-agent.md`](workspace/agent-instructions/documenter-agent.md)** - Documentation and user guide standards
- **[`workspace/agent-instructions/reviewer-agent.md`](workspace/agent-instructions/reviewer-agent.md)** - Quality assessment and security audit procedures

**Rules and Standards:**
- **[`docs/rules/global-rules.md`](docs/rules/global-rules.md)** - Universal development principles and standards
- **[`docs/rules/security-rules.md`](docs/rules/security-rules.md)** - Security-first development approach and OWASP compliance
- **[`docs/rules/handoff-rules.md`](docs/rules/handoff-rules.md)** - Agent transition protocols and quality assurance

**Templates and Standards:**
- **[`workspace/templates/handoff-template.md`](workspace/templates/handoff-template.md)** - Standardized agent transition template
- **[`workspace/templates/prd-template.md`](workspace/templates/prd-template.md)** - Product Requirements Document template
- **[`workspace/templates/project-claude.md`](workspace/templates/project-claude.md)** - Project-specific CLAUDE.md template

**Project Tracking:**
- **[`workspace/prd.md`](workspace/prd.md)** - Product Requirements Document (project-specific)
- **[`workspace/todo.md`](workspace/todo.md)** - Feature implementation checklist and priorities
- **[`workspace/memory-bank.md`](workspace/memory-bank.md)** - Architectural decisions and key learnings
- **[`workspace/progress-log.md`](workspace/progress-log.md)** - Daily progress and milestone tracking
- **[`workspace/bug-tracker.md`](workspace/bug-tracker.md)** - Issue tracking and resolution status

### Process Evolution
**Reference:** [`docs/best-practices.md`](docs/best-practices.md) - Continuous Improvement

**Regular Framework Updates:**
- Monthly agent role definition reviews
- Quarterly quality gate refinements based on learnings
- Semi-annual framework capability evolution
- Annual process effectiveness assessments

**Community Contribution:**
- Document successful patterns in best-practices.md
- Contribute improvements back to framework repository
- Share case studies and success stories
- Help other teams adopt and customize the framework

---

## 🎯 Success Criteria

### MVP Delivery Success
A successful MVP delivery through ClaudeCraft includes:

**Functional Success:**
- ✅ All MVP features implemented according to PRD specifications
- ✅ All acceptance criteria met and validated
- ✅ User journeys working end-to-end
- ✅ Production deployment successful and stable

**Quality Success:**
- ✅ >80% test coverage across all components
- ✅ OWASP Top 10 security compliance verified
- ✅ Performance requirements met (<200ms API, <3s page loads)
- ✅ All quality gates passed in reviewer assessment

**Process Success:**
- ✅ All agent handoffs completed successfully with <5% requiring clarification
- ✅ Complete documentation current and validated
- ✅ Comprehensive memory preservation across all phases
- ✅ User satisfaction with development process and outcomes

**Framework Validation:**
- ✅ Framework proven effective for concept-to-MVP delivery
- ✅ Agent specialization demonstrated value
- ✅ Process documentation enables replication
- ✅ Continuous improvement mechanisms established

---

*This comprehensive workflow enables teams to go from initial concept to production-ready MVP using the ClaudeCraft's proven multi-agent development approach. Each phase builds upon the previous, with clear handoffs, quality gates, and documentation to ensure consistent, high-quality outcomes.*