
CREATE TABLE test_table (
  name VARCHAR(100) NOT NULL,
  surname VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  age INT,
  CHECK ((age >0 AND age < 150) AND (length(name) >= 4 AND length(name) <= 10))
);
INSERT INTO test_table (name, surname, city, age)
VALUES
('Анжелика', 'Титова', 'Вологда', 18),
('Алиса', 'Матвеева', 'Новгород', 32),
('Марина', 'Николаева', 'Псков', 20),
('Ирина', 'Соловьева', 'Санкт-Петербург',51),
('Нина', 'Михайлова', 'Тула', 35),
('Михаил', 'Егоров', 'Суздаль', 34),
('Екатерина', 'Степанова', 'Сергиев Посад', 41),
('Антон', 'Макеев', 'Владимир', 30),
('Александр', 'Харитонов', 'Смоленск', 22),
('Сергей', 'Соловьев', 'Тагил', 41 ),
('Виктория', 'Баженова', 'Новокузнецк', 19),
('Даниил', 'Денисов', 'Тверь', 37),
('Екатерина', 'Семенова', 'Уфа', 48),
('Светлана', 'Козлова', 'Москва', 24),
('Юлия', 'Ступина', 'Владимир', 23),
('Евгений', 'Примаков', 'Керчь', 25),
('Павел', 'Артемьев', 'Новороссийск', 22),
('Анатолий', 'Носов', 'Екатеринбург', 40),
('Маргарита', 'Рижская', 'Светлогорск', 18),
('Петр', 'Смирнов', 'Астрахань', 39),
('Ирина', 'Титова', 'Ейск', 44),
('Валентина', 'Тихонова', 'Анадырь', 31),
('Кирилл', 'Конюхов', 'Мурманск', 24);

