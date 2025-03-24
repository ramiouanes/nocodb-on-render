FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install NocoDB
RUN npm install -g nocodb

# Expose default port
EXPOSE 8080

# Set database to SQLite
ENV NC_DB=sqlite
ENV DATABASE_URL=sqlite://data/nocodb.db

# Run NocoDB
CMD ["nocodb"]
