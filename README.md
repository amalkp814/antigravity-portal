# Gravity Guru

A serene, minimalist prompt library for Google Antigravity™ IDE.

## Overview

Gravity Guru provides a clean, distraction-free interface to generate high-quality prompts for coding tasks.
It includes:

- **Workflow Templates:** Create detailed prompts for Implementation Plans, Task Lists, Features, Bugs, Tests, and more.
- **Knowledge Check:** Interactive quizzes to test your Antigravity knowledge.
- **Resources:** Curated links to official and community resources.

## Philosophy

- **Serene Learning:** Calm colors and minimal design to reduce cognitive load.
- **Mobile First:** Fully responsive experience.
- **Privacy:** Client-side only. No data is sent to any server.

## Quick Start: Agent Setup

Instantly configure any project with the v2.0 Antigravity architecture (Rules, Security Matrix, Workflows) using our one-click script.

```bash
# Run the scaffolding script in your project root
./scaffold_agent.sh
```

This will create:

- `.agent/config/` (Security Matrix & Browser Allowlist)
- `.agent/rules/` (PEP 8, Modular Design)
- `.agent/workflows/` (Setup templates)
- `.agent/scripts/` (Safe-delete utility)

## Development

### Running Locally

```bash
# Serve the directory
python3 -m http.server 8080
# Open http://localhost:8080
```

### Deployment

Run the deployment script to push to GitHub Pages:

```bash
./deploy.sh
```

---
*Unofficial Community Resource. Not affiliated with Google.*
