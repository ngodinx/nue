# Gunakan Bun resmi
FROM oven/bun:1.2

# Set direktori kerja
WORKDIR /app

# Salin semua file proyek
COPY . .

# Install Nuekit secara global
RUN bun install --global nuekit@latest || bun x nuekit@latest

# Pastikan path bun global bin dikenali
ENV PATH="/root/.bun/bin:/usr/local/bin:${PATH}"

# Expose port default Nue.js
EXPOSE 4000

# Jalankan Nue dev server
CMD ["bun", "x", "nue", "dev", "--host", "0.0.0.0"]
