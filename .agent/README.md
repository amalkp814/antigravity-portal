# .agent Directory

> **Antigravity Agent Configuration & Utilities**

This directory contains the operational infrastructure for the Antigravity agent. It is designed to be minimal, secure, and focused on automation workflows.

---

## 📁 Directory Structure

```plaintext
.agent/
├── config/                    # Core configuration
│   └── security-matrix.conf   # Security rules and permission definitions
│
├── workflows/                 # Agent Workflows
│   └── setup.md              # Project initialization and setup steps
│
├── scripts/                   # Utility Scripts
│   └── safe-delete.sh        # Safety wrapper for file deletion
│
└── deletion.log              # Local audit log of deleted files (gitignored)
```

---

## �️ Components

### 1. Configuration (`config/`)

Contains strict security policies that the agent must adhere to. The `security-matrix.conf` defines:

- Protected file patterns
- Allowed operations per directory
- High-risk command blocking

### 2. Workflows (`workflows/`)

Contains procedural memory for complex tasks.

- **Usage**: The agent reads these files to understand multi-step processes.
- **Format**: Markdown with `// turbo` annotations for command auto-execution.

### 3. Scripts (`scripts/`)

Helper scripts used by the agent or workflows.

- `safe-delete.sh`: Moves files to `.agent/recycle_bin` instead of permanent deletion.

---

## 🔒 Git Policy

- **Commit**: `config/`, `workflows/`, `scripts/`, `README.md`
- **Ignore**: `recycle_bin/`, `deletion.log`, `*.log`
