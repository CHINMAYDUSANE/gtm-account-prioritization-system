# GTM Account Prioritization & Signal Engine

An end-to-end GTM system that researches, enriches, prioritizes, and activates target accounts using Clay, HubSpot, Make, Python, and PostgreSQL.

## Problem

Sales teams often have hundreds or thousands of potential target accounts, but limited time to research each one.

Without a systematic prioritization process, sales reps can spend valuable time researching weaker accounts while higher-potential accounts remain overlooked.

I built this project to solve that problem by turning multiple account-level GTM signals into a prioritized and actionable account list.

---

## What I Built

The system takes a defined ICP and a list of target companies and turns them into prioritized accounts.

### Workflow

ICP / Target Accounts
↓
Clay Enrichment
↓
GTM Hiring Signals + GTM Technology
↓
GTM Maturity Classification
↓
Account Priority
↓
AI Priority Reasoning
↓
HubSpot
↓
Make Automation
↓
Tier 1 Slack Alert

---

## How the System Works

### 1. Account Research & Enrichment — Clay

Clay is used to research and enrich target companies.

The workflow collects:

- Company information
- GTM-related job openings
- GTM hiring signals
- GTM technology signals
- GTM maturity level

The system then assigns each account a priority tier from Tier 1 to Tier 3 and generates a short explanation of why the account received that priority.

---

### 2. CRM Activation — HubSpot

The prioritized accounts are pushed into HubSpot as Company records.

Custom properties were created for:

- GTM Hiring Signal
- GTM Tech Stack
- GTM Maturity Level
- Account Priority Tier
- Priority Reasoning

This makes the research usable inside a CRM instead of leaving it as a spreadsheet.

---

### 3. Automated Tier 1 Alert — Make

Make is used to automate the final activation step.

When a Tier 1 account is identified, the automation retrieves the relevant account information and sends a notification to Slack.

### Automation

HubSpot
→ Retrieve account
→ Check priority
→ Tier 1
→ Slack notification

---

### 4. Data Analysis — Python & PostgreSQL

After building the GTM workflow, I exported the dataset and used Python/pandas to clean and standardize the data.

I then loaded the cleaned dataset into PostgreSQL and used SQL to analyze the account-level signals.

The analysis focused on:

- Account Priority distribution
- GTM Hiring Signal distribution
- GTM Maturity distribution
- GTM hiring activity by priority
- High-priority account characteristics
- Relationships between different GTM signals

Python was also used to create visualizations and identify patterns in the dataset.

---

## Tools Used

| Tool | Purpose |
|---|---|
| Clay | Account research, enrichment and prioritization |
| HubSpot | CRM and account activation |
| Make | Workflow automation and Tier 1 alerts |
| Python / pandas | Data cleaning and analysis |
| PostgreSQL / SQL | Data analysis and validation |

---

## What This Project Demonstrates

This project demonstrates my ability to:

- Translate a GTM problem into a repeatable system
- Research and enrich target accounts
- Combine multiple GTM signals
- Build account prioritization logic
- Work with CRM data
- Connect GTM tools through automation
- Clean and analyze real-world data
- Use SQL and Python for GTM analysis
- Turn research into an actionable workflow

The focus of the project was not simply to demonstrate individual tools, but to show how multiple tools can work together to solve a GTM problem.

---

## Project Structure

```text
gtm-account-prioritization-system/
│
├── README.md
│
├── sql/
│   └── gtm_analysis.sql
│
├── python/
│   └── gtm_analysis.ipynb
│
└── screenshots/
    ├── 01-clay-workflow.png
    ├── 02-clay-account-prioritization.png
    ├── 03-hubspot-company-record.png
    ├── 04-make-automation.png
    ├── 05-slack-tier1-alert.png
    ├── 06-python-analysis.png
    └── 07-sql-analysis.png

Note: Priority tiers represent the strength of the GTM signals detected by this system, not the overall quality, size, or success of a company. A Tier 3 account simply means that fewer qualifying signals were observed at the time of analysis.
