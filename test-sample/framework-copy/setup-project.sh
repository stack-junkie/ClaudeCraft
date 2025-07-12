#!/bin/bash

# Stack-Junkie-Framework Project Setup Script
# This script initializes a new project using the Stack-Junkie-Framework template

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_NAME=""
TECH_STACK=""

# Print colored output
print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

print_header() {
    echo -e "${BLUE}"
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║                Stack-Junkie-Framework Setup                  ║"
    echo "║           Multi-Agent Development Framework                   ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
}

# Show usage information
show_usage() {
    echo "Usage: $0 <project-name> [tech-stack]"
    echo ""
    echo "Arguments:"
    echo "  project-name    Name of your project (required)"
    echo "  tech-stack      Technology stack choice (optional)"
    echo ""
    echo "Tech Stack Options:"
    echo "  react-python    React/Next.js + Python/FastAPI (default)"
    echo "  react-node      React/Next.js + Node.js/Express"
    echo "  react-only      React/Next.js frontend only"
    echo ""
    echo "Examples:"
    echo "  $0 \"my-awesome-app\""
    echo "  $0 \"my-awesome-app\" react-node"
    echo "  $0 \"my-awesome-app\" react-only"
}

# Validate project name
validate_project_name() {
    if [[ -z "$PROJECT_NAME" ]]; then
        print_error "Project name is required"
        show_usage
        exit 1
    fi
    
    # Check if project name contains valid characters
    if [[ ! "$PROJECT_NAME" =~ ^[a-zA-Z0-9_-]+$ ]]; then
        print_error "Project name can only contain letters, numbers, hyphens, and underscores"
        exit 1
    fi
}

# Validate tech stack choice
validate_tech_stack() {
    case "$TECH_STACK" in
        "react-python"|"react-node"|"react-only"|"")
            ;;
        *)
            print_error "Invalid tech stack: $TECH_STACK"
            echo "Valid options: react-python, react-node, react-only"
            exit 1
            ;;
    esac
    
    # Set default if not provided
    if [[ -z "$TECH_STACK" ]]; then
        TECH_STACK="react-python"
    fi
}

# Remove lab-specific files that shouldn't be in project
cleanup_lab_files() {
    print_info "Cleaning up lab-specific files..."
    
    # Remove lab configuration directory
    if [[ -d "lab-config" ]]; then
        rm -rf "lab-config"
        print_success "Removed lab-config directory"
    fi
    
    # Remove crystal configuration directory
    if [[ -d "crystal-config" ]]; then
        rm -rf "crystal-config"
        print_success "Removed crystal-config directory"
    fi
    
    # Remove development directory
    if [[ -d "development" ]]; then
        rm -rf "development"
        print_success "Removed development directory"
    fi
    
    # Remove setup scripts
    if [[ -f "setup-project.sh" ]]; then
        rm "setup-project.sh"
        print_success "Removed setup-project.sh"
    fi
    
    if [[ -f "setup-with-crystal.sh" ]]; then
        rm "setup-with-crystal.sh"
        print_success "Removed setup-with-crystal.sh"
    fi
}

# Create project-specific directories
create_project_structure() {
    print_info "Creating project structure..."
    
    # Create source directories based on tech stack
    case "$TECH_STACK" in
        "react-python")
            mkdir -p "frontend/src/components" "frontend/src/pages" "frontend/src/hooks" "frontend/src/utils"
            mkdir -p "backend/app/api" "backend/app/models" "backend/app/services" "backend/app/utils"
            mkdir -p "backend/tests" "frontend/tests"
            print_success "Created React + Python project structure"
            ;;
        "react-node")
            mkdir -p "frontend/src/components" "frontend/src/pages" "frontend/src/hooks" "frontend/src/utils"
            mkdir -p "backend/src/routes" "backend/src/models" "backend/src/middleware" "backend/src/utils"
            mkdir -p "backend/tests" "frontend/tests"
            print_success "Created React + Node.js project structure"
            ;;
        "react-only")
            mkdir -p "src/components" "src/pages" "src/hooks" "src/utils" "src/services"
            mkdir -p "tests"
            print_success "Created React-only project structure"
            ;;
    esac
    
    # Create common directories
    mkdir -p "docs/api" "docs/deployment"
    print_success "Created documentation directories"
}

