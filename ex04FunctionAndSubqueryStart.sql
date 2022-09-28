
DROP TABLE GAME;

CREATE TABLE game(
	gameId INT IDENTITY(1, 1),
	gameName VARCHAR(75) NOT NULL,
	gameGenre VARCHAR(25) NOT NULL,
	gameReleaseDate DATE,
	gameRating DECIMAL(4, 2),
	gameFee DECIMAL(6, 2),
	gameIsDownloaded BIT,
	gameIsPvP BIT,
	CONSTRAINT pk_game_gameId PRIMARY KEY (gameId)
);

INSERT INTO game
VALUES
	('Lime Odyssey', 'Fantasy', NULL, NULL, 0.00, 1, NULL),
	('DDTank', 'Fantasy', '2011-01-01', NULL, 0.00, 0, 1),
	('Repulse', 'Sci-Fi', NULL, NULL, 0.00, 1, 1),
	('World of Warcraft', 'Fantasy', '2004-11-23', 7.77, 14.99, 1, 1),
	('Diablo 3', 'Fantasy', '12-05-15', 7.29, 0.00, 1, 1),
	('Gloria Victis', 'Fantasy', '2014-05-10', 8.18, 0.00, 1, 1),
	('Dark Soltice', 'Fantasy', NULL, 7.55, 7.85, 1, 1),
	('A Tale in the Desert', 'Historical', '1996-05-27', 7.36, 13.95, 1, 1),
	('Pirates of the Burning Sea', 'Historical', '2008-01-22', 7.53, 14.99, 1, 1),
	('Life is Feudal', 'Historical', NULL, 8.06, 0.00, 1, 1),
	('Final Fantasy XIV: A Realm Reborn', 'Fantasy', '2013-08-27', 8.49, 12.99, 0, 1),
	('Guild Wars 2', 'Fantasy', '2012-08-28', 8.58, 0.00, 1, 1),
	('DarkEden', 'Horror', '2008/02/12', 6.01, NULL, 1, 1),
	('Infestation: Survivor Stories', 'Horror', '12/17/2012', 4.27, 0.00, 1, 1),
	('Darkfall: Unholy Wars', 'Fantasy', '04-16-2013', 8.11, 14.95, 1, 1),
	('World of Pirates', 'Historical', '01/03/2005', 6.53, 5.99, 1, 1),
	('The Secret World', 'Real Life', '2012/07/03', 8.57, NULL, 1, 1),
	('Minecraft', '3D Sandbox', '2011-11-18', 8.00, 0.00, 1, 1);

