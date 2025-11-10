# Gunakan Bun resmi
FROM oven/bun:1.2

# Set direktori kerja
WORKDIR /app

# Salin semua file proyek
COPY . .

# Install Nuekit (CLI) secara global
RUN bun install --global nuekit || bunx nuekit@latest

# Pastikan path bin Bun dikenali
ENV PATH="/root/.bun/bin:/usr/local/bin:${PATH}"

# Expose port default Nue.js
EXPOSE 4000

# Jalankan Nue dev server
CMD ["bunx", "nue", "dev"]
