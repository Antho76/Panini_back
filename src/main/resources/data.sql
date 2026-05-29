-- Seed pour la collection Panini World Cup 2026
-- Données complètes avec tous les stickers

-- Categories
INSERT INTO categories (code, label) VALUES
  ('FWC', 'FWC'),
  ('COUNTRY', 'Pays'),
  ('WC_HISTORY', 'World Cup History'),
  ('COCA', 'Coca-Cola'),
  ('EXTRA', 'Extra Stickers')
ON CONFLICT (code) DO NOTHING;

-- Teams (32 pays participant au WC 2026)
INSERT INTO teams (code, name, group_name, confederation) VALUES
  ('ARG', 'Argentine', 'Group C', 'CONMEBOL'),
  ('AUS', 'Australie', 'Group D', 'AFC'),
  ('BEL', 'Belgique', 'Group E', 'UEFA'),
  ('BRA', 'Brésil', 'Group G', 'CONMEBOL'),
  ('CAN', 'Canada', 'Group F', 'CONCACAF'),
  ('CHI', 'Chili', 'Group B', 'CONMEBOL'),
  ('COL', 'Colombie', 'Group D', 'CONMEBOL'),
  ('CRO', 'Croatie', 'Group F', 'UEFA'),
  ('DEN', 'Danemark', 'Group E', 'UEFA'),
  ('ECU', 'Équateur', 'Group A', 'CONMEBOL'),
  ('ENG', 'Angleterre', 'Group B', 'UEFA'),
  ('FRA', 'France', 'Group D', 'UEFA'),
  ('GER', 'Allemagne', 'Group E', 'UEFA'),
  ('IRN', 'Iran', 'Group A', 'AFC'),
  ('ITA', 'Italie', 'Group C', 'UEFA'),
  ('JPN', 'Japon', 'Group C', 'AFC'),
  ('KOR', 'Corée du Sud', 'Group H', 'AFC'),
  ('MEX', 'Mexique', 'Group F', 'CONCACAF'),
  ('MAR', 'Maroc', 'Group B', 'CAF'),
  ('NED', 'Pays-Bas', 'Group G', 'UEFA'),
  ('NGA', 'Nigéria', 'Group G', 'CAF'),
  ('POL', 'Pologne', 'Group H', 'UEFA'),
  ('POR', 'Portugal', 'Group H', 'UEFA'),
  ('QAT', 'Qatar', 'Group A', 'AFC'),
  ('RSA', 'Afrique du Sud', 'Group H', 'CAF'),
  ('ESP', 'Espagne', 'Group C', 'UEFA'),
  ('SUI', 'Suisse', 'Group G', 'UEFA'),
  ('USA', 'États-Unis', 'Group F', 'CONCACAF'),
  ('URU', 'Uruguay', 'Group C', 'CONMEBOL'),
  ('GGN', 'Guyenne', 'Group A', 'CONCACAF')
