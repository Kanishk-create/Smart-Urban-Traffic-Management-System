# ================================================================
# Urban Traffic Management System — API Dockerfile
# Tech Titan Team #24
# ================================================================

FROM python:3.11-slim AS base

# System deps for OpenCV & ML libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgl1 libglib2.0-0 curl gcc \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY src/ ./src/
COPY configs/ ./configs/
COPY scripts/ ./scripts/

# Create required directories
RUN mkdir -p logs models

# Non-root user for security
RUN useradd -m -u 1001 utm && chown -R utm:utm /app
USER utm

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=10s --start-period=15s --retries=3 \
    CMD curl -f http://localhost:8000/health || exit 1

CMD ["uvicorn", "src.api.main:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "2"]
