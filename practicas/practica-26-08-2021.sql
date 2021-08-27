create database star_wars;
use star_wars;
create table people(id int primary key auto_increment,
name varchar(50), mass int, hair_color varchar(20), eye_color varchar(20), 
gender enum('female', 'male', 'other'));

select * from people;
describe people;
show create table people;


-- Tabla planetas
create table if not exists planet(
id int primary key auto_increment, name varchar(50), orbital_period int, rotation_period int,
diameter int, climate varchar(20), gravity varchar(20), terrain varchar(20), surface_water int, population long);

-- insertar pesonas
insert into people(id, name, mass, hair_color, eye_color, gender, planet_id) values (1, 'Luke Skywalker', 77, 'blond', 'blue', 'male',1);
insert into people(id, name, mass, hair_color, eye_color, gender, planet_id) values (2, 'Leia Skywalker', 70, 'brown', 'brown', 'female',1);
insert into people(name, mass, hair_color, eye_color, gender, planet_id) values ('Han Solo', 80, 'brown', 'brown', 'male', 2);

-- insertar planetas
insert into planet (id, name, orbital_period, rotation_period, diameter, climate, gravity, terrain, surface_water,  population) 
values (1, 'Tatooine', 304, 23, 10465, 'arid', '1 standard', 'desert', 1, 200000);
insert into planet ( name, orbital_period, rotation_period, diameter, climate, gravity, terrain, surface_water,  population) 
values ( 'Corelia', 304, 23, 10465, 'arid', '1 standard', 'desert', 1, 200000);


drop table people;

-- Tabla personas
create table people (
    id int auto_increment,
    name varchar(50),
    mass int,
    hair_color varchar(20),
    eye_color varchar(20),
    gender varchar(20),
    planet_id int, -- <--------------
    primary key(id),
    constraint planet_fk foreign key (planet_id) references planet(id)
);

select * from people;
select * from planet;
