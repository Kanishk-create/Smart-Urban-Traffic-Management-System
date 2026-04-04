# Changelog

All notable changes to the Urban Traffic Management System are documented here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).  
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Planned
- Autonomous vehicle (V2X) communication interface
- EV smart charging integration
- Micro-mobility (e-scooter/bike) real-time routing
- Drone surveillance for incident detection
- Digital twin city simulation

---

## [1.0.0] — 2025-04-03

### Added
- **AI Engine**: YOLOv8 real-time vehicle detection with per-lane counting
- **AI Engine**: XGBoost congestion prediction (score 0–100)
- **AI Engine**: PPO reinforcement learning agent for signal optimization
- **IoT Layer**: Sensor manager for inductive loops, AQ, radar, environmental sensors
- **IoT Layer**: MQTT client with auto-reconnect and topic routing
- **Signal Control**: Adaptive controller with ML-driven green time computation
- **Signal Control**: Emergency vehicle pre-emption handler
- **Signal Control**: Multi-phase scheduling for complex intersections
- **API**: FastAPI REST endpoints for traffic, signals, sensors, analytics, alerts
- **API**: JWT authentication with role-based access (admin/operator/viewer)
- **API**: WebSocket real-time traffic stream
- **Dashboard**: React + Leaflet.js city map with live congestion overlay
- **Database**: PostgreSQL schema for intersections, sensors, events, incidents
- **Database**: InfluxDB time-series for high-frequency sensor + detection data
- **Infrastructure**: Full Docker Compose stack (API, Dashboard, PG, InfluxDB, Redis, MQTT, Grafana)
- **Infrastructure**: Kubernetes manifests for production deployment
- **CI/CD**: GitHub Actions pipeline (lint → test → docker build → deploy)
- **Monitoring**: Prometheus metrics + Grafana dashboards
- **Docs**: Full API reference, architecture, ER diagram, ML pipeline, deployment diagram
- **Docs**: Business model and revenue strategy

### Infrastructure
- Python 3.11 + FastAPI 0.110
- YOLOv8 (ultralytics 8.1)
- XGBoost 2.0 + Stable-Baselines3 2.3
- PostgreSQL 16 + InfluxDB 2.7 + Redis 7
- Docker Compose + Kubernetes
- GitHub Actions CI/CD

---

## [0.2.0] — 2025-02-15

### Added
- Multi-intersection signal coordination
- XGBoost congestion predictor (initial version)
- InfluxDB integration for time-series storage
- Basic React dashboard with Chart.js

### Fixed
- MQTT reconnect loop causing memory leak
- Lane zone detection off-by-one pixel boundary

---

## [0.1.0] — 2025-01-10

### Added
- Single-intersection prototype
- YOLOv4 vehicle detection (OpenCV DNN backend)
- Rule-based adaptive signal timing
- FastAPI skeleton with `/health` and `/traffic/live`
- PostgreSQL schema v1 (intersections, sensors)
- Docker Compose (API + PostgreSQL + Redis)
