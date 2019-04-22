-- create Credits table
Create table bmdb.Credits (
ID integer primary key auto_increment,
ActorID integer not null,
MovieID integer not null,
CharacterName varchar(255),

Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);