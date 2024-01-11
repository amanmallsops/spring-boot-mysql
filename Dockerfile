# Use the official MySQL image
FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
    MYSQL_DATABASE=${MYSQL_DATABASE}

# Expose the MySQL port
EXPOSE 3306


# The official MySQL image automatically runs scripts placed in /docker-entrypoint-initdb.d/
# during container initialization. Place SQL scripts there if you need to initialize the database.

# Example: If you have an init.sql script, you can copy it to the image using the following command
# COPY ./init.sql /docker-entrypoint-initdb.d/

# Remember to build the image using:
# docker build -t my-mysql-image .

# Once the image is built, you can run it as a container
# docker run -d -p 3306:3306 --name mysqldb my-mysql-image

