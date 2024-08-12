CREATE TABLE Authors(
AuthorsID INT IDENTITY PRIMARY KEY not null,
First_name varchar(30) not null,
Last_name  varchar(30) not null,
Nationality varchar(30));

SET IDENTITY_INSERT [BOOKS].[dbo].[Authors] ON

INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(1,'Bob', 'Smith', 'Slovenian');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(2,'Tate', 'Ham', 'German');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(3,'Mike', 'Hamly', 'Slovenian');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(4,'Tim', 'Barkley', 'Croatian');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(5,'Sam', 'Booth', 'South African');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(6,'Devon', 'Jackson', 'Indian');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(7,'Jessica', 'Rodes', 'French');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(8,'Lindiwe', 'Ndlovu', 'Eswatini');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(9,'Alfred', 'Jacobs', 'Italian');
INSERT INTO Authors (AuthorsID,First_name,Last_name,Nationality)
VALUES(10,'Lucy', 'Phem', 'Ethiopian');

SET IDENTITY_INSERT [BOOKS].[dbo].[Authors] OFF

CREATE TABLE Books(
BookID INT IDENTITY PRIMARY KEY not null,
Title TEXT not null,
Book_Description  TEXT not null,
authorID int references Authors(AuthorsID),
);

SET IDENTITY_INSERT[BOOKS].[dbo].[Books] ON

INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(1,'The Midnight Library', 'Nora Seed finds herself in a mysterious library between life and death, where each book represents a different life she could have lived. As she explores these alternate realities, she confronts her regrets and searches for meaning and fulfillment.', 1);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(2,'Where the Crawdads Sing', 'Set in the marshlands of North Carolina, this novel follows Kya Clark, an enigmatic young woman who grows up isolated in the wild. Her story intertwines with a murder investigation as she seeks to uncover the truth and find her place in the world.', 2);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(3,'The Name of the Wind', 'The first book in the Kingkiller Chronicle series, it follows the life of Kvothe, a gifted young man who grows up to become a legendary figure. The story is told as he recounts his experiences of magic, music, and adventure.', 3);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(4,'Educated', 'This memoir tells the story of Tara Westover, who grew up in a strict and abusive household in rural Idaho with no formal education. Her quest for knowledge leads her to earn a PhD from Cambridge University, transforming her life in profound ways.', 4);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(5,'The Alchemist', 'A philosophical novel about Santiago, a young shepherd who dreams of finding treasure hidden near the Egyptian pyramids. His journey becomes a quest for self-discovery, spiritual insight, and understanding his personal legend.', 5);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(6,'The Road', 'In a post-apocalyptic world, a father and his young son traverse a desolate landscape, struggling to survive and maintain their hope. The novel is a poignant exploration of love, resilience, and the bond between parent and child.', 6);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(7,'Big Little Lies', 'This novel centers on three women whose seemingly perfect lives unravel amid a series of tragic events. As secrets come to light, the story delves into themes of friendship, domestic violence, and the complexities of modern relationships.', 7);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(8,'Circe', 'A retelling of the mythological story of Circe, the enchantress from Homers Odyssey. The novel explores Circes life on the island of Aiaia, her struggles with her divine heritage, and her interactions with various mythological figures.', 8);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(9,'The Shadow of the Wind', 'Set in post-war Barcelona, the novel follows a young boy named Daniel who discovers a forgotten book in a hidden library. As he grows up, he becomes entangled in a mystery involving the books enigmatic author and a dark conspiracy.', 9);
INSERT INTO Books(BookID,Title,Book_Description,authorID)
VALUES(10,'Sapiens: A Brief History of Humankind', 'This non-fiction work offers a sweeping history of humanity from the emergence of Homo sapiens to the present day. Harari explores how shared myths, cultural developments, and scientific advancements have shaped human societies.', 10);

SET IDENTITY_INSERT[BOOKS].[dbo].[Books] OFF


select * from Authors;
select * from Books;

select top 5 * from Books order by BookID desc;

select  count(*) from Books;
select  count(*) from Authors;

select First_name
from Authors as a join Books as b
on a.AuthorsID = b.authorID

SELECT a.First_name, COUNT(b.BookID) AS book_count
FROM authors a
JOIN Books b ON a.AuthorsID = b.authorID
GROUP BY a.AuthorsID, a.First_name
ORDER BY book_count DESC;