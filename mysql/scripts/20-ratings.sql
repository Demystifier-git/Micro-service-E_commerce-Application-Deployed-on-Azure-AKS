-- Create user and grant privileges
CREATE USER 'ratings'@'%' IDENTIFIED BY 'iloveit';
GRANT ALL PRIVILEGES ON ratings.* TO 'ratings'@'%';
FLUSH PRIVILEGES;

-- Use the database
USE ratings;

-- Create table
CREATE TABLE ratings (
    sku VARCHAR(80) NOT NULL,
    avg_rating DECIMAL(3,2) NOT NULL,
    rating_count INT NOT NULL,
    PRIMARY KEY (sku)
) ENGINE=InnoDB;