CREATE TABLE player(
	playerId INT IDENTITY(1, 1),
	playerUserId VARCHAR(50),
	playerTitle VARCHAR(20),
	playerFirstName VARCHAR(50) NOT NULL,
	playerLastName VARCHAR(50) NOT NULL,
	playerQuizDate DATE,
	playerStreet VARCHAR(50),
	playerCity VARCHAR(50),
	playerProvince VARCHAR(50),
	playerPhone CHAR(10),
	playerIsVideoGame BIT DEFAULT 1,
	playerScore SMALLINT,
	playerKillRatio DECIMAL(3, 2),
	CONSTRAINT pk_player_playerId PRIMARY KEY (playerId),
	CONSTRAINT uq_player_playerUserId UNIQUE (playerUserId)
);
INSERT INTO player
VALUES
	('Adam Julien', 'Mr', 'Adam', 'Julien', '2020-09-09', '109 Huntington LN', 'St Catharines', 'Ontario', '9054013377', 1, 1811, 0.3),
	('Akshat ', 'Mr', 'Akshat', 'Rawat', '2020-09-10', '21 Pine St South', 'Thorold', 'Ontario', '8527753641', 1, 4650, 0.8),
	('Alex', 'Mr', 'Alex', 'Breault', '2020-09-09', '7 devine cresccent', 'Thorold', 'Ontario', '2263478592', 1, 3829, 0.4),
	('Alexx', 'Mr', 'Alexx', 'Barron', '2020-09-09', NULL, NULL, NULL, NULL, 1, 1100, 0.2),
	('Brayden', 'Mr', 'Brayden', 'Shea', '2020-09-09', 'Depew Ave', 'Niagar Falls', 'Ontario', '9053941241', 1, 6400, 0.8),
	('Chaboii', 'Mr', 'Mitchell', 'Hingley', '2020-09-09', '3168 Poplar Ave.', 'Redgeway', 'Ontario', '9059311226', 1, 3594, 0.4),
	('Dean Patrizio', 'Mr', 'Dean', 'Patrizio', '2020-09-09', 'Gracefield Avenue', 'Toronto', 'Ontario', '6476096797', 1, 4892, 0.6),
	('devul', 'Lord', 'Devul', 'Thakkar', '2020-09-09', 'just , right , there, 69', NULL, NULL, '6677881120', 1, 4232, 0.6),
	('Dustin', 'Lord', 'Carl', 'Pinch', '2020-09-09', '5 Pinecrest Avenue', NULL, NULL, '6133154922', 1, 1507, 0.2),
	('Ethan', 'Sir', 'McDonalds', 'Canada', '2020-09-09', '2991 Walkers Line', 'Burlington', 'Ontario', '9053368761', 1, 6480, 0.8),
	('Hailey', 'Ms', 'Hailey', 'Davidson', '2020-09-09', 'Canada', NULL, NULL, '5198231732', 1, 4400, 0.5),
	('Harry Cox', 'Mr', 'Ahamed', ' Inhaam', '2020-09-09', '16 St Davids St E', 'St Catharines', 'Ontario', '4165671357', 1, 4847, 0.7),
	('JARED', 'Lord', 'Jared', 'Scott', '2020-09-09', 'glendale ave', 'St Catharines', 'Ontario', '9056801996', 1, 4351, 0.6),
	('Jason', 'Mr', 'William', 'Shakespeare', '2020-09-09', 'Main', 'Margo', 'Saskatchwan', '6476667890', 1, 4600, 0.7),
	('jordan1', 'Lord', 'jordan', 'bruyere', '2020-09-09', 'ontario', NULL, 'Ontario', '8072744848', 1, 2589, 0.5),
	('Jordan2', 'Mr', 'Jordan', 'Odu', '2020-09-09', '250 Oakdale Avenue', 'St Catharines', 'Ontario', '9058642095', 1, 4487, 0.7),
	('Jotaro Kujo', 'Sir', 'Jacob', 'Walker', '2020-09-09', '7777 Electric Avenue', NULL, NULL, '1111111111', 1, 2614, 0.5),
	('Kaden', 'Mr', 'Kaden', 'Field', '2020-09-09', '123 st Street', NULL, NULL, '4164563123', 1, 6700, 0.8),
	('Kandace', 'Miss', 'Kandace', 'Reitzel', '2020-09-09', 'brock', NULL, NULL, 'brock', 1, 4574, 0.6),
	('LBrendon', 'Mr', 'Brendon', 'Lu', '2020-09-09', '55 16th Street', NULL, 'Ontario', '123456789', 1, 2301, 0.4),
	('M', 'Miss', 'Monica', 'Mok', '2020-09-09', '123 Street', NULL, NULL, 'xxxxxxxxxx', 1, 4200, 0.5),
	('Martin Yu', 'Mr', 'Martin', 'Yu', '2020-09-09', NULL, 'Scarborough', 'Ontario', '6479756583', 1, 3069, 0.5),
	('Mitchell', 'Mr', 'Mitchell', 'Brown', '2020-09-09', '5426 Blue Spruce Avenue', NULL, NULL, '2892302445', 1, 6654, 0.8),
	('My Name', 'Mr', 'Aaron', 'Smith', '2020-09-09', '11 Oakridge ave.', 'St Catharines', 'Ontario', '2263457374', 1, 3768, 0.6),
	('Nathan Freve', 'Mr', 'Nathan', 'Freve', '2020-09-09', '48 Silver Maple Rd', NULL, NULL, '9053802158', 1, 3838, 0.5),
	('Noah', 'Mr', 'Noah', 'Ferguson', '2020-09-09', '5053 Serena dr.', NULL, NULL, '2894557997', 1, 4160, 0.5),
	('Sava', 'Mr', 'Sava', 'Beric', '2020-09-09', '24 George ST', NULL, 'Ontario', '9059627891', 0, 3054, 0.5),
	('Simon', 'Mr', 'Simon', 'Cummings', '2020-09-09', NULL, 'Thorold', 'Ontario', '6133296501', 1, 1100, 0.2),
	('Susini', 'Mr', 'Sebastiano', 'Susini', '2020-09-09', '7 Devine Cres.', NULL, NULL, '2896003041', 1, 4249, 0.7),
	('Tyler', 'Mr', 'Tyler', 'Krasinkiewicz', '2020-09-09', '141 Bridlepath Trail', NULL, NULL, '5193288235', 1, 2867, 0.7),
	('Victoria Z', 'Miss', 'Victoria', 'Zinga', '2020-09-09', '26 winter street', 'Hamilton', 'Ontario', '2895992765', 1, 2536, 0.5),
	('wayne', 'Mr', 'Wayne', 'Jiang', '2020-09-09', '??????????', NULL, NULL, '????????', 0, 2646, 0.4),
	('z', 'Mr', 'Zein', 'Al-bahrani', '2020-09-09', '5208 Tydman Way', NULL, NULL, '9053303820', 1, 3889, 0.5),
	('Ziqi_Z', 'Miss', 'Ziqi', 'Zhou', '2020-09-09', '29 Palace Street', 'Thorold', 'Ontario', '2894562906', 0, 1100, 0.2),
	('xj', 'Mr', 'Xing', 'Jiang', '2020-09-09', '1 Main St', 'St Catharines', 'ON', '2891234567', 1, 100, 0.1);





