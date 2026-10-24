FROM oven/bun:1.4.4
WORKDIR /app
COPY package.json bun.lock bunfig.toml ./
RUN bun install --frozen-lockfile --production
COPY src ./src
ENV NODE_ENV=production
CMD ["bun", "run", "src/index.ts"]
