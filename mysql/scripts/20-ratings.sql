-- Create user (without specifying a password)
CREATE USER 'ratings'@'%';

-- Grant privileges on the ratings database
GRANT ALL PRIVILEGES ON ratings.* TO 'ratings'@'%';
FLUSH PRIVILEGES;

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS ratings;

-- Use the database
USE ratings;

-- Create the table
CREATE TABLE ratings (
    sku VARCHAR(80) NOT NULL,
    avg_rating DECIMAL(3,2) NOT NULL,
    rating_count INT NOT NULL,
    PRIMARY KEY (sku)
) ENGINE=InnoDB;


