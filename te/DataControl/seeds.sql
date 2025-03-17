-- Сиды для таблицы characters
INSERT INTO dbo.characters (name, role, lore, talents_build_emblems) VALUES
    (N'Лукас', N'fighter', N'Леонин', N'лукас'),
    (N'Суё', N'assassin', N'Японский воин', N'суё')
                                                                         
-- Сиды для таблицы teams
INSERT INTO dbo.teams (name, orientation) VALUES
(N'TEAM 1',N'Урон и контроль')

-- Сиды для тим
INSERT INTO dbo.team_to_character (team_id, character_id) VALUES
    (1,1),
    (1,2)
    
    
-- Сиды для таблицы users
-- INSERT INTO dbo.users (username, password, role) VALUES
