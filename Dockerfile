# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# COPY nginx.conf /etc/nginx/nginx.conf

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the content of the html directory to the default nginx public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]