# Global Rules for Stack-Junkie-Framework

## Core Development Principles

### One Feature at a Time
- Implement features completely before starting the next one
- Avoid parallel feature development that could create conflicts
- Focus on quality over quantity
- Complete testing and documentation before moving on

### Token Awareness
- Monitor context usage continuously
- Stop at 75% context limit to preserve handoff quality
- Prepare detailed handoff documentation before reaching limits
- Use lightweight context for task-focused agents
- Maintain rich context for planning agents

### Security First
- Never compromise on defensive security practices
- Follow OWASP Top 10 guidelines for all features
- Implement input validation and sanitization
- Use environment variables for all secrets and configuration
- Regular security audits for all code changes

### Quality Standards
- Maintain test coverage above 80% for new features
- Keep files under 300 lines maximum
- Follow established code style and conventions
- Require code review before any commits
- Document architectural decisions and rationale

## Technology Stack Requirements

### Mainstream Technologies Only
- **Frontend**: React/Next.js with Tailwind CSS
- **Backend**: Python/FastAPI or Node.js/Express
- **Database**: PostgreSQL for production, SQLite for prototypes
- **Testing**: Jest/Vitest for frontend, pytest for backend
- **Deployment**: Vercel for frontend, Railway/Render for backend

### Rationale for Mainstream Focus
- Ensures long-term maintainability
- Maximizes available documentation and community support
- Reduces learning curve for new team members
- Provides stability and reliability
- Enables easier hiring and collaboration

## Agent Behavior Standards

### Memory Management
- Update memory-bank.md after each significant action
- Log all completed work in progress-log.md
- Track bugs with resolution details in bug-tracker.md
- Maintain project context in CLAUDE.md
- Archive old memory to separate historical files

### Commit Practices
- Prepare commits with descriptive messages
- Never auto-commit without explicit user permission
- Stage changes thoughtfully and logically
- Include relevant file updates in single commits
- Use conventional commit message format

### Documentation Requirements
- Reference PRD constantly to prevent scope drift
- Update relevant documentation with code changes
- Keep README.md current with setup and usage instructions
- Document API changes immediately
- Maintain troubleshooting guides

### Testing Standards
- Use test-driven development workflow
- Write tests before or during implementation
- Ensure all tests pass before handoffs
- Include edge cases and error conditions
- Maintain performance and security tests

## Handoff Protocol

### Context Preservation
- Create detailed transition prompts before handoffs
- Include current state summary and next steps
- Document any blockers or issues encountered
- Provide token usage information
- List all files modified during session

### Handoff Triggers
- Feature completion (to next phase agent)
- Complexity threshold reached (to specialist agent)
- Token limit approaching (75% context usage)
- Expertise required outside current agent scope
- User requests different agent involvement

### Quality Gates
- All tests must pass before handoff
- No broken functionality can be handed off
- Documentation must be updated for changes
- Security review completed for new features
- Performance impact assessed and documented

## Error Handling & Recovery

### When Things Go Wrong
- Document the issue immediately in bug-tracker.md
- Assess impact and severity of the problem
- Create reproduction steps and error details
- Identify root cause and prevention measures
- Implement fix and verify resolution

### Prevention Measures
- Regular code reviews and quality checks
- Comprehensive testing at multiple levels
- Security audits and vulnerability scanning
- Performance monitoring and optimization
- Proactive dependency management

## Communication Standards

### User Interaction
- Provide clear progress updates
- Ask for clarification when requirements are ambiguous
- Explain technical decisions and trade-offs
- Request permission for significant changes
- Summarize work completed in each session

### Agent-to-Agent Communication
- Use standardized handoff templates
- Provide comprehensive context and rationale
- Include specific next steps and recommendations
- Document lessons learned and best practices
- Share reusable patterns and solutions

## Project Health Monitoring

### Quality Metrics
- Code quality scores and trends
- Test coverage percentages
- Bug discovery and resolution rates
- Performance benchmarks
- Security vulnerability counts

### Process Metrics
- Feature completion velocity
- Handoff success rates
- Agent specialization effectiveness
- User satisfaction with outcomes
- Time from feature request to delivery

### Continuous Improvement
- Regular retrospectives on process effectiveness
- Adaptation of rules based on project experience
- Collection and integration of user feedback
- Benchmarking against industry best practices
- Evolution of framework capabilities

## Compliance & Standards

### Code Style
- Use established linters and formatters
- Follow language-specific best practices
- Maintain consistent naming conventions
- Implement proper error handling patterns
- Write self-documenting code

### Security Compliance
- Regular dependency vulnerability scans
- Implementation of security headers
- Proper authentication and authorization
- Data protection and privacy measures
- Incident response procedures

### Performance Standards
- API response times under 200ms
- Page load times under 3 seconds
- Database query optimization
- Efficient resource utilization
- Scalability planning and testing

---

*These global rules ensure consistent, high-quality development across all agents and projects within the Stack-Junkie-Framework ecosystem.*