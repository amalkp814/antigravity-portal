# Gravity Guru Upgrade Plan (v2.0)
>
> *Aligned with Official Google Antigravity Architecture*

This plan outlines the roadmap to elevate Gravity Guru from a prompt library into a specialized companion utility for the Antigravity IDE, mirroring its native "Agent Manager" capabilities and definitions.

## 📋 Phase 1: Architectural Alignment

The goal is to align our folder structures and terminology with the official Antigravity specification (`.agent/rules` vs `.agent/workflows`).

### 1.1 Structural Standardization

- [ ] **Migrate Custom Configs**:
  - Move global rules to `.agent/rules/` (currently unofficial).
  - Ensure `.agent/workflows/` is the primary home for procedural tasks.
- [ ] **Terminology Update**:
  - Rename "Generators" in UI to **"Workflow Templates"** or **"Prompt Blueprints"** to avoid confusion with native "Workflows".
  - Update documentation to distinguish between *System Rules* (Always on) and *Workflows* (On-demand `/` triggers).

### 1.2 "Artifact" Prompt Suite

Antigravity relies on specific artifact types to bridge the "Trust Gap". We will create specialized generators for these:

- [ ] **Implementation Plan Generator**:
  - *Purpose*: Generates the markdown structure Antigravity uses to propose changes.
  - *Inputs*: Feature Name, Files Involved, Risk Level.
- [ ] **Walkthrough Template**:
  - *Purpose*: Standard format for the agent to report specific test steps and browser verifications.
- [ ] **Task List Generator**:
  - *Purpose*: Structured step-by-step plan for the agent to follow.

---

## 🛡️ Phase 2: Security & Governance

Adopt the official "Allow/Deny List" model and expand protections to the browser capability.

### 2.1 Security Matrix v15 (Enterprise)

- [ ] **Terminology Alignment**:
  - Rename `BLOCKED_COMMANDS` to `DENY_LIST`.
  - Rename `ALLOWED_COMMANDS` to `ALLOW_LIST`.
  - Explicitly define `TERMINAL_POLICY` (Off/On/Review).
- [ ] **Browser Security Layer**:
  - Create a `browserAPlowlist.txt` generator.
  - Define a "Safe Browsing" rule set for the agent (e.g., "Only visit documentation domains").

### 2.2 Rule Management

- [ ] **Rule Generator**:
  - A new tool in the portal to visually create `.agent/rules/` files.
  - *Features*: Toggle "Global" vs "Workspace", Select categories (Style, Testing, Safety).

---

## 🤖 Phase 3: Advanced Agent Capabilities

Support high-level agent use cases defined in the Codelab.

### 3.1 specialized Use-Case Generators

- [ ] **"News Highlights" (Researcher) Workflow**:
  - Prompt template for extracting data from external URLs securely.
- [ ] **"Dynamic App" (Builder) Workflow**:
  - End-to-end prompt for scaffolding Python/Flask or Node/React apps from scratch.
- [ ] **"Unit Test" (QA) Workflow**:
  - Dedicated workflow for: *Generate Tests → Run Tests → Fix Failures → Validate*.

### 3.2 "Agent Manager" UI Theme

- [ ] **Visual Overhaul**:
  - Update Gravity Guru UI to mirror the "Inbox" and "Artifacts" panel aesthetics.
  - Add a "Mission Control" dashboard view to the prompt library.

---

## 📝 Phase 4: Integration

- [ ] **Workflow Export**:
  - Button to "Save as .md" directly to the user's `.agent/workflows/` directory (if technically feasible via clipboard or script).
- [ ] **One-Click Setup**:
  - A script to scaffold the entire `.agent` folder structure (Rules, Workflows, Security) compliant with best practices.

---

## Reference

Based on [Getting Started with Google Antigravity](https://codelabs.developers.google.com/getting-started-google-antigravity?hl=en#3).