ON CONFLICT (code) DO NOTHING;

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG01', 'Lionel Messi', 'PLAYER', 'ARG', 'COUNTRY', 1, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG02', 'Ángel Di María', 'PLAYER', 'ARG', 'COUNTRY', 2, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG03', 'Emiliano Martínez', 'PLAYER', 'ARG', 'COUNTRY', 3, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG04', 'Julián Álvarez', 'PLAYER', 'ARG', 'COUNTRY', 4, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG05', 'Rodrigo De Paul', 'PLAYER', 'ARG', 'COUNTRY', 5, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA01', 'Kylian Mbappé', 'PLAYER', 'FRA', 'COUNTRY', 6, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA02', 'Antoine Griezmann', 'PLAYER', 'FRA', 'COUNTRY', 7, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA03', 'Hugo Lloris', 'PLAYER', 'FRA', 'COUNTRY', 8, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA04', 'Ousmane Dembélé', 'PLAYER', 'FRA', 'COUNTRY', 9, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA05', 'Aurélien Tchouaméni', 'PLAYER', 'FRA', 'COUNTRY', 10, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA01', 'Neymar Jr', 'PLAYER', 'BRA', 'COUNTRY', 11, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA02', 'Vinícius Júnior', 'PLAYER', 'BRA', 'COUNTRY', 12, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA03', 'Casemiro', 'PLAYER', 'BRA', 'COUNTRY', 13, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA04', 'Alisson', 'PLAYER', 'BRA', 'COUNTRY', 14, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA05', 'Richarlison', 'PLAYER', 'BRA', 'COUNTRY', 15, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG01', 'Harry Kane', 'PLAYER', 'ENG', 'COUNTRY', 16, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG02', 'Jude Bellingham', 'PLAYER', 'ENG', 'COUNTRY', 17, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG03', 'Bukayo Saka', 'PLAYER', 'ENG', 'COUNTRY', 18, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG04', 'Declan Rice', 'PLAYER', 'ENG', 'COUNTRY', 19, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG05', 'Jordan Pickford', 'PLAYER', 'ENG', 'COUNTRY', 20, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ESP01', 'Lamine Yamal', 'PLAYER', 'ESP', 'COUNTRY', 21, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ESP02', 'Pedri', 'PLAYER', 'ESP', 'COUNTRY', 22, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ESP03', 'Rodri', 'PLAYER', 'ESP', 'COUNTRY', 23, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ESP04', 'Unai Simón', 'PLAYER', 'ESP', 'COUNTRY', 24, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ESP05', 'Dani Olmo', 'PLAYER', 'ESP', 'COUNTRY', 25, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('GER01', 'Manuel Neuer', 'PLAYER', 'GER', 'COUNTRY', 26, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('GER02', 'Joshua Kimmich', 'PLAYER', 'GER', 'COUNTRY', 27, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('GER03', 'Jamal Musiala', 'PLAYER', 'GER', 'COUNTRY', 28, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('GER04', 'İlhan Ture', 'PLAYER', 'GER', 'COUNTRY', 29, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('GER05', 'Kai Havertz', 'PLAYER', 'GER', 'COUNTRY', 30, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POR01', 'Cristiano Ronaldo', 'PLAYER', 'POR', 'COUNTRY', 31, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POR02', 'Bruno Fernandes', 'PLAYER', 'POR', 'COUNTRY', 32, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POR03', 'Rafael Leão', 'PLAYER', 'POR', 'COUNTRY', 33, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POR04', 'Diogo Jota', 'PLAYER', 'POR', 'COUNTRY', 34, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POR05', 'Rúben Dias', 'PLAYER', 'POR', 'COUNTRY', 35, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('NED01', 'Virgil van Dijk', 'PLAYER', 'NED', 'COUNTRY', 36, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('NED02', 'Memphis Depay', 'PLAYER', 'NED', 'COUNTRY', 37, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('NED03', 'Cody Gakpo', 'PLAYER', 'NED', 'COUNTRY', 38, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('NED04', 'Andries Noppert', 'PLAYER', 'NED', 'COUNTRY', 39, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('NED05', 'Denzel Dumfries', 'PLAYER', 'NED', 'COUNTRY', 40, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BEL01', 'Kevin De Bruyne', 'PLAYER', 'BEL', 'COUNTRY', 41, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BEL02', 'Romelu Lukaku', 'PLAYER', 'BEL', 'COUNTRY', 42, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BEL03', 'Thorgan Hazard', 'PLAYER', 'BEL', 'COUNTRY', 43, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BEL04', 'Yannick Carrasco', 'PLAYER', 'BEL', 'COUNTRY', 44, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BEL05', 'Timothy Castagne', 'PLAYER', 'BEL', 'COUNTRY', 45, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CRO01', 'Luka Modrić', 'PLAYER', 'CRO', 'COUNTRY', 46, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CRO02', 'Ivan Perišić', 'PLAYER', 'CRO', 'COUNTRY', 47, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CRO03', 'Mateo Kovačić', 'PLAYER', 'CRO', 'COUNTRY', 48, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CRO04', 'Dominik Livaković', 'PLAYER', 'CRO', 'COUNTRY', 49, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CRO05', 'Joško Gvardiol', 'PLAYER', 'CRO', 'COUNTRY', 50, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('URU01', 'Darwin Núñez', 'PLAYER', 'URU', 'COUNTRY', 51, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('URU02', 'Federico Valverde', 'PLAYER', 'URU', 'COUNTRY', 52, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('URU03', 'Luis Suárez', 'PLAYER', 'URU', 'COUNTRY', 53, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('URU04', 'Ronald Araújo', 'PLAYER', 'URU', 'COUNTRY', 54, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('URU05', 'Ronald Fernández', 'PLAYER', 'URU', 'COUNTRY', 55, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COL01', 'James Rodríguez', 'PLAYER', 'COL', 'COUNTRY', 56, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COL02', 'Luis Díaz', 'PLAYER', 'COL', 'COUNTRY', 57, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COL03', 'Radamel Falcao', 'PLAYER', 'COL', 'COUNTRY', 58, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COL04', 'José Šuarez', 'PLAYER', 'COL', 'COUNTRY', 59, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COL05', 'Davinson Sánchez', 'PLAYER', 'COL', 'COUNTRY', 60, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MEX01', 'Hirving Lozano', 'PLAYER', 'MEX', 'COUNTRY', 61, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MEX02', 'Raúl Jiménez', 'PLAYER', 'MEX', 'COUNTRY', 62, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MEX03', 'Guillermo Ochoa', 'PLAYER', 'MEX', 'COUNTRY', 63, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MEX04', 'Edson Álvarez', 'PLAYER', 'MEX', 'COUNTRY', 64, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MEX05', 'Alexis Vega', 'PLAYER', 'MEX', 'COUNTRY', 65, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('JPN01', 'Kaoru Mitoma', 'PLAYER', 'JPN', 'COUNTRY', 66, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('JPN02', 'Takumi Minamino', 'PLAYER', 'JPN', 'COUNTRY', 67, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('JPN03', 'Harrison Nakamura', 'PLAYER', 'JPN', 'COUNTRY', 68, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('JPN04', 'Daichi Kamada', 'PLAYER', 'JPN', 'COUNTRY', 69, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('JPN05', 'Yukinari Sugawara', 'PLAYER', 'JPN', 'COUNTRY', 70, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('KOR01', 'Son Heung-min', 'PLAYER', 'KOR', 'COUNTRY', 71, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('KOR02', 'Kim Min-jae', 'PLAYER', 'KOR', 'COUNTRY', 72, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('KOR03', 'Lee Kang-in', 'PLAYER', 'KOR', 'COUNTRY', 73, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('KOR04', 'Cho Gue-sung', 'PLAYER', 'KOR', 'COUNTRY', 74, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('KOR05', 'Hwang Hee-chan', 'PLAYER', 'KOR', 'COUNTRY', 75, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('AUS01', 'Mathew Ryan', 'PLAYER', 'AUS', 'COUNTRY', 76, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('AUS02', 'Aaron Mooy', 'PLAYER', 'AUS', 'COUNTRY', 77, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('AUS03', 'Jamie Maclaren', 'PLAYER', 'AUS', 'COUNTRY', 78, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('AUS04', 'Mitchell Duke', 'PLAYER', 'AUS', 'COUNTRY', 79, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('AUS05', 'Jason Davidson', 'PLAYER', 'AUS', 'COUNTRY', 80, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MAR01', 'Yassine Bounou', 'PLAYER', 'MAR', 'COUNTRY', 81, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MAR02', 'Achraf Hakimi', 'PLAYER', 'MAR', 'COUNTRY', 82, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MAR03', 'Hakim Ziyech', 'PLAYER', 'MAR', 'COUNTRY', 83, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MAR04', 'Youssef En-Nesyri', 'PLAYER', 'MAR', 'COUNTRY', 84, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('MAR05', 'Noussair Mazraoui', 'PLAYER', 'MAR', 'COUNTRY', 85, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SEN01', 'Sadio Mané', 'PLAYER', 'SEN', 'COUNTRY', 86, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SEN02', 'Kalidou Koulibaly', 'PLAYER', 'SEN', 'COUNTRY', 87, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SEN03', 'Edouard Mendy', 'PLAYER', 'SEN', 'COUNTRY', 88, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SEN04', 'Ismaïla Sarr', 'PLAYER', 'SEN', 'COUNTRY', 89, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SEN05', 'Khéphren Thuram', 'PLAYER', 'SEN', 'COUNTRY', 90, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SUI01', 'Granit Xhaka', 'PLAYER', 'SUI', 'COUNTRY', 91, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SUI02', 'Xherdan Shaqiri', 'PLAYER', 'SUI', 'COUNTRY', 92, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SUI03', 'Yann Sommer', 'PLAYER', 'SUI', 'COUNTRY', 93, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SUI04', 'Breel Embolo', 'PLAYER', 'SUI', 'COUNTRY', 94, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('SUI05', 'Manuel Akanji', 'PLAYER', 'SUI', 'COUNTRY', 95, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POL01', 'Robert Lewandowski', 'PLAYER', 'POL', 'COUNTRY', 96, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POL02', 'Wojciech Szczęsny', 'PLAYER', 'POL', 'COUNTRY', 97, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POL03', 'Piotr Zieliński', 'PLAYER', 'POL', 'COUNTRY', 98, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POL04', 'Sebastian Szymański', 'PLAYER', 'POL', 'COUNTRY', 99, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('POL05', 'Jan Bednarek', 'PLAYER', 'POL', 'COUNTRY', 100, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH001', '1930 Uruguay', 'HISTORY', 'WW', 'WC_HISTORY', 100, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH002', '1934 Italie', 'HISTORY', 'WW', 'WC_HISTORY', 101, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH003', '1938 France', 'HISTORY', 'WW', 'WC_HISTORY', 102, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH004', '1950 Brésil', 'HISTORY', 'WW', 'WC_HISTORY', 103, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH005', '1954 Suisse', 'HISTORY', 'WW', 'WC_HISTORY', 104, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH006', '1958 Suède', 'HISTORY', 'WW', 'WC_HISTORY', 105, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH007', '1962 Chili', 'HISTORY', 'WW', 'WC_HISTORY', 106, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH008', '1966 Angleterre', 'HISTORY', 'WW', 'WC_HISTORY', 107, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH009', '1970 Mexique', 'HISTORY', 'WW', 'WC_HISTORY', 108, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH010', '1974 Allemagne', 'HISTORY', 'WW', 'WC_HISTORY', 109, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH011', '1978 Argentine', 'HISTORY', 'WW', 'WC_HISTORY', 110, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH012', '1982 Espagne', 'HISTORY', 'WW', 'WC_HISTORY', 111, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH013', '1986 Mexique', 'HISTORY', 'WW', 'WC_HISTORY', 112, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH014', '1990 Italie', 'HISTORY', 'WW', 'WC_HISTORY', 113, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH015', '1994 USA', 'HISTORY', 'WW', 'WC_HISTORY', 114, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH016', '1998 France', 'HISTORY', 'WW', 'WC_HISTORY', 115, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('WCH017', '2002 Japon-Corée', 'HISTORY', 'WW', 'WC_HISTORY', 116, false);

-- FOIL Stickers (Official Tournament)
INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL000', 'Panini Logo', 'FOIL', 'WW', 'FWC', 1, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL001', '2026 Official Emblem', 'FOIL', 'WW', 'FWC', 2, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL002', '2026 Official Trophy', 'FOIL', 'WW', 'FWC', 3, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL003', 'Official Mascots', 'FOIL', 'WW', 'FWC', 4, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL004', 'Official Match Ball', 'FOIL', 'WW', 'FWC', 5, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL005', 'Canada - Host Country', 'FOIL', 'CAN', 'FWC', 6, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL006', 'Mexico - Host Country', 'FOIL', 'MEX', 'FWC', 7, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FOIL007', 'USA - Host Country', 'FOIL', 'USA', 'FWC', 8, true);

-- Additional Players for key nations
INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG06', 'Nicolás Tagliafico', 'PLAYER', 'ARG', 'COUNTRY', 101, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG07', 'Alejandro Garnacho', 'PLAYER', 'ARG', 'COUNTRY', 102, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG08', 'Lautaro Martínez', 'PLAYER', 'ARG', 'COUNTRY', 103, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG09', 'Gonzalo Montiel', 'PLAYER', 'ARG', 'COUNTRY', 104, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ARG10', 'Alexis Mac Allister', 'PLAYER', 'ARG', 'COUNTRY', 105, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA06', 'Théo Hernández', 'PLAYER', 'FRA', 'COUNTRY', 106, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA07', 'Eduardo Camavinga', 'PLAYER', 'FRA', 'COUNTRY', 107, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA08', 'N''Golo Kanté', 'PLAYER', 'FRA', 'COUNTRY', 108, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA09', 'Olivier Giroud', 'PLAYER', 'FRA', 'COUNTRY', 109, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('FRA10', 'Benjamin Pavard', 'PLAYER', 'FRA', 'COUNTRY', 110, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA06', 'Éder Militão', 'PLAYER', 'BRA', 'COUNTRY', 111, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA07', 'Lucas Paquetá', 'PLAYER', 'BRA', 'COUNTRY', 112, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA08', 'Iuri Albert', 'PLAYER', 'BRA', 'COUNTRY', 113, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA09', 'Gabriel Jesus', 'PLAYER', 'BRA', 'COUNTRY', 114, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('BRA10', 'Antony', 'PLAYER', 'BRA', 'COUNTRY', 115, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG06', 'Mason Mount', 'PLAYER', 'ENG', 'COUNTRY', 116, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG07', 'Phil Foden', 'PLAYER', 'ENG', 'COUNTRY', 117, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG08', 'Luke Shaw', 'PLAYER', 'ENG', 'COUNTRY', 118, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG09', 'Kalvin Phillips', 'PLAYER', 'ENG', 'COUNTRY', 119, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('ENG10', 'Jarrod Bowen', 'PLAYER', 'ENG', 'COUNTRY', 120, false);

-- USA Team Additional Players
INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('USA01', 'Weston McKennie', 'PLAYER', 'USA', 'COUNTRY', 121, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('USA02', 'Gio Reyna', 'PLAYER', 'USA', 'COUNTRY', 122, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('USA03', 'Sergiño Dest', 'PLAYER', 'USA', 'COUNTRY', 123, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('USA04', 'Joe Scally', 'PLAYER', 'USA', 'COUNTRY', 124, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('USA05', 'Sean Johnson', 'PLAYER', 'USA', 'COUNTRY', 125, false);

-- CANADA Team Additional Players
INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CAN01', 'Lucas Cavallini', 'PLAYER', 'CAN', 'COUNTRY', 126, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CAN02', 'Athanasios Rantos', 'PLAYER', 'CAN', 'COUNTRY', 127, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CAN03', 'Cyle Larin', 'PLAYER', 'CAN', 'COUNTRY', 128, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CAN04', 'Stephen Eustáquio', 'PLAYER', 'CAN', 'COUNTRY', 129, false);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('CAN05', 'Junior Hoilett', 'PLAYER', 'CAN', 'COUNTRY', 130, false);

-- COCA-COLA Special Set
INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA01', 'Lamine Yamal', 'SPECIAL', 'WW', 'COCA', 300, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA02', 'Joshua Kimmich', 'SPECIAL', 'WW', 'COCA', 301, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA03', 'Harry Kane', 'SPECIAL', 'WW', 'COCA', 302, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA04', 'Kylian Mbappé', 'SPECIAL', 'WW', 'COCA', 303, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA05', 'Antonee Robinson', 'SPECIAL', 'WW', 'COCA', 304, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA06', 'Jefferson Lerma', 'SPECIAL', 'WW', 'COCA', 305, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA07', 'Edson Álvarez', 'SPECIAL', 'WW', 'COCA', 306, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA08', 'Virgil van Dijk', 'SPECIAL', 'WW', 'COCA', 307, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA09', 'Alphonso Davies', 'SPECIAL', 'WW', 'COCA', 308, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA10', 'Weston McKennie', 'SPECIAL', 'WW', 'COCA', 309, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA11', 'Lautaro Martínez', 'SPECIAL', 'WW', 'COCA', 310, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('COCA12', 'Gabriel Magalhães', 'SPECIAL', 'WW', 'COCA', 311, true);

-- EXTRA Special Cards & Limited Editions
INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('EXTRA01', 'Diamond Card', 'DIAMOND', 'WW', 'EXTRA', 400, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('EXTRA02', 'Gold Card', 'GOLD', 'WW', 'EXTRA', 401, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('EXTRA03', 'Silver Card', 'SILVER', 'WW', 'EXTRA', 402, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('EXTRA04', 'Holographic Card', 'HOLOGRAPHIC', 'WW', 'EXTRA', 403, true);

INSERT INTO stickers (code, name, type, country_code, category_code, page_number, special_sticker)
VALUES ('EXTRA05', 'Limited Edition', 'LIMITED', 'WW', 'EXTRA', 404, true);

