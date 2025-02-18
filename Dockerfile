# Use the official Nginx image as a base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the necessary files
COPY index.html education.html styles.css script.js typewriter.js experience.html /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images/
COPY favicon.ico /usr/share/nginx/html/ 
COPY nginx.conf /etc/nginx/conf.d/default.conf
# COPY pbkshreya_resume.pdf /usr/share/nginx/html/


# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
