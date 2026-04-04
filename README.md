<div align="center">

# 🚦 Urban Traffic Management System
### *Addressing Urban Traffic Management Through Technological Integration*

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://python.org)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.104+-009688.svg)](https://fastapi.tiangolo.com)
[![YOLOv8](https://img.shields.io/badge/YOLOv8-Detection-red.svg)](https://ultralytics.com)
[![Docker](https://img.shields.io/badge/Docker-Ready-2496ED.svg)](https://docker.com)
[![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-2088FF.svg)](.github/workflows)
[![Team](https://img.shields.io/badge/Team-Tech%20Titan%20%2324-blueviolet.svg)](#team)

> **Tech Titans** | AI + IoT platform for smarter, greener, safer urban mobility.

</div>

---

## 📋 Table of Contents
- [Problem Statement](#-problem-statement)
- [Proposed Solution](#-proposed-solution)
- [System Architecture](#-system-architecture)
- [Key Technologies](#-key-technologies)
- [Repository Structure](#-repository-structure)
- [Getting Started](#-getting-started)
- [Modules Overview](#-modules-overview)
- [API Reference](#-api-reference)
- [Data Flow Diagram](#-data-flow-diagram)
- [ML Pipeline](#-ml-pipeline)
- [Configuration](#-configuration)
- [Deployment](#-deployment)
- [Roadmap](#-roadmap)
- [Case Studies](#-case-studies)
- [Contributing](#-contributing)
- [Team](#-team)
- [License](#-license)

---

## 🚨 Problem Statement

Urban roads are buckling under rapid population growth and surging vehicle ownership. Existing infrastructure fails to adapt in real time, causing:

| Problem | Impact |
|---|---|
| Overloaded road infrastructure | Chronic gridlock, hours lost daily |
| No real-time monitoring | Inability to react to accidents/surges |
| Outdated signal timing | Fuel waste, emissions spike |
| Poor transit coordination | Missed connections, frustrated commuters |
| Safety blind spots | Higher accident rates at intersections |

> **Goal:** Revolutionize urban mobility using AI, IoT, and real-time analytics to build adaptive, efficient, and sustainable traffic systems.

---

## 💡 Proposed Solution

Our platform integrates six interconnected layers:

```
┌─────────────────────────────────────────────────────────┐
│               URBAN TRAFFIC PLATFORM                    │
│                                                         │
│  📷 SENSE → 🧠 ANALYZE → 📡 TRANSMIT → 🚦 CONTROL     │
└─────────────────────────────────────────────────────────┘
```

1. **Real-Time Data Collection** — IoT sensors, CCTV cameras, environmental monitors
2. **AI/ML Processing** — YOLOv8 detection, XGBoost congestion prediction, adaptive signals
3. **Communication Layer** — LoRa / 5G for edge-to-cloud transmission
4. **Traffic Control** — Dynamic signal timing, digital display updates
5. **Eco Measures** — EV priority lanes, idling reduction, emissions tracking
6. **Continuous Learning** — Feedback loop with ML model retraining

---

## 🏗 System Architecture

```
                    ┌───────────────────────────────────┐
                    │          CLOUD BACKEND            │
                    │  ┌──────────┐  ┌──────────────┐   │
                    │  │ FastAPI  │  │  ML Models   │   │
                    │  │   API    │  │ YOLO/XGBoost │   │
                    │  └────┬─────┘  └──────┬───────┘   │
                    │       │               │           │
                    │  ┌────▼───────────────▼────────┐  │
                    │  │  PostgreSQL + InfluxDB      │  │
                    │  └──────────────────────────── ┘  │
                    └────────────┬──────────────────────┘
                                 │ 5G / LoRa
         ┌───────────────────────┼──────────────────────┐
         │                       │                      │
┌────────▼───────┐    ┌──────────▼───────┐    ┌─────────▼──────┐
│  EDGE NODE #1  │    │  EDGE NODE #2    │    │  EDGE NODE #N  │
│  Intersection  │    │  Highway Ramp    │    │  Smart Zone    │
│  Camera + IoT  │    │  Camera + IoT    │    │  Camera + IoT  │
│  🚦 Signal     │    │  🚦 Signal      │    │  🚦 Signal     │
└────────────────┘    └──────────────────┘    └────────────────┘
         │                       │                      │
┌────────▼───────────────────────▼──────────────────────▼──────┐
│              COMMUTER INTERFACES                             │
│     📱 Mobile App    🖥 Dashboard    📺 Roadside Display    │
└──────────────────────────────────────────────────────────────┘
```

---

## 🔧 Key Technologies

| Layer | Technologies |
|---|---|
| **Computer Vision** | YOLOv4, YOLOv8, OpenCV |
| **Machine Learning** | XGBoost, TensorFlow, Scikit-learn |
| **Backend API** | FastAPI, Python 3.10+ |
| **IoT / Edge** | Raspberry Pi, NVIDIA Jetson, LoRa, MQTT |
| **Database** | PostgreSQL, InfluxDB, Redis |
| **Communication** | 5G NR, LoRaWAN, WebSocket |
| **Dashboard** | React.js, Chart.js, Leaflet.js |
| **DevOps** | Docker, GitHub Actions, Kubernetes |
| **Monitoring** | Prometheus, Grafana |

---

## 📁 Repository Structure

```
urban-traffic-management/
│
├── README.md                      # This file
├── LICENSE                        # MIT License
├── CONTRIBUTING.md                # Contribution guidelines
├── CODE_OF_CONDUCT.md             # Community standards
├── CHANGELOG.md                   # Version history
├── SECURITY.md                    # Security policy
├── docker-compose.yml             # Full-stack Docker setup
├── requirements.txt               # Python dependencies
├── requirements-dev.txt           # Dev dependencies
├── .env.example                   # Environment variable template
├── .gitignore                     # Git ignore rules
│
├── src/                           # Core source code
│   ├── ai_engine/                 # AI/ML models
│   │   ├── vehicle_detector.py    # YOLOv8 detection
│   │   ├── congestion_predictor.py
│   │   ├── signal_optimizer.py
│   │   └── model_trainer.py
│   │
│   ├── iot_layer/                 # IoT & sensor management
│   │   ├── sensor_manager.py
│   │   ├── mqtt_client.py
│   │   └── edge_processor.py
│   │
│   ├── api/                       # REST API (FastAPI)
│   │   ├── main.py
│   │   ├── routes/
│   │   ├── models/
│   │   └── middleware/
│   │
│   ├── signal_control/            # Traffic signal management
│   │   ├── adaptive_controller.py
│   │   ├── emergency_handler.py
│   │   └── phase_scheduler.py
│   │
│   ├── dashboard/                 # React web dashboard
│   └── utils/                     # Shared utilities
│
├── diagrams/                      # Architecture & flow diagrams
├── docs/                          # Extended documentation
├── configs/                       # YAML configuration files
├── scripts/                       # Utility scripts
├── tests/                         # Test suite
└── .github/                       # CI/CD & issue templates
    ├── workflows/
    └── ISSUE_TEMPLATE/
```

---

## 🚀 Getting Started

### Prerequisites
- Python 3.10+
- Docker & Docker Compose
- Node.js 18+ (for dashboard)
- Git

### Quick Start (Docker)

```bash
# Clone
git clone https://github.com/TechTitan-24/urban-traffic-management.git
cd urban-traffic-management

# Configure environment
cp .env.example .env

# Launch full stack
docker-compose up --build

# Access services
# API Docs:  http://localhost:8000/docs
# Dashboard: http://localhost:3000
# Grafana:   http://localhost:3001
```

### Manual Setup

```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

cp .env.example .env
python scripts/init_db.py

uvicorn src.api.main:app --reload --port 8000
```

### Run Tests

```bash
pytest tests/ -v --cov=src --cov-report=html
```

---

## 📦 Modules Overview

### 🤖 AI Engine

| Module | Description |
|---|---|
| `vehicle_detector.py` | Real-time detection using YOLOv8; counts vehicles per lane |
| `congestion_predictor.py` | XGBoost regression for congestion scoring (0–100) |
| `signal_optimizer.py` | RL agent (PPO) for optimal green-light timing |
| `model_trainer.py` | Training pipeline with MLflow tracking |

### 📡 IoT Layer

| Module | Description |
|---|---|
| `sensor_manager.py` | Registration, polling, and health-check of IoT sensors |
| `mqtt_client.py` | MQTT publish/subscribe for edge ↔ cloud |
| `edge_processor.py` | Lightweight pre-processing on Raspberry Pi / Jetson |

### 🚦 Signal Control

| Module | Description |
|---|---|
| `adaptive_controller.py` | Dynamically adjusts green/red durations |
| `emergency_handler.py` | Pre-empts cycle for ambulances, fire trucks |
| `phase_scheduler.py` | Multi-phase scheduling for complex intersections |

---

## 🌐 API Reference

**Base URL:** `http://localhost:8000/api/v1`

| Method | Endpoint | Description |
|---|---|---|
| GET | `/traffic/live` | Live traffic density per intersection |
| GET | `/traffic/history` | Historical traffic data |
| POST | `/signals/update` | Update signal timing |
| GET | `/signals/status` | Current signal states |
| GET | `/sensors` | All sensor statuses |
| GET | `/analytics/predict` | Congestion prediction (next N minutes) |
| GET | `/analytics/heatmap` | Traffic heatmap data |
| POST | `/alerts` | Trigger emergency alert |

**Example — Live traffic response:**
```json
{
  "intersection_id": "INT_001",
  "timestamp": "2025-04-03T10:30:00Z",
  "lanes": {
    "north": { "vehicle_count": 34, "congestion_score": 72 },
    "east":  { "vehicle_count": 52, "congestion_score": 88 }
  },
  "recommended_green_duration": 45
}
```

> Full docs: `http://localhost:8000/docs` (Swagger UI)

---

## 🔄 Data Flow Diagram

```
📷 CCTV Camera
      │
      ▼
┌─────────────┐    ┌──────────────┐    ┌─────────────────────┐
│  YOLOv8     │───▶│ Edge Device  │───▶│  MQTT / 5G / LoRa  │
│  Detection  │    │ (Pi/Jetson)  │    │  Message Broker     │
└─────────────┘    └──────────────┘    └──────────┬──────────┘
                                                   │
📟 IoT Sensors ─────────────────────────────────▶ │
   (Speed, AQ, Inductive Loops)                    │
                                                   ▼
                                      ┌────────────────────────┐
                                      │   Cloud API (FastAPI)  │
                                      └────────┬───────────────┘
                                               │
                         ┌─────────────────────┼──────────────┐
                         ▼                     ▼              ▼
                  ┌────────────┐    ┌──────────────┐    ┌────────┐
                  │ PostgreSQL │    │   InfluxDB   │    │ Redis  │
                  └──────┬─────┘    └──────┬───────┘    └───┬────┘
                         │                 │                 │
                         └────────┬────────┘                 │
                                  ▼                          │
                        ┌──────────────────┐                 │
                        │    ML Engine     │◀───────────────┘
                        │ (XGBoost / RL)   │
                        └──────┬───────────┘
                               │
              ┌────────────────┼──────────────────┐
              ▼                ▼                  ▼
       🚦 Signal Control  📱 Mobile App   🖥 Dashboard
```

---

## 🧠 ML Pipeline

```
Raw Video → Frame Extraction (OpenCV)
                │
                ▼
         YOLOv8 Inference
         [Cars | Buses | Trucks | Bikes | Pedestrians]
                │
                ▼
         Feature Vector Construction
         [vehicle_count + time_of_day + weather + history]
                │
                ▼
         XGBoost Regression
         [congestion_score: 0–100]
                │
                ▼
         RL Agent (PPO)
         [Multi-intersection green-time optimization]
                │
                ▼
         Signal Hardware Command
```

---

## ⚙️ Configuration

Key settings in `configs/app.yaml`:

```yaml
app:
  name: "Urban Traffic Management System"
  version: "1.0.0"

ml:
  yolo_model: "yolov8n.pt"
  confidence_threshold: 0.65
  xgboost_model: "models/congestion_v2.pkl"

iot:
  mqtt_broker: "${MQTT_BROKER}"
  lora_frequency: 915.0
  polling_interval_sec: 5
```

---

## 🐳 Deployment

```bash
# Full stack
docker-compose up --build -d

# Kubernetes
kubectl apply -f k8s/
```

**Services:** API (8000), Dashboard (3000), PostgreSQL (5432), InfluxDB (8086), Redis (6379), MQTT (1883), Grafana (3001)

**CI/CD (every push to `main`):** Lint → Test → Docker Build → Push → Deploy

---

## 🗺 Roadmap

| Phase | Milestone | Status |
|---|---|---|
| Phase 1 | Prototype — single intersection | ✅ Complete |
| Phase 2 | Enhanced monitoring — multi-intersection | 🔄 In Progress |
| Phase 3 | Subscription model & pilot city | 📅 Q3 2025 |
| Phase 4 | Policy collaboration & multi-city rollout | 📅 Q1 2026 |
| Phase 5 | Global standardization & open API | 📅 2027 |

**Upcoming:** AV/V2X integration, EV smart charging, micro-mobility routing, drone surveillance, digital twin city simulation.

---

## 📚 Case Studies

| City | Solution | Result |
|---|---|---|
| 🇸🇬 Singapore | GPS-based ERP tolling | 15% congestion reduction |
| 🇳🇱 Amsterdam | IoT + transit sync | Higher punctuality |
| 🇮🇳 Bangalore | AI camera surveillance | Reduced congestion |
| 🇺🇸 Los Angeles | Adaptive AI signals | 12–15% travel time reduction |

---

## 🤝 Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

```bash
git checkout -b feature/your-feature
git commit -m "feat: add your feature"
git push origin feature/your-feature
# Open a Pull Request
```

Commit convention: `feat:` `fix:` `docs:` `test:` `refactor:`

---

## 👥 Team

**Tech Titan — Team #24**

| Role | Responsibility |
|---|---|
| AI/ML Engineer | YOLOv8, XGBoost, RL agent |
| IoT Engineer | Sensors, MQTT, edge processing |
| Backend Developer | FastAPI, databases |
| Frontend Developer | React dashboard |
| DevOps Engineer | Docker, CI/CD |
| Urban Planner | Domain expertise |

---

## 📄 License

[MIT License](LICENSE) — © 2025 Tech Titan Team #24

---

<div align="center">

**Built with ❤️ by Tech Titan Team #24**

*Making cities smarter, safer, and greener — one intersection at a time.*

⭐ Star this repo if you find it useful!

</div>