# Update template files with project information
update_template_files() {
    print_info "Updating template files with project information..."
    
    # Update CLAUDE.md
    if [[ -f "CLAUDE.md" ]]; then
        sed -i.bak "s/\[PROJECT NAME\]/$PROJECT_NAME/g" "CLAUDE.md"
        sed -i.bak "s/\[INSERT PROJECT NAME\]/$PROJECT_NAME/g" "CLAUDE.md"
        rm "CLAUDE.md.bak" 2>/dev/null || true
        print_success "Updated CLAUDE.md with project name"
    fi
    
    # Update PRD template
    if [[ -f "prd.md" ]]; then
        sed -i.bak "s/\[INSERT PROJECT NAME\]/$PROJECT_NAME/g" "prd.md"
        
        # Update tech stack in PRD
        case "$TECH_STACK" in
            "react-python")
                sed -i.bak "s/\[Python\/FastAPI OR Node.js\/Express\]/Python\/FastAPI/g" "prd.md"
                sed -i.bak "s/\[pytest for Python OR Jest for Node.js\]/pytest/g" "prd.md"
                ;;
            "react-node")
                sed -i.bak "s/\[Python\/FastAPI OR Node.js\/Express\]/Node.js\/Express/g" "prd.md"
                sed -i.bak "s/\[pytest for Python OR Jest for Node.js\]/Jest/g" "prd.md"
                ;;
            "react-only")
                sed -i.bak "s/\*\*Backend:\*\* \[Python\/FastAPI OR Node.js\/Express\]/\*\*Backend:\*\* None (Frontend only)/g" "prd.md"
                ;;
        esac
        
        rm "prd.md.bak" 2>/dev/null || true
        print_success "Updated prd.md with project information"
    fi
    
    # Update package.json name if it exists
    if [[ -f "package.json" ]]; then
        sed -i.bak "s/\"name\": \".*\"/\"name\": \"$PROJECT_NAME\"/g" "package.json"
        rm "package.json.bak" 2>/dev/null || true
        print_success "Updated package.json with project name"
    fi
    
    # Create initial todo.md content
    if [[ -f "todo.md" ]]; then
        cat > "todo.md" << EOF
# $PROJECT_NAME - Feature Implementation Checklist

## Current Sprint
*Updated by Planner Agent*

### High Priority - MVP
- [ ] Project setup and initial configuration
- [ ] Basic project structure implementation
- [ ] Initial development environment setup

### Medium Priority - Enhancement
- [ ] Feature development (to be defined in PRD)

### Low Priority - Future
- [ ] Advanced features (to be defined)

## Completed Features ✅
- [x] Project initialization with Stack-Junkie-Framework

## Notes
*Project created with Stack-Junkie-Framework setup script*
*Tech Stack: $TECH_STACK*

---
*Last updated: $(date)*
*Updated by: Setup Script*
EOF
        print_success "Created initial todo.md"
    fi
}

# Create tech stack specific files
create_tech_stack_files() {
    print_info "Creating tech stack specific files..."
    
    case "$TECH_STACK" in
        "react-python")
            create_react_python_files
            ;;
        "react-node")
            create_react_node_files
            ;;
        "react-only")
            create_react_only_files
            ;;
    esac
}

# Create React + Python specific files
create_react_python_files() {
    # Frontend package.json
    cat > "frontend/package.json" << EOF
{
  "name": "$PROJECT_NAME-frontend",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint",
    "test": "jest",
    "test:watch": "jest --watch"
  },
  "dependencies": {
    "next": "^14.0.0",
    "react": "^18.0.0",
    "react-dom": "^18.0.0"
  },
  "devDependencies": {
    "@types/node": "^20.0.0",
    "@types/react": "^18.0.0",
    "@types/react-dom": "^18.0.0",
    "eslint": "^8.0.0",
    "eslint-config-next": "^14.0.0",
    "typescript": "^5.0.0"
  }
}
EOF
    
    # Backend requirements.txt
    cat > "backend/requirements.txt" << EOF
fastapi==0.104.1
uvicorn[standard]==0.24.0
pydantic==2.4.2
python-multipart==0.0.6
python-jose[cryptography]==3.3.0
passlib[bcrypt]==1.7.4
python-dotenv==1.0.0
sqlalchemy==2.0.23
alembic==1.12.1
pytest==7.4.3
pytest-asyncio==0.21.1
httpx==0.25.1
EOF
    
    # Backend main.py
    mkdir -p "backend/app"
    cat > "backend/app/main.py" << EOF
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(title="$PROJECT_NAME API", version="0.1.0")

# Configure CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/")
async def root():
    return {"message": "Welcome to $PROJECT_NAME API"}

@app.get("/health")
async def health_check():
    return {"status": "healthy"}
EOF
    
    print_success "Created React + Python project files"
}

