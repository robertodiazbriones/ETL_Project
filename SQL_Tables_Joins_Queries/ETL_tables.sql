DROP TABLE wiki_scrape;

CREATE TABLE wiki_scrape(
rank INT,
book VARCHAR PRIMARY KEY,
author VARCHAR,
og_language VARCHAR,
first_published INT,
approximate_sales VARCHAR
);

SELECT *
FROM wiki_scrape;

DROP TABLE bn_bs;

CREATE TABLE bn_bs(
rank INT,
title VARCHAR,
author VARCHAR,
pub_date VARCHAR
);

SELECT *
FROM bn_bs;

DROP TABLE bestsellers_two;

CREATE TABLE bestsellers_two(
name VARCHAR,
author VARCHAR,
rating VARCHAR,
reviews INT,
type VARCHAR,
price VARCHAR,
year INT
);

SELECT *
FROM bestsellers_two;

SELECT bn_bs.rank, bn_bs.title, bn_bs.author, bestsellers_two.rating, bestsellers_two.reviews, bestsellers_two.type, bestsellers_two.price, bestsellers_two.year
FROM bestsellers_two
INNER JOIN bn_bs
ON bestsellers_two.name=bn_bs.title;

SELECT wiki_scrape.rank, wiki_scrape.book, wiki_scrape.author, wiki_scrape.first_published, wiki_scrape.approximate_sales, bestsellers_two.rating, bestsellers_two.reviews, bestsellers_two.price, bestsellers_two.year
FROM wiki_scrape
INNER JOIN bestsellers_two
ON wiki_scrape.book=bestsellers_two.name;