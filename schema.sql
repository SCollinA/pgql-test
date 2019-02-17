create table users (
    id serial primary key,
    name varchar(60) unique not null
);

create table tasks (
    id serial primary key,
    user_id integer references users (id) on delete cascade,
    name text,
    complete boolean
);