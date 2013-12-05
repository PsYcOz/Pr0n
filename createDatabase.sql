CREATE TABLE FetLevel (
       id_fetlevel INT NOT NULL,
       libelle_fetlevel VARCHAR(10)
);

CREATE TABLE SetPics (
       id_set INT NOT NULL AUTO_INCREMENT,
       libelle_set VARCHAR(50),
       submission_date DATE,       

       PRIMARY KEY(id_set)
);

CREATE TABLE Pic (
       id_pic INT NOT NULL AUTO_INCREMENT,
       libelle_pic VARCHAR(50),
       link_pic VARCHAR(50),
       id_set INT NOT NULL,

       PRIMARY KEY(id_pic),
       FOREIGN KEY (id_set) REFERENCES SetPics (id_set)
);

CREATE TABLE Doujin (
       id_doujin INT NOT NULL AUTO_INCREMENT,
       libelle_doujin VARCHAR(50),
       submission_date DATE,       
       id_fetlevel INT NOT NULL,

       PRIMARY KEY(id_set),
       FOREIGN KEY (id_fetlevel) REFERENCES Fetlevel (id_fetlevel)
);

CREATE TABLE DoujPics (
       id_doujpic INT NOT NULL AUTO_INCREMENT,
       libelle_doujpic VARCHAR(50),
       link_doujpic VARCHAR(50),
       id_doujin INT NOT NULL,
       num_pics INT NOT NULL,

       PRIMARY KEY(id_doujpic),
       FOREIGN KEY (id_doujin) REFERENCES Doujin (id_doujin)

);

CREATE TABLE Tag (
       id_tag INT NOT NULL,
       libelle_tag VARCHAR(50),

       PRIMARY KEY(id_tag)
);

CREATE TABLE DoujinTag (
       id_doujin INT NOT NULL,
       id_tag INT NOT NULL,

       FOREIGN KEY (id_doujin) REFERENCES Doujin (id_doujin),
       FOREIGN KEY (id_tag) REFERENCES Tag (id_tag)
);

CREATE TABLE Vidz (
       id_vidz INT NOT NULL AUTO_INCREMENT,
       libelle_vidz VARCHAR(50),

);

CREATE TABLE VidzTag (
       id_vidz INT NOT NULL,
       id_tag INT NOT NULL

);

