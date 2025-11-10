# Gunakan Bun resmi dari oven-sh
FROM oven/bun:1.2

# Set direktori kerja
WORKDIR /app

# Copy semua file proyek
COPY . .

# Install Nuekit secara global
RUN bun install
