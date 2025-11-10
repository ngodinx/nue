# Gunakan Bun resmi
FROM oven/bun:1.2

WORKDIR /app

# Salin semua file proyek
COPY . .

# Install Nuekit global
RUN bun install --global nuekit

# Build versi production (tanpa hot reload)
RUN nue build

# Expose port (default Nue preview di 4000)
EXPOSE 4000

# Jalankan hasil build (no HMR, aman HTTPS)
CMD ["nue", "preview", "--port", "4000"]
