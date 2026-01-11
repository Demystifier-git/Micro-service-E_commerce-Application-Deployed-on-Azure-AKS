CREATE USER 'ratings'@'%' IDENTIFIED BY 'iloveit';
GRANT ALL PRIVILEGES ON ratings.* TO 'ratings'@'%';
FLUSH PRIVILEGES;

USE ratings;

CREATE TABLE ratings (
    sku varchar(80) NOT NULL,
    avg_rating DECIMAL(3, 2) NOT NULL,
    rating_count INT NOT NULL,
    PRIMARY KEY (sku)
) ENGINE=InnoDB;


GRANT ALL ON ratings.* TO 'ratings'@'%'
IDENTIFIED BY 'iloveit';

