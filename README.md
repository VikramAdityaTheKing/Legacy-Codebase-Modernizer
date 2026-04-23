# Legacy Codebase Modernization Pipeline

Browser-based multi-agent system demo for the Wipro Junior FDE pre-screening assignment.

## Overview

This project is a live "Legacy-to-Modern AI Pipeline" demo that modernizes dinosaur-era enterprise code into AI-native Python and FastAPI using a multi-agent workflow.

The system is presented as a browser-based **Legacy Codebase Modernization Pipeline** with:

- a dual-pane legacy-to-modern code workspace
- a visible multi-agent negotiation flow
- security and parity review artifacts
- architecture, metrics, evaluation, tutorial, and deliverables tabs

The goal is not only to show generated code, but to demonstrate how a realistic multi-agent system can coordinate analysis, translation, security review, and validation in a defensible way.

## What The Project Is

This is a **frontend-hostable MAS prototype** for code modernization.

It models a four-agent pipeline:

- **The Archeologist**: extracts business logic from legacy source into a logic map
- **The Architect**: converts the logic map into modular Python / FastAPI
- **The Security Warden**: audits for prompt injection, hardcoded PII, unsafe SQL, secrets, and weak validation
- **The Validation Critic**: checks logic parity, drift risk, and test posture

The current implementation is browser-compatible and optimized for a live demo and presentation workflow.

## Why This Project Exists

Legacy systems such as COBOL, Fortran, legacy Java, BASIC, Visual Basic, RPG, ADA, Pascal, SQL procedures, MATLAB, and C/C++ still support important business processes, but they are expensive to maintain, risky to rewrite, and difficult to modernize safely.

This project addresses that problem by showing how a multi-agent system can:

- understand old source code
- preserve business logic during translation
- add safety and guardrails before accepting output
- provide visible architecture and review evidence to stakeholders

## How It Works

The workflow is designed as a staged, Langflow-style orchestration:

1. The user pastes or uploads legacy source code.
2. The source is auto-detected or manually classified.
3. The Archeologist extracts business rules, entities, and risks into a structured logic map.
4. The Architect translates that logic into Python / FastAPI.
5. The Security Warden reviews the generated candidate for security and compliance issues.
6. If issues are found, the candidate is sent back to the Architect for remediation.
7. The Validation Critic reviews the revised output for logic parity and drift.
8. The dashboard surfaces artifacts, metrics, and deliverables for demo and submission use.

## Where It Runs

This version runs as a **static browser application** and can be hosted easily on:

- GitHub Pages
- Netlify
- any static web hosting service

Because it is browser-based, it is easy to demo through a public link without requiring a backend deployment.

## When To Use It

This project is best used when you want to:

- demonstrate multi-agent orchestration in a live interview or presentation
- show how AI/LLMs can be used safely in modernization workflows
- explain a code modernization use case with visible architecture and guardrails
- provide a repo-ready artifact with written, visual, and interactive deliverables

## Repository Structure

```text
.
|-- index.html
|-- README.md
|-- WRITEUP.md
|-- PRESENTATION_OUTLINE.md
|-- assignment.txt
|-- .nojekyll
`-- samples/
    |-- cobol_payroll.cbl
    |-- fortran_simulation.f90
    |-- legacy_java_customer.java
    |-- pascal_finance.pas
    |-- lisp_rules.lisp
    |-- rpg_orders.rpgle
    |-- ada_control.adb
    |-- basic_invoice.bas
    |-- visual_basic_payroll.vb
    |-- c_system_routine.c
    |-- cpp_engine.cpp
    |-- sql_customer_proc.sql
    |-- matlab_signal.m
    `-- ascii_fixed_width.txt
```

## File Guide

- [index.html](./index.html): main live demo UI
- [WRITEUP.md](./WRITEUP.md): assignment writeup covering architecture, guardrails, implementation, and collaboration
- [PRESENTATION_OUTLINE.md](./PRESENTATION_OUTLINE.md): slide-by-slide presentation outline
- [samples](./samples): ready-to-run legacy snippets for testing and demo flow
- [assignment.txt](./assignment.txt): assignment prompt and requirements reference

## Supported Legacy Inputs

The demo includes examples for:

- COBOL
- Fortran
- legacy Java
- Pascal
- LISP
- RPG
- ADA
- BASIC
- Visual Basic
- C
- C++
- SQL procedures
- MATLAB
- ASCII / fixed-width records

## Primary Output Target

The core output target is:

- **Python / FastAPI**

This aligns with the project framing of converting legacy systems into AI-native, service-oriented modern code.

## Running The Demo

1. Open `index.html` in a browser.
2. Paste your **Google AI Studio / Gemini API key**.
3. Click **Refresh Models** to load supported Gemini models available for your key.
4. Select a valid Gemini model.
5. Load a sample or paste your own legacy code.
6. Click **Run Pipeline**.
7. Review:
   - generated Python output
   - architecture tab
   - metrics tab
   - evaluation tab
   - deliverables tab

## Important API Key Note

This demo **requires a Google AI Studio / Gemini API key** to run the live modernization pipeline.

- The key is used to call the Gemini `generateContent` API from the browser.
- In the current prototype, the key is stored only in **session storage** for demo convenience.
- This is acceptable for a demo or interview artifact.
- For production use, model calls should be moved behind a secured backend proxy.

## Evaluation Signals In The UI

The dashboard surfaces metrics that help explain business and technical value:

- Technical Debt Reduced
- Logic Parity Score
- Security Compliance
- Cost Per Run
- Total Session Cost
- Estimated Tokens
- Test Pass Ratio
- Modernization Readiness

## Assignment Coverage

This repository addresses the required assignment sections:

- **Multi-Agent Architecture**
  - explicit agents, responsibilities, boundaries, and handoff logic
- **Security, Safety, and Guardrails**
  - prompt injection, PII, unsafe SQL, validation, and role separation
- **Implementation Approach**
  - browser-compatible orchestration, Gemini integration, sample library, metrics, and artifact tabs
- **Use of AI / LLMs and Collaboration**
  - role-based prompts, revision loops, and visible negotiation between agents

## Demo Flow Recommendation

For the cleanest presentation:

1. Start with a known sample from the `samples` library.
2. Refresh models and select a working Gemini model.
3. Run the pipeline.
4. Explain the agent timeline and revision loop.
5. Open the architecture tab to explain the system design.
6. Open the metrics tab to explain value and cost.
7. Close with the deliverables tab and written report.

## Limitations

- Browser-only API key usage is demo-only, not production-safe.
- Logic parity and cost are estimated from the current orchestration and model output.
- This is a prototype focused on architecture clarity, live demonstration, and assignment fit rather than enterprise deployment hardening.

## Future Improvements

- move Gemini calls to a secured backend
- add repository-level ingestion instead of snippet-only input
- improve architecture visualization and animation
- expand test matrix generation and artifact export
- connect to hosted orchestration frameworks for production-scale execution
