# IO

<div style="float: right">Synopsis</div>
<hr>

![Version](https://img.shields.io/badge/version-0.0.1-blue) ![Build Status](https://img.shields.io/github/actions/workflow/status/io-platform/io/main.yml)

A premium deployment orchestrator built for applications written in [Mojo](https://www.modular.com/mojo) using the [FF4F00](https://github.com/ff4f00/ff4f00) framework. IO provides a seamless CLI and web interface for developers to manage compute, data, storage, and networking infrastructure using a well-curated set of cloud-native primitives.

#### Key Features  
✅ CLI-first experience inspired by shuttle.rs  
✅ Firebase-style dashboard for real-time app management  
✅ Seamless deployment from Neovim to iOS/Android/browser  

Quick Install Guide otherwise follow link to Documentation below

For questions or issues, please open an [issue](https://github.com/io-platform/io/issues) or contact us at support@ff4f00.io.

<div style="text-align: center;"><a href="#">Contribution / Code of Conduct</a></div>

---

## Analysis
<hr>

### Market

> Problem Statement

Modern fullstack development is fragmented. Developers must piece together DevOps, cloud provisioning, authentication, deployment pipelines, and infrastructure. This leads to bloated toolchains, slow iteration, and steep learning curves.

> Value Proposition

IO offers a single control plane to build, launch, and scale Mojo applications using just the CLI and a clean web UI. It removes all DevOps overhead, supports realtime deployment feedback, and provides integrations with Web3, AI, and cross-platform tools — all while relying only on best-in-class primitives.

---

### Cost

- 🛠 Developer tooling: Free and open source
- ☁️ Cloud costs: Billed to user's AWS, Cloudflare, Storj accounts
- 🔐 Optional: Enterprise-grade SaaS tier with enhanced UI, autoscaling, and monitoring (coming soon)

---

### Technical

- Language: Mojo (compiled single-binary apps)
- CLI: Shell scripts → refactored into dynamic Mojo programs
- UI: Firebase-style, with integrated Surrealist (DB), Storj stats, and AI tools
- Providers:
  - AWS (EC2, Lambda, Auto Scaling Groups)
  - SurrealDB (local + remote)
  - Storj (storage APIs and telemetry)
  - Cloudflare (networking, DNS)
- AI Integration: Modular Max + SurrealDB AI for assistant & automation

---

## Specification
<hr>

### Objective

> Provide a zero-friction, CLI-driven and web-assisted platform for deploying Mojo-based FF4F00 applications using a trusted, minimal set of infrastructure primitives.

> Constraints

- Must use only:
  - **Cloudflare** for DNS and network
  - **AWS (EC2, ASG, Lambda)** for compute
  - **SurrealDB** for data
  - **Storj** for object storage
- No Docker, Node.js, Electron, or virtual machines
- Apps must compile to a single binary
- Deployment must work from Neovim or terminal without boilerplate

---

### Outline

**Core IO Stack:**

- **Network Layer**
  - Cloudflare DNS management (auto-provision and sync)
  - Real-time DNS/IP sync to EC2
- **Compute Layer**
  - Launch EC2 instances from CLI
  - Deploy to Lambda or scale with ASGs
- **Data Layer**
  - Provision and manage SurrealDB (embedded or external)
  - Embed Surrealist in UI for DB management
- **Storage Layer**
  - Provision Storj buckets and serve files
  - Show bandwidth, object stats in UI

**User Experience:**

- `io init` to set up an app
- `io deploy` to launch to AWS
- `io open` to view status and logs
- Auto-detects DNS, configures routes, and bootstraps runtime
- Optional MFA/secret manager support

---

### Timeline

- ✅ Q1 2025: CLI prototyped with shell
- ✅ Q2 2025: Mojo refactor started
- 🔜 Q3 2025: Full UI + Surrealist + Storj integration
- 🔜 Q4 2025: AI tooling, iOS/Android simulator interface
- 🔜 Q1 2026: Hosted IO SaaS & plugin store

---

## Implementation
<hr>

### Operations

- Manages credential setup: AWS access keys, Storj auth, Cloudflare API
- Pulls network info from Cloudflare for real-time DNS sync
- Manages lifecycle of EC2, ASG, and Lambda via minimal templates
- Deployments are idempotent and incremental

---

### Management

- Embedded admin panel (IO UI)
- Surrealist dashboard for querying live DB
- Storj dashboard for monitoring storage usage and file activity
- MFA + role-based access for managing projects

---

### Development

- CLI-first developer interface (`io`)
- Mojo-native CLI, shell-compatible
- All project settings live in a single config file
- Supports simulator previews (browser, iOS, Android)
- AI assistant baked into CLI and UI (via maia plugin)

---

<a href="#" style="float: right">Documentation</a> 
<hr>
