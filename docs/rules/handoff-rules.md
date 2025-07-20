# Agent Handoff Rules for Stack-Junkie-Framework

## Handoff Philosophy

### Seamless Transitions
- Handoffs should enhance rather than disrupt development flow
- Each agent receives complete context to continue work effectively
- No information should be lost during agent transitions
- Handoffs are opportunities for quality assurance and fresh perspective

### Quality Gates
- All handoffs must meet minimum quality standards
- Work must be in a stable state before transition
- Documentation must be updated to reflect current state
- Next steps must be clearly defined and actionable

## Universal Handoff Requirements

### Pre-Handoff Checklist
- [ ] Current work is in a stable, working state
- [ ] All tests are passing
- [ ] Documentation is updated for changes made
- [ ] Token usage is logged and context optimized
- [ ] Files modified during session are documented
- [ ] Next steps are clearly defined
- [ ] Any blockers or issues are documented

### Handoff Documentation Template
Use the template in `workspace/templates/handoff-template.md` for all handoffs.

## Agent-Specific Handoff Rules

### Planner Agent Handoffs

#### To Coder Agent
**When:** Feature specifications are complete and implementation can begin
**Required State:**
- Feature fully specified in PRD with acceptance criteria
- Technical approach documented
- Dependencies identified and resolved
- Architecture decisions made and documented

### Coder Agent Handoffs

#### To Tester Agent
**When:** Feature implementation is complete and ready for verification
**Required State:**
- Feature implementation complete
- Basic unit tests written and passing
- Code follows style guidelines
- No obvious bugs or issues

#### Emergency Handoffs
**When:** Token limit approaching (75%) or blocking issues
**Required Actions:**
- Commit current work to safe branch
- Document exact stopping point
- Provide detailed continuation instructions
- Log any temporary workarounds

### Tester Agent Handoffs

#### To Coder Agent
**When:** Bugs found that require code changes
**Required State:**
- Bugs documented with reproduction steps
- Test cases created for bug scenarios
- Impact assessment completed
- Suggested fixes (if obvious)

#### To Reviewer Agent
**When:** Testing is complete and quality assessment needed
**Required State:**
- All tests passing
- Coverage requirements met
- Performance benchmarks established
- Security testing completed

### Documenter Agent Handoffs

#### To Any Agent
**When:** Documentation is complete and aligned with current state
**Required State:**
- All relevant documentation updated
- Links and references verified
- Examples tested and working
- User feedback incorporated

### Reviewer Agent Handoffs

#### To Planner Agent
**When:** Strategic changes recommended based on review
**Required State:**
- Comprehensive review completed
- Quality scores and metrics documented
- Improvement recommendations prioritized
- Impact assessment provided

#### To Coder Agent
**When:** Specific improvements needed
**Required State:**
- Specific code issues documented
- Improvement recommendations with examples
- Priority levels assigned
- Quality gates defined

## Emergency Handoff Procedures

### Critical Issues
**When:** Security vulnerabilities, system down, data loss risk
**Process:**
1. Immediate documentation of critical state
2. Emergency notification to appropriate agent
3. Skip normal quality gates if necessary
4. Focus on stabilization over completeness

### Context Overflow
**When:** Token limit exceeded or context becomes unwieldy
**Process:**
1. Summarize current state in memory-bank.md
2. Create lightweight handoff focused on immediate next steps
3. Archive detailed context in appropriate files
4. Provide next agent with context reconstruction guide

---

*These handoff rules ensure smooth, efficient transitions between agents while maintaining code quality, project momentum, and knowledge preservation throughout the development process.*