# Create React + Node.js specific files
create_react_node_files() {
    # Frontend package.json (same as Python version)
    cat > "frontend/package.json" << EOF
{
  "name": "$PROJECT_NAME-frontend",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint",
    "test": "jest",
    "test:watch": "jest --watch"
  },
  "dependencies": {
    "next": "^14.0.0",
    "react": "^18.0.0",
    "react-dom": "^18.0.0"
  },
  "devDependencies": {
    "@types/node": "^20.0.0",
    "@types/react": "^18.0.0",
    "@types/react-dom": "^18.0.0",
    "eslint": "^8.0.0",
    "eslint-config-next": "^14.0.0",
    "typescript": "^5.0.0"
  }
}
EOF
    
    # Backend package.json
    cat > "backend/package.json" << EOF
{
  "name": "$PROJECT_NAME-backend",
  "version": "0.1.0",
  "main": "src/index.js",
  "scripts": {
    "dev": "nodemon src/index.js",
    "start": "node src/index.js",
    "test": "jest",
    "test:watch": "jest --watch"
  },
  "dependencies": {
    "express": "^4.18.0",
    "cors": "^2.8.5",
    "helmet": "^7.1.0",
    "dotenv": "^16.3.1",
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2"
  },
  "devDependencies": {
    "nodemon": "^3.0.1",
    "jest": "^29.7.0",
    "supertest": "^6.3.3"
  }
}
EOF
    
    # Backend index.js
    mkdir -p "backend/src"
    cat > "backend/src/index.js" << EOF
const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 5000;

// Middleware
app.use(helmet());
app.use(cors({
  origin: process.env.FRONTEND_URL || 'http://localhost:3000',
  credentials: true
}));
app.use(express.json());

// Routes
app.get('/', (req, res) => {
  res.json({ message: 'Welcome to $PROJECT_NAME API' });
});

app.get('/health', (req, res) => {
  res.json({ status: 'healthy' });
});

