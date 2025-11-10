FROM oven/bun:1.2

WORKDIR /app
COPY . .

# Install Nuekit
RUN bun install --global nuekit || bunx nuekit@latest
ENV PATH="/root/.bun/bin:/usr/local/bin:${PATH}"

# Build project (hasilnya static)
RUN bunx nue build

# Expose port
EXPOSE 4000

# Jalankan hasil build
CMD ["bunx", "nue", "serve"]
