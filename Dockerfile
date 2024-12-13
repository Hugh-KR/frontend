# 빌드 단계
FROM node:20-alpine AS builder
WORKDIR /app
COPY . .
RUN npm install && npm run build

# 배포 단계
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]