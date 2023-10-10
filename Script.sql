CREATE TABLE IF NOT EXISTS Genre (
Genre_ID SERIAL PRIMARY KEY,
Genre_name TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Singer (
Singer_ID SERIAL PRIMARY KEY,
Singer_nameNickname TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS Genre_Singer (
ID SERIAL PRIMARY KEY,
Genre_ID INTEGER NOT null REFERENCES Genre(Genre_ID),
Singer_ID INTEGER not null references Singer(Singer_ID)
);
CREATE TABLE IF NOT EXISTS Album(
Album_ID SERIAL primary key,
Album_name text not null,
year_of_issue DATE not null
);
CREATE TABLE IF NOT EXISTS Album_Singer(
ID serial primary key,
Album_ID INTEGER not null references Album(Album_ID),
Singer_ID INTEGER not null references Singer(Singer_ID)
);
CREATE TABLE IF NOT EXISTS Songs(
Song_ID SERIAL primary key,
Song_name text not null,
Song_year_of_Issue DATE not null,
Album_ID INTEGER not null references Album(Album_ID)
);
CREATE TABLE IF NOT EXISTS collection_of_songs(
Collection_ID SERIAL primary key,
Collection_name text not null,
Collection_year_of_issue DATE not null
);

CREATE TABLE IF NOT EXISTS Collection_Song(
ID SERIAL primary key,
Song_ID INTEGER not null references Songs(Song_id),
Collection_ID INTEGER not null references collection_of_songs(Collection_ID)
);