# Use a more recent Debian/Ubuntu-based image
FROM node:20-bookworm-slim   # or node:22-bookworm-slim, node:18-bookworm-slim, etc.

# Install the Chromium / Puppeteer / Playwright dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    fonts-liberation \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libxshmfence1 \
    libxcomposite1 \
    libxdamage1 \
    libgbm1 \
    libxrandr2 \
    libxtst6 \
    libu2f-udev \
    wget \
    && rm -rf /var/lib/apt/lists/*
