# Contributing to Urban Traffic Management System

Thank you for your interest in contributing! This document explains how to get involved.

---

## Code of Conduct

Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md). We are committed to maintaining a respectful, inclusive environment.

---

## How to Contribute

### 1. Find an Issue
- Browse [open issues](https://github.com/TechTitan-24/urban-traffic-management/issues)
- Look for `good first issue` or `help wanted` labels
- Comment on the issue to claim it before starting work

### 2. Fork & Clone
```bash
git clone https://github.com/YOUR_USERNAME/urban-traffic-management.git
cd urban-traffic-management
git remote add upstream https://github.com/TechTitan-24/urban-traffic-management.git
```

### 3. Set Up Environment
```bash
bash scripts/setup.sh
```

### 4. Create a Branch
```bash
git checkout -b feat/your-feature-name
# or
git checkout -b fix/issue-123-short-description
```

### 5. Make Your Changes

- Follow the [style guide](#style-guide) below
- Write or update tests for any changed behaviour
- Keep commits small and focused

### 6. Test
```bash
pytest tests/ -v --cov=src --cov-fail-under=75
ruff check src/ tests/
black --check src/ tests/
```

### 7. Commit
Use conventional commits:

```
feat: add emergency vehicle GPS tracking
fix: correct lane zone boundary detection
docs: update API reference for /signals endpoint
test: add unit tests for congestion predictor
refactor: extract lane assignment logic to helper
chore: bump yolov8 dependency to 8.2.0
```

### 8. Push & Open a PR
```bash
git push origin feat/your-feature-name
```
Then open a Pull Request on GitHub using the PR template.

---

## Style Guide

### Python
- Formatter: **black** (line length 100)
- Linter: **ruff**
- Type hints required for all public functions
- Docstrings: Google style

```python
def compute_green_duration(phase: PhaseConfig, demand: Dict[str, TrafficDemand]) -> float:
    """
    Compute optimal green duration for a signal phase.

    Args:
        phase: Phase configuration with min/max bounds.
        demand: Current traffic demand per direction.

    Returns:
        Green duration in seconds, clamped to [min_green, max_green].
    """
```

### Commit Messages
- Present tense: "add feature" not "added feature"
- Imperative mood: "fix bug" not "fixes bug"
- Reference issues: `fix: handle null sensor reading (#42)`

### Tests
- Minimum coverage: **75%** overall, **90%** for core modules
- Use descriptive test names: `test_high_demand_gives_longer_green`
- Use fixtures in `conftest.py` for shared setup

---

## Project Structure

See [README.md — Repository Structure](README.md#-repository-structure) for a full breakdown.

---

## Review Process

1. A maintainer will review your PR within 48 hours
2. CI must pass (lint + tests + docker build)
3. At least **1 approval** required for merge
4. Breaking changes require **2 approvals**

---

## Questions?

Open a [discussion](https://github.com/TechTitan-24/urban-traffic-management/discussions) or reach out to the team. We're happy to help!
