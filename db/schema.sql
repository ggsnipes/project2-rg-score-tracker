createdb scoretracker

create table songs(
    id serial primary key,
    name text,
    difficulty integer,
    scores integer
);

create table users(
    id serial primary key,
    username text,
    email text,
    password_digest text,

)


