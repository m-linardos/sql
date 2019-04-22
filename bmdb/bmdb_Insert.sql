Insert Actor (ID, FirstName, LastName, Gender, Birthdate) Values (1, 'Mel','Gibson','M',19581111);
Insert Actor (ID, FirstName, LastName, Gender, Birthdate) Values (354, 'Melanie','Griffith','F',19600801);
Insert Actor (ID, FirstName, LastName, Gender, Birthdate) Values (684, 'Kevin','Kostner','M',19540716);
Insert Actor (ID, FirstName, LastName, Gender, Birthdate) Values (1032, 'Harrison','Ford','M',19501009);
Insert Actor (ID, FirstName, LastName, Gender, Birthdate) Values (65498, 'Sandra','Bullock','F',19630214);


Insert Movie (ID, Title, rating, Year, Director, Birthdate) Values (1654, 'Ransom','5.0','1991', 'Leonard Scranton');
Insert Movie (ID, Title, rating, Year, Director, Birthdate) Values (65412, 'Miss Congeaneality','4.5','1988', 'Richard wilson');
Insert Movie (ID, Title, rating, Year, Director, Birthdate) Values (184561, 'Frozen','4.75','2014', 'Lauren Keiser');
Insert Movie (ID, Title, rating, Year, Director, Birthdate) Values (23658, 'When Harry Met Sally','4.0','2014', 'Lauren Keiser');

Insert Genre (ID, Name) Values (15674, 'Drama');
Insert Genre (ID, Name) Values (17624, 'Documentary');
Insert Genre (ID, Name) Values (26485, 'Romance');
Insert Genre (ID, Name) Values (239715, 'Thriller');
Insert Genre (ID, Name) Values (367154, 'Animation');

Insert MovieGenre (MovieID, GenreID) Values (1654, 239715);
Insert MovieGenre (MovieID, GenreID) Values (65412, 15674);
Insert MovieGenre (MovieID, GenreID) Values (184561, 367154);
Insert MovieGenre (MovieID, GenreID) Values (23658, 26485);

Insert MovieGenre (MovieID, ActorID, Role) Values (1654, 1, 'Leading Male');
Insert MovieGenre (MovieID, ActorID, Role) Values (65412, 65498, 'Leading Lady');
Insert MovieGenre (MovieID, ActorID, Role) Values (1654, 1, 'Leading Male');






Insert Customer (Name, City, State, Sales, Active) Values ('123 Warehousing','Los Angeles','CA',77503710,1);




Insert Customer (Name, City, State, Sales, Active) Values ('Demo Company','Columbus','OH',74647541,1);