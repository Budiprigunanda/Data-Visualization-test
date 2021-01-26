USE world;
SHOW tables;

-- No 1 Kota di Indonesia id kota
-- nama kota
-- country code
-- nama distrik
-- populasi

SELECT * FROM City
WHERE CountryCode = 'IDN'
ORDER BY Population DESC LIMIT 10;

-- No 2 10kota di dunia
-- id kota
-- nama kota
-- district
-- population

SELECT * FROM City
ORDER BY Population DESC LIMIT 10;

-- No 3 10 negara yang menggunakan bhs inggris
-- code negara
-- nama negara
-- language
-- isOfficial
-- percentage

Select c.code, c.name, cl.language, cl.isOfficial, cl.Percentage  FROM country c
JOIN (countrylanguage cl) ON c.code = cl.countrycode
WHERE cl.Language = 'English'
ORDER BY cl.percentage DESC limit 10;

-- No 4 10 negara dengan harapan hidup tertinggi
-- nama negara
-- nama benua
-- angka harapan hidup negara tersebut
-- GNP

SELECT name, continent, lifeexpectancy, GNP FROM country
WHERE continent = 'Asia' AND lifeexpectancy > (select AVG(lifeexpectancy) FROM country WHERE continent = 'Europe')
ORDER BY lifeexpectancy desc Limit 10;

--

