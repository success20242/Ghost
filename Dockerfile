FROM ghost:5-alpine

# Set working directory inside container
WORKDIR /var/lib/ghost

# Copy custom configuration file if needed
COPY config.production.json .

# Expose port
EXPOSE 2368

# Start Ghost
CMD ["node", "current/index.js"]
