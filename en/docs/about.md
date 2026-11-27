# About

I'm a DevOps engineer from Almaty with **10+ years in IT infrastructure** — from system
administration to running high-load, fault-tolerant platforms on Kubernetes across multiple
data centers. Before going all-in on DevOps I also worked as a Python backend developer
(Django REST Framework, FastAPI).

I build pet projects to go deeper into the tools I use at work, and to explore how AI can make
infrastructure work faster and safer.

## Experience

### DevOps Engineer — National Payment Corporation
*Nov 2024 — present*

- Full lifecycle of a high-load, fault-tolerant Kubernetes platform: deployment, monitoring, upgrades
- CI/CD with GitLab CI, Ansible, Terraform, Nexus and Helm for Spring Boot / Angular microservices
- PostgreSQL replication and backups; Kafka, BIND, HAProxy, Nginx, ELK, Zabbix, VictoriaMetrics, Grafana
- Virtual infrastructure on VMware and Proxmox, replication across several data centers
- Introduced GitOps with Argo CD on the Anti-Fraud Center project (DEV, STAGE, PRODUCTION)

### DevOps Engineer / Python Backend Developer — Investlink Ltd
*Feb 2024 — Feb 2026*

- Rewrote Django REST Framework backend logic in FastAPI; Celery + RabbitMQ, Redis
- AWS (EC2, S3, IAM, VPC), Docker Swarm and migration to Kubernetes, GitLab CI, Ansible, Terraform

### System Administrator — Business Applications Solutions
*Jun 2021 — Mar 2022*

- VMware virtualization; deployment and support of ELMA4 and ELMA365 on MicroK8s

### Chief Specialist, Administration — Unified Accumulative Pension Fund (ENPF)
*Sep 2013 — Jun 2021*

- Microservices on Docker, Kubernetes, Jenkins, GitLab
- Windows Server and Linux, Active Directory, Exchange, VMware, Proxmox, MySQL, PostgreSQL, PRTG

## Recent highlight: VMware → Proxmox

Our team moved the company's entire virtualization platform from **VMware vSphere to Proxmox VE**:
**140+ nodes and ~1,050 virtual machines** across the test and production environments.

**Stage 1 — test environment (done).** Rebuilt from scratch and moved to Proxmox VE in about
**three weeks**:

- **40+ virtualization nodes** and **~600 virtual machines**
- several project teams and services, integrated with corporate storage and management systems
- ✅ no data loss · ✅ no unplanned downtime · ✅ no changes to application architecture ·
  ✅ existing operational processes kept

**Stage 2 — production (done).** The larger stage: **100+ nodes** and **~450 virtual machines**,
moved in **one month** without downtime for production services. It called for even more careful planning,
automation and standardization.

### Why we moved: cost

After Broadcom acquired VMware, perpetual licenses were discontinued and everything moved to
subscriptions with per-core licensing and a 16-core minimum per CPU. At our scale that meant a
sharp rise in licensing costs, plus a strong dependence on a single vendor's pricing decisions.

### Why Proxmox VE

- **No license fees.** Open source (AGPL) on top of Debian, KVM and LXC; the enterprise
  subscription is optional and pays for support and the stable repository, not for features.
- **Everything in the box.** Clustering, live migration and HA are built in.
- **Storage flexibility.** ZFS, Ceph, NFS, iSCSI, LVM — chosen per workload.
- **Backups.** Proxmox Backup Server: incremental, deduplicated backups with fast restores.
- **Automation-friendly.** REST API, CLI and a Terraform provider fit infrastructure as code.
- **Transparency.** An open codebase and a large community — no black box.

### The tricky part: Red Hat Satellite

Red Hat subscriptions are tracked in Satellite through **virt-who**, which maps virtual machines
to hypervisors — but virt-who doesn't officially support Proxmox VE. So we built our own
integration:

