#!/bin/bash
# Antigravity Agent Scaffolding Script
# Adds standard v2 architecture to any project.

set -e

echo "🚀 Initializing Antigravity Agent Structure..."

# 1. Create Directory Hierarchy
mkdir -p .agent/config
mkdir -p .agent/rules
mkdir -p .agent/workflows
mkdir -p .agent/scripts
mkdir -p .agent/recycle_bin

# 2. Add Security Matrix (Strict)
cat > .agent/config/security-matrix.conf <<EOF
# Antigravity Security Matrix v15
ENFORCEMENT_LEVEL="STRICT"
REQUIRE_USER_CONFIRMATION=true
ALLOW_EXTERNAL_CONNECTIONS=false

DENY_LIST=(
    "rm -rf /"
    ":(){ :|:& };:"
    "dd"
    "mkfs"
    "chmod 777"
)

ALLOW_LIST=(
    "ls" "pwd" "git" "npm test" "python3 -m unittest"
)

RECYCLE_BIN_PATH="./.agent/recycle_bin"
EOF

# 3. Add Browser Allowlist
cat > .agent/config/browser_allowlist.txt <<EOF
google.com
github.com
stackoverflow.com
localhost
EOF

# 4. Add Baseline Rules
cat > .agent/rules/code-style.md <<EOF
# Standard Code Style
* Enforce PEP 8 (Python) or Prettier (JS).
* Require Docstrings for all public methods.
EOF

# 5. Add Setup Workflow
cat > .agent/workflows/setup.md <<EOF
# Project Setup
1. Install dependencies (npm install / pip install -r requirements.txt)
2. Run initial test suite to verify environment.
3. Start development server.
EOF

# 6. Install Safe-Delete Script
cat > .agent/scripts/safe-delete.sh <<EOF
#!/bin/bash
TARGET=\$1
RECYCLE_BIN=".agent/recycle_bin"
mkdir -p "\$RECYCLE_BIN"

if [ -z "\$TARGET" ]; then
    find "\$RECYCLE_BIN" -type f -mtime +30 -delete
    exit 0
fi

if [ -e "\$TARGET" ]; then
    mv "\$TARGET" "\$RECYCLE_BIN/\$(basename "\$TARGET")_\$(date +%Y%m%d_%H%M%S)"
    echo "✅ Moved to recycle bin."
else
    echo "❌ File not found."
    exit 1
fi
EOF
chmod +x .agent/scripts/safe-delete.sh

echo "✅ Agent structure created successfully!"
ls -F .agent/
