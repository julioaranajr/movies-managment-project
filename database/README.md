# Database

## Exercises

- Create the movie database movie.db

- Create the tables:
  - directors.tbl
  - movies.tbl
  - main_actors.tbl
  - movie_actors.tbl

The Files with the SQL extension contain code written in the Structured Query Language. 
The code contained in the SQL file is used to modify the content of other relational databases. 
SQL files can be used to delete, insert, extract and update data and information.

## Question 1
List all movies with title and release year only:

```yaml
+-----------------+--------------+
| title           | release_year |
+-----------------+--------------+
| Titanic         |         1997 |
| Wonder Woman    |         2017 |
| Avatar          |         2009 |
| Aliens          |         1986 |
| Inception       |         2010 |
| Terminator      |         1984 |
| Cleopatra       |         2023 |
| Eternals        |         2021 |
| The Dark Knight |         2008 |
+-----------------+--------------+
```
## Answer 
To List all movies with title and release year only:
```sh
SELECT COUNT(*)
FROM movies_tbl
WHERE title LIKE "T%";

SELECT *
FROM movies_tbl
ORDER BY release_year ASC;

SELECT *
FROM movies_tbl
ORDER BY release_year DESC;

SELECT title, release_year
FROM movies_tbl;
```
