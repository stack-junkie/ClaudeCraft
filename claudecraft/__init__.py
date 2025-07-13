"""
ClaudeCraft - Multi-Agent Development Framework

A revolutionary framework for AI-assisted software development using 
specialized agents that ensure security, quality, and velocity.
"""

__version__ = "1.0.0"
__author__ = "ClaudeCraft Team"
__email__ = "hello@claudecraft.dev"

import os
import sys
import subprocess
from pathlib import Path

def main():
    """Main entry point for claudecraft-init command"""
    framework_root = Path(__file__).parent.parent
    setup_script = framework_root / "setup-project.sh"
    
    if not setup_script.exists():
        print("Error: setup-project.sh not found")
        sys.exit(1)
    
    # Make executable
    os.chmod(setup_script, 0o755)
    
    # Run with arguments
    try:
        subprocess.run([str(setup_script)] + sys.argv[1:], check=True)
    except subprocess.CalledProcessError as e:
        sys.exit(e.returncode)

if __name__ == "__main__":
    main()