app.listen(PORT, () => {
  console.log(\`$PROJECT_NAME API server running on port \${PORT}\`);
});

module.exports = app;
EOF
    
    print_success "Created React + Node.js project files"
}

# Create React-only specific files
create_react_only_files() {
    # Single package.json for frontend-only project
    cat > "package.json" << EOF
{
  "name": "$PROJECT_NAME",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "next lint",
    "test": "jest",
    "test:watch": "jest --watch"
  },
  "dependencies": {
    "next": "^14.0.0",
    "react": "^18.0.0",
    "react-dom": "^18.0.0"
  },
  "devDependencies": {
    "@types/node": "^20.0.0",
    "@types/react": "^18.0.0",
    "@types/react-dom": "^18.0.0",
    "eslint": "^8.0.0",
    "eslint-config-next": "^14.0.0",
    "typescript": "^5.0.0"
  }
}
EOF
    
    print_success "Created React-only project files"
}

# Create environment files
create_environment_files() {
    print_info "Creating environment configuration files..."
    
    case "$TECH_STACK" in
        "react-python")
            # Frontend .env.local
            cat > "frontend/.env.local" << EOF
# Frontend Environment Variables
NEXT_PUBLIC_API_URL=http://localhost:8000
NEXT_PUBLIC_APP_NAME=$PROJECT_NAME
EOF
            
            # Backend .env
            cat > "backend/.env" << EOF
# Backend Environment Variables
DATABASE_URL=sqlite:///./app.db
SECRET_KEY=your-secret-key-here-change-in-production
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30
FRONTEND_URL=http://localhost:3000
EOF
            print_success "Created environment files for React + Python"
            ;;
            
        "react-node")
            # Frontend .env.local
            cat > "frontend/.env.local" << EOF
# Frontend Environment Variables
NEXT_PUBLIC_API_URL=http://localhost:5000
NEXT_PUBLIC_APP_NAME=$PROJECT_NAME
EOF
            
            # Backend .env
            cat > "backend/.env" << EOF
# Backend Environment Variables
NODE_ENV=development
PORT=5000
JWT_SECRET=your-jwt-secret-here-change-in-production
FRONTEND_URL=http://localhost:3000
DATABASE_URL=your-database-url-here
EOF
            print_success "Created environment files for React + Node.js"
            ;;
            
        "react-only")
            # Single .env.local
            cat > ".env.local" << EOF
# Frontend Environment Variables
NEXT_PUBLIC_APP_NAME=$PROJECT_NAME
NEXT_PUBLIC_API_URL=https://api.example.com
EOF
            print_success "Created environment files for React-only"
            ;;
    esac
}

# Update README with project-specific information
create_project_readme() {
    print_info "Creating project README..."
    
    cat > "README.md" << EOF
# $PROJECT_NAME

*Built with Stack-Junkie-Framework - Multi-Agent Development Framework*

## Overview

[Describe your project here]

## Tech Stack

EOF

    case "$TECH_STACK" in
        "react-python")
            cat >> "README.md" << EOF
- **Frontend**: React/Next.js with TypeScript
- **Backend**: Python/FastAPI
- **Database**: SQLite (development) / PostgreSQL (production)
- **Testing**: Jest (frontend), pytest (backend)
- **Development**: Stack-Junkie-Framework multi-agent workflow

## Getting Started

### Prerequisites
- Node.js 18+ 
- Python 3.8+
- Git

### Installation

1. Clone the repository
\`\`\`bash
git clone <your-repo-url>
cd $PROJECT_NAME
\`\`\`

2. Install frontend dependencies
\`\`\`bash
cd frontend
npm install
\`\`\`

3. Install backend dependencies
\`\`\`bash
cd ../backend
pip install -r requirements.txt
\`\`\`

4. Set up environment variables
\`\`\`bash
# Copy and customize environment files
cp frontend/.env.local frontend/.env.local.example
cp backend/.env backend/.env.example
\`\`\`

### Development

1. Start the backend server
\`\`\`bash
cd backend
uvicorn app.main:app --reload --port 8000
\`\`\`

2. Start the frontend development server
\`\`\`bash
cd frontend
npm run dev
\`\`\`

The application will be available at:
- Frontend: http://localhost:3000
- Backend API: http://localhost:8000
- API Documentation: http://localhost:8000/docs

EOF
            ;;
            
        "react-node")
            cat >> "README.md" << EOF
- **Frontend**: React/Next.js with TypeScript
- **Backend**: Node.js/Express
- **Database**: Your choice (configure in backend)
- **Testing**: Jest (frontend and backend)
- **Development**: Stack-Junkie-Framework multi-agent workflow

## Getting Started

### Prerequisites
- Node.js 18+
- Git

### Installation

1. Clone the repository
\`\`\`bash
git clone <your-repo-url>
cd $PROJECT_NAME
\`\`\`

2. Install frontend dependencies
\`\`\`bash
cd frontend
npm install
\`\`\`

3. Install backend dependencies
\`\`\`bash
cd ../backend
npm install
\`\`\`

4. Set up environment variables
\`\`\`bash
# Copy and customize environment files
cp frontend/.env.local frontend/.env.local.example
cp backend/.env backend/.env.example
\`\`\`

### Development

1. Start the backend server
\`\`\`bash
cd backend
npm run dev
\`\`\`

2. Start the frontend development server
\`\`\`bash
cd frontend
npm run dev
\`\`\`

The application will be available at:
- Frontend: http://localhost:3000
- Backend API: http://localhost:5000

EOF
            ;;
            
        "react-only")
            cat >> "README.md" << EOF
- **Frontend**: React/Next.js with TypeScript
- **Testing**: Jest
- **Development**: Stack-Junkie-Framework multi-agent workflow

## Getting Started

### Prerequisites
- Node.js 18+
- Git

### Installation

1. Clone the repository
\`\`\`bash
git clone <your-repo-url>
cd $PROJECT_NAME
\`\`\`

2. Install dependencies
\`\`\`bash
npm install
\`\`\`

3. Set up environment variables
\`\`\`bash
# Copy and customize environment file
cp .env.local .env.local.example
\`\`\`

### Development

1. Start the development server
\`\`\`bash
npm run dev
\`\`\`

The application will be available at http://localhost:3000

EOF
            ;;
    esac

    cat >> "README.md" << EOF

## Testing

EOF

    case "$TECH_STACK" in
        "react-python")
            cat >> "README.md" << EOF
### Frontend Tests
\`\`\`bash
cd frontend
npm test
\`\`\`

### Backend Tests
\`\`\`bash
cd backend
pytest
\`\`\`
EOF
            ;;
        "react-node")
            cat >> "README.md" << EOF
### Frontend Tests
\`\`\`bash
cd frontend
npm test
\`\`\`

### Backend Tests
\`\`\`bash
cd backend
npm test
\`\`\`
EOF
            ;;
        "react-only")
            cat >> "README.md" << EOF
\`\`\`bash
npm test
\`\`\`
EOF
            ;;
    esac

    cat >> "README.md" << EOF

## Stack-Junkie-Framework Development

This project uses the Stack-Junkie-Framework for multi-agent development. Key files:

- \`CLAUDE.md\` - Project context for AI agents
- \`prd.md\` - Product Requirements Document
- \`todo.md\` - Feature implementation checklist
- \`memory-bank.md\` - Project knowledge and decisions
- \`bug-tracker.md\` - Issue tracking
- \`progress-log.md\` - Development progress

### Agent Workflow

1. **Planner Agent**: Creates and maintains PRD, breaks down features
2. **Coder Agent**: Implements features following security and quality standards
3. **Tester Agent**: Comprehensive testing and quality assurance
4. **Documenter Agent**: Maintains documentation and guides
5. **Reviewer Agent**: Code quality and security reviews

### Development Principles

- One feature at a time
- Security-first approach
- Test-driven development
- Comprehensive documentation
- Regular quality reviews

## Contributing

This project follows Stack-Junkie-Framework development patterns. Please refer to the agent workflow documentation for contribution guidelines.

## License

[Add your license information here]
EOF

    print_success "Created project README.md"
}

# Create .gitignore additions for tech stack
update_gitignore() {
    print_info "Updating .gitignore for project structure..."
    
    case "$TECH_STACK" in
        "react-python")
            cat >> ".gitignore" << EOF

# Python specific
*.pyc
__pycache__/
*.pyo
*.pyd
.Python
pip-log.txt
pip-delete-this-directory.txt
.pytest_cache/

# FastAPI specific
.env
app.db
app.db-journal

# Frontend specific
frontend/.next/
frontend/out/
frontend/.env.local
frontend/.env.development.local
frontend/.env.test.local
frontend/.env.production.local
EOF
            ;;
        "react-node")
            cat >> ".gitignore" << EOF

# Backend specific
backend/node_modules/
backend/.env
backend/.env.local
backend/.env.development.local
backend/.env.test.local
backend/.env.production.local

# Frontend specific
frontend/.next/
frontend/out/
frontend/.env.local
frontend/.env.development.local
frontend/.env.test.local
frontend/.env.production.local
EOF
            ;;
        "react-only")
            cat >> ".gitignore" << EOF

# Next.js specific
.next/
out/
.env.local
.env.development.local
.env.test.local
.env.production.local
EOF
            ;;
    esac
    
    print_success "Updated .gitignore"
}

# Initialize git repository if not already initialized
init_git_repo() {
    if [[ ! -d ".git" ]]; then
        print_info "Initializing git repository..."
        git init
        git add .
        git commit -m "Initial commit: $PROJECT_NAME setup with Stack-Junkie-Framework

🚀 Generated with Stack-Junkie-Framework
Tech Stack: $TECH_STACK

Features:
- Multi-agent development workflow
- Security-first development approach
- Comprehensive testing framework
- Documentation-driven development
- Quality gates and code review process"
        print_success "Git repository initialized with initial commit"
    else
        print_info "Git repository already exists, skipping initialization"
    fi
}

# Show completion message and next steps
show_completion_message() {
    print_header
    print_success "Project setup complete!"
    echo ""
    print_info "Project: $PROJECT_NAME"
    print_info "Tech Stack: $TECH_STACK"
    echo ""
    echo -e "${YELLOW}Next Steps:${NC}"
    echo "1. Review and customize the PRD (prd.md) with your specific requirements"
    echo "2. Update environment variables in .env files"
    case "$TECH_STACK" in
        "react-python"|"react-node")
            echo "3. Install dependencies (npm install in frontend, requirements in backend)"
            echo "4. Start development servers (see README.md for commands)"
            ;;
        "react-only")
            echo "3. Install dependencies (npm install)"
            echo "4. Start development server (npm run dev)"
            ;;
    esac
    echo "5. Begin development with: 'Initialize project development with [your feature idea]'"
    echo ""
    print_info "The Stack-Junkie-Framework agents are ready to help you build!"
    echo ""
    echo -e "${BLUE}Agent Workflow:${NC}"
    echo "• Planner Agent: Feature planning and PRD management"
    echo "• Coder Agent: Implementation with security and quality focus"
    echo "• Tester Agent: Comprehensive testing and QA"
    echo "• Documenter Agent: Documentation and guides"
    echo "• Reviewer Agent: Code quality and security reviews"
    echo ""
    print_info "Happy coding! 🚀"
}

# Main execution
main() {
    # Parse arguments
    PROJECT_NAME="$1"
    TECH_STACK="$2"
    
    # Show header
    print_header
    
    # Validate inputs
    if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
        show_usage
        exit 0
    fi
    
    validate_project_name
    validate_tech_stack
    
    print_info "Setting up project: $PROJECT_NAME"
    print_info "Tech stack: $TECH_STACK"
    echo ""
    
    # Execute setup steps
    cleanup_lab_files
    create_project_structure
    update_template_files
    create_tech_stack_files
    create_environment_files
    create_project_readme
    update_gitignore
    init_git_repo
    
    # Show completion
    show_completion_message
}

# Run main function with all arguments
main "$@"