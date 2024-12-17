# Build stage
FROM node:20-alpine AS development
WORKDIR /app
COPY krampoline/ ./
	
RUN npm install -g npm@11.0.0

EXPOSE 3000
CMD ["npm", "run", "dev"]