createdb scoretracker

create table songs(
    id serial primary key,
    name text,
    difficulty integer,
    score integer
);

create table users(
    id serial primary key,
    username text,
    email text,
    password_digest text,

)


