# Build stage
FROM node:20-alpine AS development
WORKDIR /app
COPY . .
	
RUN npm install -g npm@11.0.0

EXPOSE 3000
CMD ["npx", "next", "dev", "--turbo"]