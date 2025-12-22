---
description: Initial setup workflow for Antigravity Portal
---

# Initial Setup Workflow

This workflow guides new developers through setting up the Antigravity Onboarding Portal.

## Prerequisites

- Git installed
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Basic command-line knowledge

## Steps

### 1. Clone the Repository

```bash
git clone <repository-url>
cd antigravity-portal
```

### 2. Verify File Structure

```bash
ls -la
# You should see: index.html, README.md, .agent/, .git/
```

### 3. Install Safe-Delete Utility (Optional)

```bash
cd .agent/scripts
chmod +x safe-delete.sh
./safe-delete.sh --help
```

### 4. Open the Portal

```bash
# Option 1: Direct file open
open index.html

# Option 2: Local server
python3 -m http.server 8000
# Visit: http://localhost:8000
```

### 5. Complete Onboarding

1. Explore the Security Matrix
2. Download the safe-delete script
3. Practice in the Ironclad Terminal
4. Aim for vulnerability score < 30

## Next Steps

- Review the Ironclad Policy in README.md
- Set up your development environment with safe-delete
- Join the team discussions on GitHub

## Troubleshooting

**Q: The portal doesn't load properly**

- Ensure you're using a modern browser
- Try opening with a local server instead of direct file
- Check browser console for errors

**Q: Safe-delete script won't execute**

- Run: `chmod +x .agent/scripts/safe-delete.sh`
- Ensure you have bash installed
- Check that .agent directory exists

**Q: Want to customize the portal**

- See README.md "Customization" section
- Modify CSS variables in index.html
- Follow contribution guidelines
