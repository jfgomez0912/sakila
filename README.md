# Sakila

This repository provides resources to mount a MySQL Docker container preloaded with the Sakila sample database. Sakila is a popular example database designed for learning and demonstrating database concepts, especially with MySQL.

## Getting Started

1. Clone this repository.
2. Create a `.env` file in the project root and set your desired MySQL root password. For example:

   ```env
   MYSQL_ROOT_PASSWORD=your_password
   ```

   You can use the provided `.env.example` file in the repository as a reference.

3. Use the provided Makefile to set up the MySQL Docker container with the Sakila database:

   ```sh
   make run
   ```

   This will download the queries to set the database up and start the MySQL container.

4. Connect to the MySQL server (e.g., using a SQL client) with:
   - Host: `localhost`
   - Port: `3306`
   - User: `root`
   - Password: `your_password`
5. The Sakila schema and data will be available in the container.

## Resources

- [Official Sakila Documentation](https://dev.mysql.com/doc/sakila/en/)
- [MySQL Documentation](https://dev.mysql.com/doc/)

## License

This project is provided for educational purposes.
