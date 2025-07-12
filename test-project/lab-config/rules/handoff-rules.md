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
```markdown
## Handoff Summary
**From:** [Current Agent Role]
**To:** [Next Agent Role]
**Date:** [Handoff date]
**Session Duration:** [Time spent]

## Current State
**Branch:** [Current git branch]
**Last Commit:** [Commit hash and message]
**Overall Progress:** [% complete or milestone status]

## Work Completed
- [Specific task 1 completed]
- [Specific task 2 completed]
- [Specific task 3 completed]

## Files Modified
- [file1.js] - [description of changes]
- [file2.py] - [description of changes]
- [README.md] - [description of changes]

## Current Feature Status
**Feature:** [Feature name from PRD]
**Status:** [In Progress/Complete/Blocked]
**Acceptance Criteria Status:**
- [ ] [Criteria 1] - [Complete/In Progress/Not Started]
- [ ] [Criteria 2] - [Complete/In Progress/Not Started]

## Next Agent Tasks
**Primary Objective:** [Main goal for next agent]
**Specific Tasks:**
1. [Task 1 with clear acceptance criteria]
2. [Task 2 with clear acceptance criteria]
3. [Task 3 with clear acceptance criteria]

## Context & Decisions
**Key Decisions Made:**
- [Decision 1 and rationale]
- [Decision 2 and rationale]

**Important Context:**
- [Context item 1]
- [Context item 2]

## Blockers & Issues
**Current Blockers:**
- [Blocker 1 and impact]
- [Blocker 2 and suggested resolution]

**Known Issues:**
- [Issue 1 and workaround]
- [Issue 2 and investigation status]

## Quality Status
**Test Status:** [All passing/X failing/Coverage %]
**Code Quality:** [Any linting issues or technical debt]
**Security Status:** [Any security considerations]
**Performance Status:** [Any performance impacts]

## Resource Usage
**Token Usage:** [Current context utilization %]
**Session Efficiency:** [Productivity assessment]
**Estimated Remaining Work:** [Time/effort estimate]

## References
**PRD Section:** [Relevant PRD sections]
**Related Issues:** [GitHub issue numbers]
**Documentation Updated:** [Links to updated docs]
```

## Agent-Specific Handoff Rules

### Planner Agent Handoffs

#### To Coder Agent
**When:** Feature specifications are complete and implementation can begin
**Required State:**
- Feature fully specified in PRD with acceptance criteria
- Technical approach documented
- Dependencies identified and resolved
- Architecture decisions made and documented

**Handoff Content:**
- Complete feature specification
- Technical requirements and constraints
- Suggested implementation approach
- Testing requirements
- Definition of done

#### To Other Agents
**Trigger Conditions:**
- Testing strategy needed → Tester Agent
- Documentation requirements → Documenter Agent
- Quality assessment needed → Reviewer Agent

### Coder Agent Handoffs

#### To Tester Agent
**When:** Feature implementation is complete and ready for verification
**Required State:**
- Feature implementation complete
- Basic unit tests written and passing
- Code follows style guidelines
- No obvious bugs or issues

**Handoff Content:**
- Implementation details and approach
- Test cases already implemented
- Known limitations or edge cases
- Performance considerations
- Security implications

#### To Planner Agent
**When:** Scope expansion needed or architectural decisions required
**Trigger Conditions:**
- Feature scope is unclear or expanding
- Architecture decisions needed beyond Coder Agent expertise
- Multiple features need coordination
- Requirements clarification needed

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

## Handoff Quality Assurance

### Handoff Validation
- Next agent confirms handoff is complete and clear
- Missing information identified and requested immediately
- Context validation performed before starting new work
- Handoff quality scored and tracked

### Handoff Metrics
- **Handoff Success Rate:** % of handoffs that don't require clarification
- **Transition Time:** Time from handoff to productive work start
- **Context Preservation:** Quality of information transfer
- **Outcome Alignment:** Final result matches handoff expectations

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

## Handoff Success Patterns

### Successful Handoff Characteristics
- Clear, actionable next steps
- Complete context preservation
- Stable starting state for next agent
- Efficient knowledge transfer
- Quality gates maintained

### Common Handoff Failures
- Incomplete context or missing decisions
- Unstable code state at handoff
- Unclear next steps or success criteria
- Technical debt not documented
- Quality issues not addressed

## Continuous Improvement

### Handoff Retrospectives
- Regular review of handoff effectiveness
- Agent feedback on handoff quality
- Process improvements based on patterns
- Template updates and refinements
- Success story documentation

### Process Evolution
- Adaptation based on project complexity
- Tool improvements for better handoffs
- Agent specialization optimization
- Quality gate refinement
- Efficiency improvements

---

*These handoff rules ensure smooth, efficient transitions between agents while maintaining code quality, project momentum, and knowledge preservation throughout the development process.*