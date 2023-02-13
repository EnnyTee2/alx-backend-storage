-- Script to create table 'users' with some requirements
-- id, name, email
CREATE TABLE IF NOT EXISTS users (
    id INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE NOT NULL
    name VARCHAR(255)
);
