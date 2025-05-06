# IO Platform Spec: CLI vs UI

## Overview

IO is a developer platform built on the Mojo programming language and the FF4F00 web framework. It enables seamless deployment of single-binary Mojo applications using modern cloud primitives like AWS, Cloudflare, SurrealDB, and Storj.

This document defines the feature set split between the **IO CLI** and the **IO Web Interface** for the MVP.

---

## 🧰 IO CLI — Developer-Centric Control

The CLI is the primary interface for developers. It prioritizes speed, clarity, and infrastructure-as-code behavior.

### Core Commands

| Command             | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `io init`           | Bootstrap a new project and collect credentials (AWS, Cloudflare, Storj)   |
| `io build`          | Compile project into a single Mojo binary                                   |
| `io deploy`         | Provision infrastructure and deploy binary (EC2 or Lambda)                  |
| `io destroy`        | Tear down project infrastructure                                            |
| `io status`         | Show real-time status of deployment and services                            |
| `io logs`           | Tail logs from EC2 or Lambda                                                |
| `io open`           | Open the IO dashboard in the browser                                        |
| `io config`         | View or edit project configuration                                          |
| `io db shell`       | Launch an interactive SurrealDB shell                                       |
| `io storage push`   | Upload file(s) to Storj bucket                                              |
| `io storage stats`  | Display usage and health info for storage                                   |

### Authentication and Configuration

- Config file: `~/.io/config`
- Environment variable fallback for automation
- Credential validation occurs at `init` and deploy time

---

## 🧑‍💻 IO Web Interface — Visual Feedback and Insights

The IO UI provides a real-time, Firebase-style dashboard for monitoring and interaction.

### Dashboard Features

| Feature                 | Description                                                            |
|--------------------------|------------------------------------------------------------------------|
| **Project Overview**     | Shows deployment status, domain, and runtime metadata                  |
| **Live Health**          | Displays instance health, uptime, and error rates                      |
| **Log Viewer**           | Searchable, filterable live logs from deployments                      |
| **Cloudflare DNS**       | View synced DNS records and domain mapping                             |
| **Surrealist Embedded**  | Full SurrealDB UI experience for live data and schema interaction      |
| **Storj Dashboard**      | File browser, storage stats, bandwidth and uptime charts               |
| **Deploy History**       | Timeline of deployments with binary hash and commit metadata           |

### Developer Tools

| Tool                    | Description                                                              |
|--------------------------|--------------------------------------------------------------------------|
| **Simulators (opt-in)** | Embed browser, iOS, or Android simulators for preview (future scope)     |
| **AI Copilot**           | SurrealDB AI and Modular Max integration for natural query/code (MVP+)   |

### Project Settings

| Setting               | Description                                                              |
|------------------------|--------------------------------------------------------------------------|
| **Secrets Manager**    | Manage secrets and API keys                                              |
| **DNS Mapping**        | View and update domain routes (if permitted by token scope)              |
| **Resource Control**   | Change instance type, memory, or region (future extension)               |

---

## 🚦 CLI vs UI Responsibilities

| Task                               | CLI             | UI             |
|------------------------------------|------------------|----------------|
| Initialize project                 | ✅               | ⛔️             |
| Deploy binary                      | ✅               | ⛔️             |
| View logs                          | ✅               | ✅             |
| Manage DNS                         | ⛔️ (view only)   | ✅ (partial)   |
| Manage SurrealDB data              | ✅ (`db shell`)   | ✅ (Surrealist)|
| Upload/View storage                | ✅               | ✅             |
| See project health & metrics       | ✅               | ✅             |
| View/change secrets                | ⛔️               | ✅             |
| Visualize deployment history       | ⛔️               | ✅             |
| Use AI features                    | ⛔️               | ✅ (MVP+)      |

---

## ✅ MVP Completion Criteria

- [ ] End-to-end deployment via `io init` → `io build` → `io deploy`
- [ ] Web dashboard shows live health, logs, DNS, DB, and storage stats
- [ ] Users can inspect and interact with SurrealDB from the UI
- [ ] Real-world app accessible from public domain

