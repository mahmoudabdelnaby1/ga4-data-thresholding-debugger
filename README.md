# GA4 Data Thresholding & Google Signals Diagnostic Playbook

> Eliminate GA4 data thresholding and unmask hidden report rows with diagnostic guidance for reporting identity and BigQuery export analysis. BigQuery does not recover data that was never exported, and these examples require an available export and schema validation.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Format: TEMPLATE_FRAMEWORK](https://img.shields.io/badge/Format-TEMPLATE--FRAMEWORK-green.svg)](#)
[![Tier: 1](https://img.shields.io/badge/Tier-1-orange.svg)](#)
[![Region: MENA](https://img.shields.io/badge/Region-Egypt%20%7C%20GCC%20%7C%20Saudi-purple.svg)](#)
[![Type: Operational Playbook](https://img.shields.io/badge/Type-Operational%20Playbook-orange.svg)](#)
[![Owner: mahmoudabdelnaby1](https://img.shields.io/badge/Owner-mahmoudabdelnaby1-blue.svg)](https://github.com/mahmoudabdelnaby1)

---

## 📌 Problem Statement & Target Persona

### Target Persona
**PRO** operating in high-growth e-commerce, digital publishing, and direct-response marketing across Saudi Arabia, UAE, and Egypt.

### Core Problem
Create an authoritative troubleshooting guide and solution pack for GA4 data thresholding: 1) Diagnostic decision tree identifying the exact cause of orange threshold icons, 2) Step-by-step instructions for toggling Reporting Identity spaces safely without losing historical data, 3) BigQuery SQL templates for analyzing exported event-level data, subject to export availability, consent settings, schema, and applicable platform limits, 4) Client-facing explanation slide template.

---

## 🛠️ Repository Architecture & Deliverables

This repository provides self-contained, documented implementations and specifications:

- `checklists/google-signals-audit.md`
- `configs/reporting-identity-guide.md`
- `examples/ecommerce-threshold-audit.md`
- `LICENSE`
- `playbooks/thresholding-diagnosis-tree.md`
- `playbooks/thresholding-recovery-sop.md`
- `README.md`
- `sql/unthresholded_channel_report.sql`
- `templates/stakeholder-explanation-template.md`


---

## 🚀 Quick Start & How to Run Locally

### Operational Specification
Review the structured markdown documentation and checklists in this repository. All workflows and schemas are fully specified for direct adoption by regional growth teams.

---

## 📊 Sample Input & Output Fixtures

> **Data Disclosure:** Any included sample data is illustrative and may be synthetic; it is not a measured customer result or market benchmark unless a source and collection method are stated alongside it. These files run offline with standard libraries and require no paid third-party API credentials.

```json
{
  "domain": "reporting",
  "repository": "ga4-data-thresholding-debugger",
  "status": "READY_FOR_LOCAL_REVIEW",
  "license": "MIT"
}
```

---

## ⚠️ Known Technical & Domain Constraints

- **Google Signals Thresholding:** Small audience cell counts (<50 users) trigger privacy thresholding in standard GA4 reports when Google Signals is enabled.
- **Reporting Identity Impact:** Compares Blended (Device ID + User ID + Google Signals + Modeled) vs Device-Only identity to identify suppressed rows.
- **BigQuery Unsampled Verification:** Cross-examines UI report discrepancies against un-thresholded raw BigQuery event exports.

---

## 📚 Primary Documentation & Verifiable References

- [Google Analytics Help: Data Thresholding & Privacy Controls](https://support.google.com/analytics/answer/9383630) - Official documentation on why orange threshold icons appear in reports.
- [Google Analytics Help: Reporting Identity in GA4](https://support.google.com/analytics/answer/10996670) - How choosing Device-Based identity restores full row granularity.
- [Google Cloud: BigQuery Export Unsampled Data](https://support.google.com/analytics/answer/7029846) - Accessing complete row-level event data without thresholding.

---


## 👤 Maintainer & License

- **Author & Maintainer:** [Mahmoud Abdelnaby](https://github.com/mahmoudabdelnaby1) (`@mahmoudabdelnaby1`)
- **License:** [MIT License](LICENSE) - Open-source, auditable, and freely adaptable for internal enterprise or commercial use.
