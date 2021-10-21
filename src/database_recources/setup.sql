drop table if exists car cascade;
drop table if exists carlot cascade;
drop table if exists employee cascade;
drop table if exists customer cascade;
drop table if exists users cascade;

create table if not exists car(
                                  id serial primary key,
                                  make varchar(20),
    model varchar(20),
    year date,
    price money
    );

create table if not exists carlot(
                                     id serial primary key,
                                     car_id integer references car(id)
    );
create table if not
    exists users(
                    id serial primary key,
                    username varchar(100),
    pass varchar(100)
    );

create table if not exists employee(
                                       id serial primary key,
                                       first_name varchar(100),
    last_name varchar(100),
    user_id	integer references users(id)
    );

create table if not exists customer(
                                       id serial primary key,
                                       first_name varchar(100),
    last_name varchar(100),
    cars_owned integer array,
    user_id integer references users(id)
    );
