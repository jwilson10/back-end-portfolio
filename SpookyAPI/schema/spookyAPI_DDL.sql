drop database if exists ghost_hunters;
create database ghost_hunters;
use ghost_hunters;

drop table if exists graveyard;
create table graveyard(
	graveyard_id int primary key auto_increment,
    `name` varchar(100) not null,
    street_address varchar(200) not null,
    city varchar(100) not null,
    state varchar(50) not null,
    zip varchar(15)
);


drop table if exists ghost;
create table ghost(
	ghost_id int primary key auto_increment,
    `name` varchar(100) not null,
    age int not null,
    ghost_type varchar(100) not null,
    graveyard_id int not null,
    constraint fk_graveyard_id
		foreign key (graveyard_id)
        references graveyard(graveyard_id));
        
drop table if exists reporter;
create table reporter(
	reporter_id int primary key auto_increment,
    name varchar(100) not null,
    phone varchar(15) not null
);

drop table if exists location;
create table location(
	location_id int primary key auto_increment,
    `name` varchar(100) not null,
    street_address varchar(200) not null,
    city varchar(100) not null,
    state varchar(50) not null,
    zip varchar(15) not null,
    `type` varchar(20) not null
);

        
drop table if exists sighting;
create table sighting(
	sighting_id int primary key auto_increment,
    reporter_id int not null,
    location_id int not null,
    constraint fk_reporter_id
		foreign key (reporter_id)
        references reporter(reporter_id),
	constraint fk_location_id
		foreign key (location_id)
        references location(location_id)
);
        
drop table if exists ghost_sighting;
create table ghost_sighting(
	ghost_sighting_id int primary key auto_increment,
    ghost_id int not null,
    sighting_id int not null,
    constraint fk_ghost_id
		foreign key(ghost_id)
        references ghost(ghost_id),
	constraint fk_sighting_id
		foreign key (sighting_id)
		references sighting(sighting_id)
);