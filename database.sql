drop database if exists travel;
create database travel;
use travel;

create table `User`
(
	id int auto_increment primary key,
    username varchar(50),
    `password` varchar(255)
);

create table Tour
(
	id int auto_increment primary key,
    `name` varchar(50),
    price decimal(6,2),
    `description` varchar(255),
    image varchar(255)
);

create table `Comment`
(
	id int auto_increment primary key,
    `comment` varchar(255),
    user_id int,
    tour_id int,
    foreign key(user_id) references `User`(id),
    foreign key(tour_id) references Tour(id)
);

create table News
(
	id int auto_increment primary key,
    `name` varchar(50),
    `description` varchar(255)
);

create table Booking
(
	id int auto_increment primary key,
    user_id int,
    tour_id int,
    adult_ticket tinyint,
    child_ticket tinyint,
    foreign key(user_id) references `User`(id),
    foreign key(tour_id) references Tour(id)
);

insert into Tour(`name`, price, `description`) 
values('Tour 1', 12, 'Description 1'),
('Tour 2', 13, 'Description 2'),
('Tour 3', 14, 'Description 3'),
('Tour 4', 15, 'Description 4');