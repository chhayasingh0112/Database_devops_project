# Use the official MySQL 8 image as the base image
FROM mysql:8

# Copy the init.sql file to the /docker-entrypoint-initdb.d directory in the container
COPY init.sql /docker-entrypoint-initdb.d/

#Install python connector
#RUN pip install mysql-connector-python

# Set the root password for the MySQL instance
ENV MYSQL_ROOT_PASSWORD="root"

# Expose the default MySQL port (3306)
EXPOSE 3306