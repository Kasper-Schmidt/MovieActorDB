DROP DATABASE IF EXISTS MovieActorDB;
CREATE DATABASE MovieActorDB;
USE MovieActorDB;

CREATE TABLE Movie (
    MovieID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Title varchar(200) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Actor (
    ActorID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FirstName varchar(100) NOT NULL,
    LastName varchar(100) NOT NULL
);

-- Junction table / connect table / N:M table -- Mellem Movie og Actor
-- FOREIGN KEY (COLUMN) REFERENCES TABLE (COLUMN)
CREATE TABLE AppearIn (
    MovieRefID int NOT NULL,
    ActorRefID int NOT NULL,
    CONSTRAINT PK_AppearIN PRIMARY KEY (MovieRefID, ActorID),
    FOREIGN KEY (MovieRefID) REFERENCES Movie (MovieID),
    FOREIGN KEY (ActorRefID) REFERENCES Actor (ActorID)
);


INSERT INTO MOVIE VALUES (NULL, "Inception");

INSERT INTO ACTOR VALUES (NULL, "Tom", "Hardy");
INSERT INTO ACTOR VALUES (NULL, "Leonardo", "DeCaprio");

INSERT INTO AppearIn VALUES (1,1); -- Movie 1 and actor 1
INSERT INTO AppearIn VALUES (1,2); -- Movie 1 and actor 2



