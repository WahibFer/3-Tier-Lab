# Database Dockerfile
FROM mysql:8.3.0

# Copy the SQL initialization script into the container
COPY init.sql /docker-entrypoint-initdb.d/

# Set permissions for the script
RUN chmod 755 /docker-entrypoint-initdb.d/init.sql 

EXPOSE 3306
VOLUME /var/lib/mysql
# Entrypoint script to load environment variables
RUN mkdir -p /run/secrets/
COPY mysql_env /run/secrets/mysql_env

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["mysqld"]