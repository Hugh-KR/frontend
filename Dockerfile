# 빌드 단계
FROM node:20-alpine AS builder
WORKDIR /usr/src/app
COPY krampoline/ ./
RUN npm ci
RUN npm run build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "build"]