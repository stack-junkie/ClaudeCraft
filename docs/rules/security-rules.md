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

## Data Protection

### Data Encryption
- Encrypt sensitive data at rest
- Use HTTPS/TLS for all data in transit
- Implement proper key management
- Use strong encryption algorithms (AES-256, RSA-2048+)
- Regular encryption key rotation

### Network & Infrastructure Security
- Force HTTPS for all connections
- Implement HTTP Strict Transport Security (HSTS)
- Use proper TLS configurations
- Implement security headers (CSP, X-Frame-Options, etc.)
- Rate limiting and DDoS protection

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