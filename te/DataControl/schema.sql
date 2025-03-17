-- Удаление таблиц, если они существуют
IF OBJECT_ID('dbo.characters', 'U') IS NOT NULL
DROP TABLE dbo.characters;

IF OBJECT_ID('dbo.teams', 'U') IS NOT NULL
DROP TABLE dbo.teams;

IF OBJECT_ID('dbo.users', 'U') IS NOT NULL
DROP TABLE dbo.users;

IF OBJECT_ID('dbo.team_to_character', 'U') IS NOT NULL
DROP TABLE dbo.team_to_character;

-- Создание таблицы characters
CREATE TABLE dbo.characters (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    role NVARCHAR(255) NOT NULL,
    lore NVARCHAR(800) NOT NULL, -- если будут траблы с мелким размером просто измени 800 на больше
    talents_build_emblems NVARCHAR(255) NOT NULL

);




-- Создание таблицы teams
CREATE TABLE dbo.teams (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    orientation NVARCHAR(255) NOT NULL
);


-- промежуток между персонажами и командами
CREATE TABLE dbo.team_to_character
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    team_id INT,
    character_id INT,
    FOREIGN KEY (team_id) REFERENCES dbo.teams(id), -- Исправлено на правильную таблицу
    FOREIGN KEY (character_id) REFERENCES dbo.characters(id) -- Исправлено на правильную таблицу
);

-- Создание таблицы users
CREATE TABLE dbo.users (
     id INT IDENTITY(1,1) PRIMARY KEY,
     username NVARCHAR(255) NOT NULL,
     password NVARCHAR(255) NOT NULL,
     role BIT -- 1-админ, 0-юзер
);