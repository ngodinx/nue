# Gunakan Bun resmi
FROM oven/bun:1.2

# Set direktori kerja
WORKDIR /app

# Salin semua file proyek
COPY . .

# Install Nuekit secara global
RUN bun install --global nuekit

# Pastikan command "nue" tersedia di PATH
ENV PATH="/root/.bun/bin:${PATH}"

# Expose port default Nue
EXPOSE 4000

# Jalankan Nue dev server
CMD ["/root/.bun/bin/nue", "dev", "--host", "0.0.0.0"]
