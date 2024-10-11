# Use the official Nginx image from Docker Hub
#use a lightweight Nginx web server (Alpine version) to serve the web app
FROM nginx:alpine

# Remove the default Nginx configuration and files so we can replace it with our custom Vanilla JS application.
RUN rm -rf /usr/share/nginx/html/*

# Copy the current directory (all files like HTML, CSS, JS) to the container
COPY . /usr/share/nginx/html

# Expose port 80 inside the container (Nginx runs on port 80)
EXPOSE 80