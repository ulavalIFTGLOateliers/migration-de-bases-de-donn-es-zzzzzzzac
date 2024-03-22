USE atelier_bd;

CREATE TABLE IF NOT EXISTS band(bandName varchar(50), creation YEAR, genre varchar(50), PRIMARY KEY (bandName));

ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);

UPDATE musician M SET M.role = "vocals", M.bandName = "Crazy Duo" WHERE M.musicianName = "Alina";
UPDATE musician M SET M.role = "guitar", M.bandName = "Mysterio" WHERE M.musicianName = "Mysterio";
UPDATE musician M SET M.role = "percussion", M.bandName = "Crazy Duo" WHERE M.musicianName = "Rainbow";
UPDATE musician M SET M.role = "piano", M.bandName = "Luna" WHERE M.musicianName = "Luna";

INSERT INTO band (bandName, creation, genre) VALUES ("Crazy Duo", 2015,"rock");
INSERT INTO band (bandName, creation, genre) VALUES ("Luna", 2009,"classical");
INSERT INTO band (bandName, creation, genre) VALUES ("Mysterio", 2019,"pop");

SHOW TABLES;
SELECT * FROM musician;
SELECT * FROM band;