- a **Bash service** started on a schedule by a **systemd timer**
- it polls the Proxmox nodes over **SSH** and collects VM data with `qm list` and `qm config`
- builds a **`virt-who.json`** in the format Satellite expects and sends it to Satellite

Result: hypervisors are still accounted for automatically, subscriptions are mapped correctly,
and nobody registers VMs by hand. The approach scales to any number of nodes and VMs.

### Infrastructure as code

Alongside the migration we kept moving from manual operations to reproducible, controlled
changes: **Terraform** for infrastructure, **Ansible** for configuration, standardized processes.

## GitOps on the Anti-Fraud Center project

On the project I'm responsible for — the **Anti-Fraud Center** — I introduced a **GitOps** approach.
It's the first project in the company to work this way.

**Done:**

- **Argo CD** deployed inside Kubernetes on all three environments: **DEV, STAGE and PRODUCTION**
- every Kubernetes service of the project is now managed by Argo CD from Git
- the repository is protected: changes go in **only through merge requests** with review —
  no manual `kubectl apply`, every change is traceable and easy to roll back

**In progress — automating everything else the same way:**

- **Ansible under GitOps** — playbooks change only through MRs and are applied by a pipeline,
  not from someone's laptop
- **Secrets in Vault** — storage and **automatic rotation**, with **domain (Active Directory)
  authentication**, also managed through Git and MRs

## Cloudflare

New to my toolbox: I started working with Cloudflare while building this site — DNS and
Email Routing for 4etam.com are managed with Terraform using scoped API tokens.
The story is in the [first blog post](blog/2026-11-hello-world.md).

## Stack

| Area              | Tools                                                                 |
|-------------------|-----------------------------------------------------------------------|
| Containers        | Kubernetes, Helm, Docker, Docker Swarm                                 |
| Virtualization    | Proxmox VE, VMware vSphere                                             |
| IaC & CI/CD       | Terraform, Ansible, Argo CD (GitOps), GitLab CI, GitHub Actions, Jenkins, Nexus |
| Data & messaging  | PostgreSQL, Patroni, Kafka, RabbitMQ, Redis                            |
| Networking        | HAProxy, Nginx, BIND, Cloudflare                                       |
| Observability     | Grafana, VictoriaMetrics, Zabbix, ELK                                  |
| Security          | HashiCorp Vault                                                       |
| Cloud             | AWS (EC2, S3, IAM, VPC), DigitalOcean (basics), Cloudflare             |
| Backend           | Python (FastAPI, Django REST Framework), Go (Gin), Bash                 |
| Frontend & mobile | React + TypeScript, Flutter                                            |

## Education

- **Master's in Information Systems** — Turar Ryskulov Kazakh Economic University, 2015

## Certifications & courses

| Year | Certification / course                                  | Issuer                       |
|------|---------------------------------------------------------|------------------------------|
| 2024 | JavaScript (Full-Stack) Developer — React, TypeScript   | Attractor School Almaty      |
| 2023 | Python (Django) Web Developer                           | Attractor School Almaty      |
| 2021 | CCNA *(valid until Dec 2024)*                            | Cisco                        |
| 2021 | Oracle Cloud Infrastructure Operations Associate        | Oracle                       |
| 2018 | Oracle Database 11g: Administration Workshop I          | ELTC Training Center         |
| 2017 | VMware vSphere 6.5: Install, Configure, Manage          | Human Growth Kazakhstan      |
| 2017 | Administering System Center 2012 Configuration Manager  | Microsoft                    |
| 2015 | Linux System Administration                             | ELTC Training Center         |

## Languages

Kazakh (native) · Russian (C1) · English (B1)

## Contact

- Email: [me@4etam.com](mailto:me@4etam.com)
- GitHub: [almaty-itrider](https://github.com/almaty-itrider)
- LinkedIn: [abylay-kuvatov](https://www.linkedin.com/in/abylay-kuvatov-443b57168/)
