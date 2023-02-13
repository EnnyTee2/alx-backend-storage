-- Script to create table 'users' with some requirements

CREATE TABLE IF NOT EXISTS users (
    PRIMARY KEY(id),
    id INT UNIQUE NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE NOT NULL
    name VARCHAR(255)
);
