# Database Dockerfile

# cat Dockerfile
FROM mysql:latest

# Copy the SQL initialization script into the container
COPY init.sql /docker-entrypoint-initdb.d/

# Set permissions for the script
RUN chmod 755 /docker-entrypoint-initdb.d/init.sql 

#ENV MYSQL_DATABASE=my_db_wahib
#ENV MYSQL_USER=wahib
#ENV MYSQL_PASSWORD=wahib
#ENV MYSQL_ROOT_PASSWORD=root

#ADD data.sql /etc/mysql/data.sql

#RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/data.sql
#RUN cp /etc/mysql/data.sql /docker-entrypoint-initdb.d

EXPOSE 3306
VOLUME /var/lib/mysql
# Entrypoint script to load environment variables
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["mysqld"]