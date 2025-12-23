# Gravity Guru Upgrade Plan (v3.0)
>
> *Theme: Persistence & Personalization*

Now that the Gravity Guru is a fully capable, secure, and legally compliant v2.0 application with PWA capabilities, the next phase focuses on **User Data Persistence** and **Customization**.

## 💾 Phase 1: Local Persistence (No Backend)

Since we promise "Client-side only" privacy, we will leverage **localStorage** and **IndexedDB** to save user data on their device.

### 1.1 Persist State

- [ ] **Save Active Rules**: When a user checks "Enforce PEP 8", remember this choice on next visit.
- [ ] **Save Inputs**: If a user is half-way through writing a "Task List", save draft content to prevent data loss on refresh.
- [ ] **History**: Maintain a "Recent Generations" tab in the Mission Control dashboard (stored locally).

## 🛠️ Phase 2: Customization Engine

Allow users to make the tool their own without editing code.

### 2.1 Custom Workflow Builder

- [ ] **UI Builder**: specific interface to "Create New Workflow".
  - Define Inputs (Text, Textarea, Select).
  - Write Template String (with variable injection).
  - Save to `My Workflows` (Local Storage).
- [ ] **Export/Import**:
  - Button to Export all settings & custom workflows to `gravity-guru-config.json`.
  - Button to Import config (useful for sharing within a team).

## 🚀 Phase 3: PWA Enhancement

### 3.1 Offline Logic

- [ ] **Offline Indicator**: UI banner showing "You are offline. Running in local mode."
- [ ] **Cache Strategy**: Optimize `sw.js` to ensure Google Fonts and Tailwind CDN are cached reliably (or move to local assets for true air-gapped support).

## 📊 Phase 4: Analytics (Privacy-First)

### 4.1 Local Insights

- [ ] **Dashboard Stats**: Show prompt usage stats in Mission Control (e.g., "You've generated 15 Task Lists this week").
- [ ] **Feedback Loop**: Simple "Thumbs Up/Down" on generated prompts (local only) to sort templates by personal preference.

---
**Status**: Ready for Implementation
**Prerequisite**: v2.0 Release (Completed)
