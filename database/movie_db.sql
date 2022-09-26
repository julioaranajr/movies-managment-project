#Create a new database 
CREATE DATABASE movie_db;

#Show all databases
SHOW DATABASE;

#Use our new database
USE movie_db;

#Show existing tbl
SHOW TABLES;

# CREATE table directors
CREATE TABLE directors_tbl(
    id int NOT NULL AUTO_INCREMENT, 
    name varchar(255), 
    year_of_birth int,
    PRIMARY KEY (id) 
);


# Get information about the table DESCRIBE <table_name>
DESCRIBE directors_tbl;

# Add a new entry to the table

INSERT INTO directors_tbl VALUES
(null, "James Cameron", 1954),
(null, "Christopher Nolan", 1970),
(null, "Patty Jenkins", 1971),
(null, "Chloe Zhaos", 1982);

# Show all data from table
SELECT * FROM directors_tbl;

# CREATE our Movie table
CREATE TABLE movies_tbl(
    id int NOT NULL AUTO_INCREMENT, 
    title varchar(255), 
    release_year int,
    director_id int NOT NULL,
    PRIMARY KEY (id), 
    FOREIGN KEY (director_id) REFERENCES directors_tbl(id)
);


# Add a new movie in Movie table
INSERT INTO movies_tbl VALUES
(null, "Titanic", 1997,  (SELECT id FROM directors_tbl WHERE name like "James Cameron")), 
(null, "Wonder Woman", 2017,  (SELECT id FROM directors_tbl WHERE name like "Patty Jenkins")),
(null, "Avatar", 2009,  (SELECT id FROM directors_tbl WHERE name like "James Cameron")), 
(null, "Aliens", 1986,  (SELECT id FROM directors_tbl WHERE name like "James Cameron")), 
(null, "Inception", 2010,  (SELECT id FROM directors_tbl WHERE name like "Christopher Nolan")), 
(null, "Terminator", 1984,  (SELECT id FROM directors_tbl WHERE name like "James Cameron")), 
(null, "Cleopatra", 2023,  (SELECT id FROM directors_tbl WHERE name like "Patty Jenkins")), 
(null, "Eternals", 2021,  (SELECT id FROM directors_tbl WHERE name like "Chloe Zhaos")), 
(null, "The Dark Knight", 2008,  (SELECT id FROM directors_tbl WHERE name like "Christopher Nolan"));

# CREATE table actors table
CREATE TABLE main_actors_tbl(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    year_of_birth int,
    sex varchar(1),
    PRIMARY KEY (ID)
);

INSERT INTO main_actors_tbl VALUES 
(null, "Arnold Schwarzenegger", 1947, "M"),
(null, "Gal Gadot",             1985, "F"),
(null, "Sigourney Weaver",      1949, "F"),
(null, "Christian Bale",        1974, "M"),
(null, "Leonardo DiCaprio",     1974, "M"),
(null, "Angelina Jolie",        1975, "F"),
(null, "Zoe Saldaña",           1978, "F"),
(null, "Gemma Chan",            1982, "F");

# Create your Movie-Actors table
CREATE TABLE movie_actors_tbl(
    movie_id int NOT NULL,
    main_actor_id int NOT NULL,
    PRIMARY KEY (movie_id, main_actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies_tbl(id),
    FOREIGN KEY (main_actor_id) REFERENCES main_actors_tbl(id)
);

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Avatar"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Zoe Saldaña%") 
);   

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "The Dark Knight"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Christian Bale%") 
);  

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Inception"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Leonardo DiCaprio%") 
);   

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Eternals"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Angelina Jolie%") 
);   

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Aliens"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Sigourney Weaver%") 
);   

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Cleopatra"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Gal Gadot%") 
);   

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Eternals"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Gemma Chan%") 
);  

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Titanic"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Leonardo DiCaprio%") 
);  

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Wonder Woman"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Gal Gadot%") 
);  

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Terminator"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Arnold Schwarzenegger%") 
);  

INSERT INTO movie_actors_tbl VALUES 
(
    (SELECT id FROM movies_tbl WHERE title like "Avatar"),
    (SELECT id FROM main_actors_tbl WHERE name like "%Sigourney Weaver%") 
);  






