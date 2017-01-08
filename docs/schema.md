# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique

## books
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
year        | integer   | not null
description | text      | not null


## bookshelves
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key (references users), indexed
book_id     | integer   | not null, foreign key (references books), indexed
name        | string    | not null

## reviews
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
book_id     | integer   | not null, foreign key (references books), indexed
title       | string    | not null
body        | string    | not null
