# Security Policy

## Supported Versions

| Version | Supported |
|---|---|
| 1.x.x | ✅ Yes |
| 0.x.x | ❌ No |

## Reporting a Vulnerability

**Please do NOT open a public GitHub issue for security vulnerabilities.**

Instead, email us at: **security@techtitan24.example.com**

Include:
- Description of the vulnerability
- Steps to reproduce
- Potential impact
- Suggested fix (optional)

We will respond within **48 hours** and aim to release a patch within **7 days** for critical issues.

## Security Measures in This Project

- JWT authentication with short-lived tokens (1 hour)
- Role-based access control (admin / operator / viewer)
- All secrets loaded from environment variables — never hardcoded
- MQTT broker supports TLS in production (`configs/mosquitto.conf`)
- Docker images run as non-root user (UID 1001)
- Dependencies scanned with Trivy in CI pipeline
- SQL injection protected via SQLAlchemy ORM parameterized queries
- Rate limiting on all public API endpoints
