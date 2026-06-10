# 📐 BodyScan Tailor Dashboard — BA & PM Documentation

## Project Overview
An AI-powered body measurement and tailor management platform built on top of 3D body scanning technology (SnapMeasureAI). The system consists of two modules:
- **Customer Mobile App** — for body scanning and order tracking
- **Tailor Dashboard** — for managing customer measurements and order workflow

---

## 🎯 Problem Statement
Traditional tailors rely on manual measurements which are:
- Time-consuming and error-prone
- Difficult to store and retrieve for repeat customers
- Lacking real-time order tracking for customers

**Solution:** An AI-powered platform where customers scan their body using videos and tailors get accurate 100+ body measurements instantly on a dashboard — 
eliminating manual errors and improving customer experience.

---

## 👤 My Role
**Business Analyst & Project Manager**

- Conducted requirements gathering sessions with tailor business owners
- Documented Business Requirements Document (BRD) and functional specifications
- Created detailed User Stories for both Customer App and Tailor Dashboard
- Defined technology approach and stack recommendations
- Led brainstorming sessions with cross-functional team
- Managed end-to-end project delivery from initiation to handover
- Coordinated Agile sprints planning, daily standups, sprint reviews
- Tracked team progress and reflected sprint outcomes to stakeholders
- Facilitated UAT and demo sessions at each milestone

---

## 🏗️ System Architecture

```
Customer Mobile App          Tailor Dashboard
--------------------         ----------------
Body Scan (videos)    --->   Customer Profiles
AI Measurement Engine        100+ Body Measurements
Order Placement       --->   Order Management
Order Tracking        <---   Order Status Updates
```

---

## 📋 Key Features Defined

### Customer Mobile Application
| Feature | Description |
|---|---|
| Body Scan | video AI scan generating 100+ measurements |
| Profile Management | Save and update body measurements |
| Order Placement | Place tailoring orders with measurements |
| Order Tracking | Real-time status updates from tailor |
| Measurement History | Track body changes over time |

### Tailor Dashboard
| Feature | Description |
|---|---|
| Customer Management | View all customer profiles and measurements |
| Order Management | Manage active, pending, and completed orders |
| Measurement View | Access 100+ precise body measurements per customer |
| Order Status Update | Update and notify customers of order progress |
| Analytics | Track orders, revenue, and customer insights |

---

## 📝 User Stories (Sample)

### Customer App
```
US-001: As a customer, I want to scan my body using 2 photos so that my tailor gets accurate measurements without manual measurement sessions.

US-002: As a customer, I want to track my order status in real-time so that I know when my garment will be ready.

US-003: As a customer, I want to save my measurement profile so that I can place future orders without re-scanning.

US-004: As a customer, I want to receive notifications when my order status changes so that I stay informed.
```

### Tailor Dashboard
```
US-005: As a tailor, I want to view all customer measurements on my dashboard so that I can start stitching without manual measurement sessions.

US-006: As a tailor, I want to update order status so that customers are automatically notified of progress.

US-007: As a tailor, I want to view order history per customer so that I can track repeat orders and preferences.

US-008: As a tailor, I want a dashboard overview of active orders so that I can prioritise my workload efficiently.
```

---

## 🛠️ Technology Stack (Recommended by BA)

| Layer | Technology |
|---|---|
| Body Scanning | SnapMeasureAI API (3D body measurement) |
| Mobile App | React Native (iOS + Android) |
| Tailor Dashboard | React.js Web Application |
| Backend | Node.js / REST API |
| Database | PostgreSQL |
| Authentication | Firebase Auth |
| Notifications | Push Notifications + SMS |

---

## 📊 Project Management Approach

**Methodology:** Agile / Scrum

```
Sprint Duration:  2 weeks
Team Size:        6 members (2 developers, 1 designer, 1 QA, 1 BA/PM, 1 client stakeholder)
Tools Used:       JIRA, Figma, Confluence, Slack
```

**Sprint Structure:**
- Sprint Planning → Feature breakdown and story pointing
- Daily Standups → Progress tracking and blocker resolution
- Sprint Review → Demo to stakeholders
- Sprint Retrospective → Team improvement discussions

---

## 📈 Project Milestones

| Milestone | Description | Status |
|---|---|---|
| M1 | Requirements gathering & BRD | ✅ Completed |
| M2 | User stories & functional specs | ✅ Completed |
| M3 | UI/UX wireframes review | ✅ Completed |
| M4 | Customer App — MVP | ✅ Completed |
| M5 | Tailor Dashboard — MVP | ✅ Completed |
| M6 | UAT & stakeholder demo | ✅ Completed |
| M7 | Final handover | ✅ Completed |

---

## 💡 Key Outcomes
- Eliminated manual measurement errors for tailors
- Reduced customer onboarding time from 30 minutes to under 2 minutes
- Tailor dashboard provides instant access to 100+ body measurements
- Real-time order tracking improved customer satisfaction
- Scalable platform ready for multiple tailor businesses

---

## 👤 Author
**Gaurav Raghuvanshi — Business Analyst & Project Manager**
- LinkedIn: [linkedin.com/in/gauravsraghuvanshi](https://linkedin.com/in/gauravsraghuvanshi)
- GitHub: [github.com/Gaurawr](https://github.com/Gaurawr)
- Portfolio: [gaurawr.github.io/gaurav-portfolio](https://gaurawr.github.io/gaurav-portfolio)
