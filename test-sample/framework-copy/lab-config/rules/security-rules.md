# Security Rules for Stack-Junkie-Framework

## Security-First Development Approach

### Core Security Principles
- Security is never optional or "added later"
- Every feature must include security considerations
- Default to secure configurations and fail-safe behaviors
- Regular security audits and vulnerability assessments
- Immediate response to security vulnerabilities

### OWASP Top 10 Compliance
All code must address the OWASP Top 10 security risks:

1. **Broken Access Control**
2. **Cryptographic Failures**
3. **Injection**
4. **Insecure Design**
5. **Security Misconfiguration**
6. **Vulnerable and Outdated Components**
7. **Identification and Authentication Failures**
8. **Software and Data Integrity Failures**
9. **Security Logging and Monitoring Failures**
10. **Server-Side Request Forgery (SSRF)**

## Input Validation & Sanitization

### Universal Input Validation
- Validate ALL user inputs on both client and server side
- Use whitelist validation over blacklist when possible
- Implement proper data type validation
- Enforce length and format restrictions
- Sanitize inputs before processing or storage

### SQL Injection Prevention
- Use parameterized queries exclusively
- Never construct SQL with string concatenation
- Implement proper ORM usage patterns
- Validate and sanitize database inputs
- Use least privilege database accounts

### Cross-Site Scripting (XSS) Prevention
- Encode output based on context (HTML, JavaScript, CSS, URL)
- Use Content Security Policy (CSP) headers
- Validate and sanitize all user-generated content
- Implement proper template engine security
- Avoid innerHTML and similar dangerous methods

## Authentication & Authorization

### Authentication Requirements
- Use established authentication providers (Auth0, Clerk, Firebase Auth)
- Implement multi-factor authentication where appropriate
- Use secure session management practices
- Implement account lockout and rate limiting
- Secure password reset and recovery flows

### Authorization Implementation
- Implement role-based access control (RBAC)
- Use principle of least privilege
- Validate permissions on every request
- Implement proper session management
- Use secure token-based authentication (JWT with proper validation)

### Session Security
- Use secure, httpOnly, sameSite cookies
- Implement proper session timeout
- Regenerate session IDs after authentication
- Implement concurrent session management
- Secure session storage and transmission

## Secrets & Configuration Management

### Secrets Handling
- **NEVER** hardcode secrets, API keys, or passwords
- Use environment variables for all sensitive configuration
- Implement proper secrets rotation procedures
- Use dedicated secret management services when available
- Encrypt secrets at rest and in transit

### Environment Configuration
- Separate configuration from code
- Use different configurations for different environments
- Validate configuration values at startup
- Implement secure default configurations
- Document all configuration options and security implications

### API Key Management
- Rotate API keys regularly
- Use different keys for different environments
- Implement API key scoping and limitations
- Monitor API key usage and abuse
- Revoke compromised keys immediately

## Data Protection

### Data Encryption
- Encrypt sensitive data at rest
- Use HTTPS/TLS for all data in transit
- Implement proper key management
- Use strong encryption algorithms (AES-256, RSA-2048+)
- Regular encryption key rotation

### Personal Data Handling
- Implement data minimization principles
- Obtain proper consent for data collection
- Provide data export and deletion capabilities
- Implement data retention policies
- Ensure compliance with privacy regulations (GDPR, CCPA)

### Database Security
- Use encrypted database connections
- Implement database-level access controls
- Regular database security audits
- Backup encryption and secure storage
- Database query monitoring and anomaly detection

## Network & Infrastructure Security

### HTTPS & Transport Security
- Force HTTPS for all connections
- Implement HTTP Strict Transport Security (HSTS)
- Use proper TLS configurations
- Implement certificate pinning where appropriate
- Regular SSL/TLS configuration audits

### Security Headers
Implement the following security headers:
- Content-Security-Policy (CSP)
- X-Frame-Options
- X-Content-Type-Options
- Referrer-Policy
- Permissions-Policy

### Rate Limiting & DDoS Protection
- Implement rate limiting on all API endpoints
- Use progressive delays for repeated failures
- Implement CAPTCHA for suspicious activity
- Monitor and alert on unusual traffic patterns
- Implement circuit breakers for service protection

## Dependency & Supply Chain Security

### Dependency Management
- Regularly update all dependencies
- Use automated vulnerability scanning
- Review security advisories for all dependencies
- Implement dependency pinning with regular updates
- Use official package repositories only

### Software Supply Chain Security
- Verify package integrity and signatures
- Use lock files for reproducible builds
- Implement CI/CD security scanning
- Regular security audits of the build pipeline
- Secure development environment practices

### Vulnerability Response
- Monitor security advisories continuously
- Implement automated vulnerability scanning
- Prioritize security updates based on severity
- Test security patches before deployment
- Maintain incident response procedures

## Logging & Monitoring

### Security Logging
- Log all authentication attempts and failures
- Log authorization decisions and failures
- Log administrative actions and privilege escalations
- Implement tamper-evident logging
- Secure log storage and transmission

### Monitoring & Alerting
- Monitor for suspicious patterns and anomalies
- Implement real-time security alerting
- Regular security metrics review
- Automated response to security events
- Integration with security incident response

### Audit Trails
- Maintain comprehensive audit logs
- Implement log retention policies
- Ensure log integrity and non-repudiation
- Regular audit log review and analysis
- Compliance with regulatory requirements

## Code Security Practices

### Secure Coding Standards
- Follow language-specific security best practices
- Implement proper error handling without information disclosure
- Use security-focused code review checklists
- Implement secure design patterns
- Regular security training for development practices

### Security Testing
- Implement security unit tests
- Perform static application security testing (SAST)
- Conduct dynamic application security testing (DAST)
- Regular penetration testing
- Security-focused integration testing

### Incident Response
- Maintain security incident response procedures
- Implement security breach notification processes
- Regular incident response plan testing
- Post-incident security improvements
- Coordination with security teams and stakeholders

## Agent-Specific Security Responsibilities

### Planner Agent
- Include security requirements in all PRDs
- Plan for security testing and audits
- Consider security implications in architectural decisions
- Budget time and resources for security activities

### Coder Agent
- Implement secure coding practices
- Follow security guidelines for all implementations
- Include security tests with feature development
- Document security design decisions

### Tester Agent
- Include security testing in all test plans
- Implement automated security testing
- Test for common vulnerabilities
- Validate security controls and measures

### Documenter Agent
- Document security procedures and guidelines
- Maintain security incident response documentation
- Create security awareness documentation
- Document security architecture decisions

### Reviewer Agent
- Conduct thorough security code reviews
- Identify and prioritize security vulnerabilities
- Verify compliance with security standards
- Recommend security improvements and best practices

---

*These security rules ensure that all development within the Stack-Junkie-Framework maintains the highest security standards and protects both the framework and the applications built with it.*