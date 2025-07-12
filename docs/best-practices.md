# 🏆 Stack-Junkie-Framework Best Practices

*Proven patterns and practices for maximizing development velocity, quality, and security with the multi-agent framework.*

---

## 📖 Table of Contents

1. [Development Philosophy](#development-philosophy)
2. [Agent Management](#agent-management)
3. [Code Quality Standards](#code-quality-standards)
4. [Security Best Practices](#security-best-practices)
5. [Testing Strategies](#testing-strategies)
6. [Documentation Standards](#documentation-standards)
7. [Performance Optimization](#performance-optimization)
8. [Deployment & Operations](#deployment--operations)

---

## 🎯 Development Philosophy

### Core Principles

#### 1. **One Feature at a Time**
```
✅ Implement login authentication completely
❌ Start login, then begin dashboard, then add notifications
```
- **Why**: Ensures features are fully complete with tests and documentation
- **How**: Use todo.md to track priorities, focus on single PRD section
- **Result**: Higher quality, fewer bugs, better documentation

#### 2. **Security-First Development**
```
✅ Validate all inputs, use parameterized queries, implement rate limiting
❌ "We'll add security later"
```
- **Why**: Security integrated from start is more effective and cheaper
- **How**: Follow OWASP Top 10, security code reviews, automated scanning
- **Result**: Secure applications from day one

#### 3. **Quality over Velocity**
```
✅ Complete feature with 90% test coverage and documentation
❌ Rush to implement 3 features with 30% coverage
```
- **Why**: High quality features compound; technical debt slows future development
- **How**: Use quality gates, comprehensive testing, code reviews
- **Result**: Sustainable development velocity

#### 4. **Documentation-Driven Development**
```
✅ Update docs with every feature change
❌ Plan to "document everything at the end"
```
- **Why**: Current documentation enables team collaboration and user adoption
- **How**: Include documentation in definition of done, use Documenter Agent
- **Result**: Always-current, useful documentation

---

## 🤖 Agent Management

### Agent Selection Strategy

#### **Start with Planner Agent When:**
- Beginning new projects or major features
- Requirements are unclear or complex
- Multiple features need coordination
- Architectural decisions are needed

**Example Prompt:**
```
"Create comprehensive PRD for a task management application with 
user authentication, project boards, real-time collaboration, and 
mobile responsiveness. Include security requirements and testing strategy."
```

#### **Use Coder Agent When:**
- Implementing well-defined features
- Technical setup is needed
- Specific bugs need fixing
- Configuration updates are required

**Example Prompt:**
```
"Implement user authentication API with JWT tokens, rate limiting, 
email verification, and role-based access control following 
Stack-Junkie-Framework security standards."
```

#### **Engage Tester Agent When:**
- Features need comprehensive validation
- Performance testing is required
- Security testing is needed
- Bug investigation is necessary

**Example Prompt:**
```
"Create comprehensive test suite for the authentication system including 
unit tests, integration tests, security tests, and performance benchmarks. 
Test edge cases and error conditions."
```

#### **Utilize Documenter Agent When:**
- API changes need documentation
- User guides need updates
- Repository maintenance is required
- Code examples need validation

**Example Prompt:**
```
"Update all documentation for the new authentication system including 
API reference, user guide, troubleshooting section, and code examples. 
Ensure all examples are tested and working."
```

#### **Deploy Reviewer Agent When:**
- Quality assessment is needed
- Security audit is required
- Performance optimization is needed
- Code review before major releases

**Example Prompt:**
```
"Perform comprehensive quality review of the authentication system 
including code quality assessment, security audit, performance analysis, 
and provide improvement recommendations."
```

### Handoff Management

#### **Optimal Handoff Points**
```
✅ Feature complete with tests passing
✅ Natural workflow breakpoints
✅ When expertise outside current agent scope is needed
✅ At 75% token capacity

❌ In middle of implementation
❌ With failing tests
❌ Without documentation updates
❌ When frustrated or stuck (take a break instead)
```

#### **Handoff Quality Checklist**
- [ ] Current state is stable and working
- [ ] All tests are passing
- [ ] Changes are committed to git
- [ ] Documentation reflects current state
- [ ] Next steps are clearly defined
- [ ] Important context is preserved

### Context Management

#### **Memory File Maintenance**
```
Daily: Update progress-log.md with work completed
Weekly: Review and update memory-bank.md with key decisions
Monthly: Archive old content, summarize patterns
```

#### **Token Awareness**
- Monitor context usage throughout sessions
- Start handoff preparation at 65% capacity
- Complete handoff by 75% capacity
- Use memory files to preserve context efficiently

---

## 💻 Code Quality Standards

### File Organization

#### **Maximum File Sizes**
```
Components: 300 lines max
API Routes: 200 lines max
Services: 400 lines max
Tests: 500 lines max (many test cases)
```

#### **Directory Structure Standards**
```
frontend/
├── src/
│   ├── components/          # Reusable UI components
│   │   ├── ui/             # Basic UI elements
│   │   └── features/       # Feature-specific components
│   ├── pages/              # Next.js pages
│   ├── hooks/              # Custom React hooks
│   ├── services/           # API communication
│   ├── utils/              # Utility functions
│   └── types/              # TypeScript definitions

backend/
├── app/                    # Application code
│   ├── api/               # API routes
│   ├── models/            # Data models
│   ├── services/          # Business logic
│   ├── utils/             # Utility functions
│   └── middleware/        # Custom middleware
└── tests/                 # Test files
```

### Coding Standards

#### **Function Design**
```typescript
// ✅ Good: Single responsibility, clear name, proper typing
async function validateUserEmail(email: string): Promise<boolean> {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}

// ❌ Bad: Multiple responsibilities, unclear name
function checkStuff(data: any): any {
  // validates email and also sends notification
  // and also logs to database
}
```

#### **Error Handling**
```typescript
// ✅ Good: Specific error types, proper logging
try {
  const user = await userService.findById(userId);
  if (!user) {
    throw new NotFoundError(`User ${userId} not found`);
  }
  return user;
} catch (error) {
  logger.error('Failed to fetch user', { userId, error });
  throw error;
}

// ❌ Bad: Generic error handling, no logging
try {
  const user = await userService.findById(userId);
  return user;
} catch (error) {
  throw new Error('Something went wrong');
}
```

#### **Configuration Management**
```typescript
// ✅ Good: Environment-based config with validation
const config = {
  port: parseInt(process.env.PORT || '3000'),
  databaseUrl: process.env.DATABASE_URL || 'sqlite:///dev.db',
  jwtSecret: process.env.JWT_SECRET || throwError('JWT_SECRET required'),
};

// ❌ Bad: Hardcoded values
const config = {
  port: 3000,
  databaseUrl: 'postgresql://localhost:5432/myapp',
  jwtSecret: 'hardcoded-secret',
};
```

---

## 🛡️ Security Best Practices

### Input Validation

#### **API Endpoint Security**
```python
# ✅ Good: Comprehensive validation
from pydantic import BaseModel, EmailStr, validator

class UserCreateRequest(BaseModel):
    email: EmailStr
    password: str
    name: str
    
    @validator('password')
    def validate_password(cls, v):
        if len(v) < 8:
            raise ValueError('Password must be at least 8 characters')
        if not re.search(r'[A-Z]', v):
            raise ValueError('Password must contain uppercase letter')
        return v
    
    @validator('name')
    def validate_name(cls, v):
        if len(v.strip()) < 2:
            raise ValueError('Name must be at least 2 characters')
        return v.strip()
```

#### **Database Query Security**
```python
# ✅ Good: Parameterized queries
async def get_user_by_email(email: str):
    query = "SELECT * FROM users WHERE email = $1"
    return await database.fetch_one(query, email)

# ❌ Bad: SQL injection vulnerable
async def get_user_by_email(email: str):
    query = f"SELECT * FROM users WHERE email = '{email}'"
    return await database.fetch_one(query)
```

### Authentication & Authorization

#### **JWT Implementation**
```python
# ✅ Good: Secure JWT with proper validation
import jwt
from datetime import datetime, timedelta

def create_access_token(user_id: str, expires_delta: timedelta = None):
    to_encode = {
        "sub": user_id,
        "exp": datetime.utcnow() + (expires_delta or timedelta(minutes=15)),
        "iat": datetime.utcnow(),
        "type": "access"
    }
    return jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)

def verify_token(token: str):
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        if payload.get("type") != "access":
            raise JWTError("Invalid token type")
        return payload
    except JWTError:
        raise HTTPException(401, "Invalid token")
```

#### **Rate Limiting**
```python
# ✅ Good: Comprehensive rate limiting
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)

@app.post("/api/auth/login")
@limiter.limit("5/minute")  # 5 attempts per minute
async def login(request: Request, credentials: LoginRequest):
    # Login implementation
    pass
```

### Secrets Management

#### **Environment Variables**
```bash
# ✅ Good: Strong, unique secrets
DATABASE_URL=postgresql://username:password@host:5432/db
JWT_SECRET=your-long-random-secret-here-min-32-chars
API_KEY=sk-proj-abc123def456...
ENCRYPTION_KEY=fernet_key_here

# ❌ Bad: Weak or default secrets
DATABASE_URL=postgresql://admin:admin@localhost:5432/app
JWT_SECRET=secret
API_KEY=test
```

---

## 🧪 Testing Strategies

### Test Structure

#### **Testing Pyramid**
```
E2E Tests (5%)     - Critical user journeys
Integration (25%)  - API endpoints, database operations  
Unit Tests (70%)   - Individual functions, components
```

#### **Test Organization**
```
tests/
├── unit/                   # Unit tests
│   ├── components/        # Component tests
│   ├── services/          # Service layer tests
│   └── utils/             # Utility function tests
├── integration/           # Integration tests
│   ├── api/              # API endpoint tests
│   └── database/         # Database operation tests
└── e2e/                  # End-to-end tests
    ├── user-flows/       # Complete user journeys
    └── critical-paths/   # Business-critical functionality
```

### Testing Best Practices

#### **Unit Test Structure**
```javascript
// ✅ Good: Clear, focused, comprehensive
describe('UserService', () => {
  describe('validateEmail', () => {
    it('should return true for valid email', () => {
      expect(validateEmail('user@example.com')).toBe(true);
    });
    
    it('should return false for invalid email', () => {
      expect(validateEmail('invalid-email')).toBe(false);
    });
    
    it('should handle edge cases', () => {
      expect(validateEmail('')).toBe(false);
      expect(validateEmail(null)).toBe(false);
      expect(validateEmail('user@')).toBe(false);
    });
  });
});
```

#### **Integration Test Example**
```python
# ✅ Good: Database integration test
async def test_create_user_integration():
    # Setup
    user_data = {
        "email": "test@example.com",
        "password": "SecurePass123",
        "name": "Test User"
    }
    
    # Execute
    response = await client.post("/api/users", json=user_data)
    
    # Verify
    assert response.status_code == 201
    user = await User.get(email="test@example.com")
    assert user is not None
    assert user.name == "Test User"
    
    # Cleanup
    await user.delete()
```

### Performance Testing

#### **Load Testing with k6**
```javascript
// Load test critical endpoints
import http from 'k6/http';
import { check } from 'k6';

export let options = {
  stages: [
    { duration: '30s', target: 20 },
    { duration: '1m', target: 20 },
    { duration: '20s', target: 0 },
  ],
};

export default function() {
  let response = http.get('http://localhost:8000/api/users');
  check(response, {
    'status is 200': (r) => r.status === 200,
    'response time < 500ms': (r) => r.timings.duration < 500,
  });
}
```

---

## 📚 Documentation Standards

### Documentation Hierarchy

#### **User Documentation**
```
README.md           - Project overview and quick start
docs/
├── setup-guide.md  - Detailed setup instructions
├── user-guide.md   - How to use the application
├── api-reference.md - API documentation
└── troubleshooting.md - Common issues and solutions
```

#### **Developer Documentation**
```
CONTRIBUTING.md     - How to contribute to the project
docs/
├── architecture.md - System architecture overview
├── development.md  - Development workflow
├── deployment.md   - Deployment procedures
└── testing.md      - Testing strategies
```

### API Documentation

#### **Endpoint Documentation**
```python
# ✅ Good: Comprehensive API documentation
@app.post("/api/users", response_model=UserResponse)
async def create_user(user: UserCreateRequest):
    """
    Create a new user account.
    
    Args:
        user: User creation data including email, password, and name
        
    Returns:
        UserResponse: Created user data with generated ID
        
    Raises:
        400: Invalid input data or email already exists
        500: Database error during user creation
        
    Example:
        ```python
        response = requests.post("/api/users", json={
            "email": "user@example.com",
            "password": "SecurePass123",
            "name": "John Doe"
        })
        ```
    """
```

---

## ⚡ Performance Optimization

### Frontend Performance

#### **React Optimization**
```typescript
// ✅ Good: Optimized component
import { memo, useMemo, useCallback } from 'react';

const UserList = memo(({ users, onUserSelect }) => {
  const sortedUsers = useMemo(() => 
    users.sort((a, b) => a.name.localeCompare(b.name)), 
    [users]
  );
  
  const handleUserClick = useCallback((userId) => {
    onUserSelect(userId);
  }, [onUserSelect]);
  
  return (
    <div>
      {sortedUsers.map(user => (
        <UserCard 
          key={user.id} 
          user={user} 
          onClick={handleUserClick}
        />
      ))}
    </div>
  );
});
```

#### **Bundle Optimization**
```javascript
// next.config.js - Bundle analysis and optimization
module.exports = {
  webpack: (config, { isServer }) => {
    if (!isServer) {
      config.resolve.fallback.fs = false;
    }
    return config;
  },
  experimental: {
    esmExternals: true,
  },
  images: {
    domains: ['example.com'],
  },
};
```

### Backend Performance

#### **Database Optimization**
```python
# ✅ Good: Optimized database queries
async def get_users_with_posts(limit: int = 10):
    # Use joins instead of N+1 queries
    query = """
        SELECT u.*, COUNT(p.id) as post_count
        FROM users u
        LEFT JOIN posts p ON u.id = p.user_id
        GROUP BY u.id
        ORDER BY u.created_at DESC
        LIMIT $1
    """
    return await database.fetch_all(query, limit)

# ❌ Bad: N+1 query problem
async def get_users_with_posts_bad(limit: int = 10):
    users = await User.all().limit(limit)
    for user in users:
        user.post_count = await Post.filter(user_id=user.id).count()
    return users
```

#### **Caching Strategy**
```python
# ✅ Good: Redis caching with TTL
import redis
import json
from functools import wraps

redis_client = redis.Redis(host='localhost', port=6379, db=0)

def cache_result(ttl: int = 300):
    def decorator(func):
        @wraps(func)
        async def wrapper(*args, **kwargs):
            cache_key = f"{func.__name__}:{hash(str(args) + str(kwargs))}"
            
            # Try to get from cache
            cached = redis_client.get(cache_key)
            if cached:
                return json.loads(cached)
            
            # Execute function and cache result
            result = await func(*args, **kwargs)
            redis_client.setex(cache_key, ttl, json.dumps(result))
            return result
        return wrapper
    return decorator

@cache_result(ttl=600)  # Cache for 10 minutes
async def get_popular_posts():
    # Expensive database query
    return await database.fetch_all("SELECT * FROM posts ORDER BY views DESC LIMIT 10")
```

---

## 🚀 Deployment & Operations

### Environment Management

#### **Environment Separation**
```
Development  → Local development with SQLite, debug enabled
Staging      → Production-like with PostgreSQL, limited debug
Production   → Full production setup, monitoring, backups
```

#### **Configuration Management**
```python
# ✅ Good: Environment-based configuration
import os
from enum import Enum

class Environment(Enum):
    DEVELOPMENT = "development"
    STAGING = "staging"
    PRODUCTION = "production"

class Settings:
    def __init__(self):
        self.environment = Environment(os.getenv("ENVIRONMENT", "development"))
        self.debug = self.environment == Environment.DEVELOPMENT
        self.database_url = os.getenv("DATABASE_URL")
        self.secret_key = os.getenv("SECRET_KEY")
        
        # Validate required settings
        if not self.secret_key:
            raise ValueError("SECRET_KEY environment variable required")

settings = Settings()
```

### Monitoring & Logging

#### **Structured Logging**
```python
# ✅ Good: Structured logging with context
import structlog

logger = structlog.get_logger()

async def create_user(user_data: dict):
    logger.info(
        "Creating user",
        email=user_data["email"],
        user_id=user_data.get("id"),
        action="user_creation"
    )
    
    try:
        user = await User.create(**user_data)
        logger.info(
            "User created successfully",
            user_id=user.id,
            email=user.email,
            action="user_creation_success"
        )
        return user
    except Exception as e:
        logger.error(
            "Failed to create user",
            email=user_data["email"],
            error=str(e),
            action="user_creation_failed"
        )
        raise
```

#### **Health Check Implementation**
```python
# ✅ Good: Comprehensive health checks
@app.get("/health")
async def health_check():
    checks = {
        "database": await check_database_connection(),
        "redis": await check_redis_connection(),
        "external_api": await check_external_api(),
    }
    
    all_healthy = all(checks.values())
    status_code = 200 if all_healthy else 503
    
    return JSONResponse(
        status_code=status_code,
        content={
            "status": "healthy" if all_healthy else "unhealthy",
            "checks": checks,
            "timestamp": datetime.utcnow().isoformat(),
        }
    )
```

### Continuous Integration

#### **GitHub Actions Best Practices**
```yaml
# ✅ Good: Comprehensive CI pipeline
name: CI/CD Pipeline

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        python-version: [3.9, 3.10, 3.11]
    
    steps:
    - uses: actions/checkout@v4
    
    - name: Set up Python
      uses: actions/setup-python@v4
      with:
        python-version: ${{ matrix.python-version }}
        cache: 'pip'
    
    - name: Install dependencies
      run: pip install -r requirements.txt
    
    - name: Run linting
      run: |
        flake8 .
        black --check .
        isort --check-only .
    
    - name: Run security scan
      run: |
        bandit -r app/
        safety check
    
    - name: Run tests
      run: pytest --cov=app --cov-report=xml
    
    - name: Upload coverage
      uses: codecov/codecov-action@v3
```

---

## 🎯 Success Metrics

### Development Metrics

#### **Quality Indicators**
- **Test Coverage**: >80% for all new code
- **Code Review**: 100% of changes reviewed
- **Bug Rate**: <5 bugs per 100 lines of code
- **Security Issues**: 0 high/critical vulnerabilities

#### **Velocity Indicators**
- **Feature Completion**: 90% of planned features delivered on time
- **Agent Handoffs**: <5% require clarification
- **Documentation Currency**: 95% of docs updated within 1 day of code changes
- **Deployment Success**: 99% successful deployments

### Framework Adoption

#### **Team Productivity**
- **Setup Time**: New projects ready in <30 minutes
- **Onboarding**: New developers productive in <2 days
- **Context Preservation**: <10% context loss between sessions
- **Quality Gates**: 95% of features pass review on first attempt

---

## 🚀 Continuous Improvement

### Regular Reviews

#### **Weekly Team Retrospectives**
- What went well with the agent workflow?
- What could be improved?
- Any new patterns or anti-patterns discovered?
- Framework updates or customizations needed?

#### **Monthly Framework Updates**
- Review and update agent role definitions
- Refine quality gates based on learnings
- Update documentation based on user feedback
- Optimize handoff procedures

### Community Contribution

#### **Share Learnings**
- Document successful patterns in best-practices.md
- Contribute improvements back to framework
- Share case studies and success stories
- Help other teams adopt the framework

---

*Following these best practices ensures you get maximum value from the Stack-Junkie-Framework while maintaining high standards for security, quality, and team productivity! 🚀*