-- /*** STEP 1 ***/
-- EXECUTE ALL SQL STATEMENTS ABOVE BEFORE MOVE TO NEXT STEP ***
SELECT * FROM game;
SELECT * FROM player;


-- /*** STEP 2 ***/
-- compose sql statement to answer the following questions
-- *** QRY1-9 ARE BASED ON GAME TABLE ***
--qry1. what is average game rating?
SELECT gameRating
FROM game

SELECT AVG(gameRating) AS "AverageRating"
FROM game

--qry2. What is the average fee of Fantasy or Horror games?
SELECT gameFee
FROM game

SELECT AVG(gameFee) AS "AvgFee"
FROM game
WHERE gameGenre = 'Horror' OR gameGenre = 'Fantasy'  -- ONE WAY


--qry3. Show the lowest, highest, and average fee for downloadable games
SELECT gameFee, gameIsDownloaded
FROM game

SELECT MIN(gameFee)AS "Lowest", MAX(gameFee)AS "Highest", AVG(gameFee) AS "Average"
FROM game
WHERE gameIsDownloaded = 1



--qry4. Show all of the details about games that have a rating that is lower than average
SELECT AVG(gameFee) AS "GameFee"
FROM game

SELECT *
FROM game
WHERE gameRating < ( SELECT AVG(gameRating) FROM game);



--qry5. Which game is most recently released? Put the release date in the output too.
SELECT gameName, gameReleaseDate
FROM game
WHERE gameReleaseDate = (SELECT MAX(gamereleaseDate) FROM game);

--qry6. How many games were released in May of any year?
SELECT gamereleaseDate
FROM game

WHERE MONTH(gamereleaseDate) = 5;

--qry7. Show each game name with its genre concatenated to it.
--      Separate each name from its genre with a colon.
--      for example, Diablo 3: Fantasy

SELECT CONCAT (gameNames,':',gameGenre) AS 'Game Info'

FROM game


--qry8. How many years has it been since World of Warcraft was released?
--      Display release date, today's date, and Num of years since it was released
SELECT gameName, gameReleaseDate, GETDATE(), DATEDIFF(YEAR, gameReleaseDate, GETDATE())
FROM game
WHERE gameName = 'World of Warcraft'

--qry9. What is the lowest rated free Fantasy game?

SELECT gameName, gameRating, gameGenre, gameFee
FROM game
WHERE gameGenre = 'Fantasy'
AND gameFee = (SELECT MIN(gameFee) FROM game)
AND gameRating = (SELECT MIN(gameRating) FROM game);




-- *** QRY10-13 ARE BASED ON PLAYER TABLE ***
--qry10. Which player (first and last names) has the lowest score, and where does he/she live?


--qry11. How many days have gone by for the last player who played the quiz?
--  Display the player's userId and the number of days has gone by till now.


--qry12. Who is the best player in Thorold? (list city, first and last names, and score cols)


--qry13. Who is the best player in each city? (list city, first and last names, and score cols)
-- notes:
-- 1) both David and Julianna from Niagara Falls have 6700,
--		both of them shaould be listed in the result
-- 2) check to see whether Jennifer and Fernando from Thorold are listed in the result set,
--		if they do, then it's logically incorect since
--			Jennifer Boucher (score of 4650) from Thorold shoulr NOT be included in the result set
-- 3) just think about this question; no answer is nececssary
-- 4) if you have a solution, email it to me (jjiang@niagaracollege.ca)








-- CHALLENGE
-- Given a piece of street adress, '1 Main St S', break it down into 4 cols: 1, Main, St, S
-- kick off soultion:
DECLARE @strAddress VARCHAR(25);
SET @strAddress = '1 Main St S';
SELECT	@strAddress AS streetFullName,
	LEFT(@strAddress, CHARINDEX(' ', @strAddress) - 1) AS streetNumber,
	SUBSTRING(@strAddress, CHARINDEX(' ', @strAddress) + 1, LEN(@strAddress) - CHARINDEX(' ', @strAddress)) AS streetNameSuffixDir;
