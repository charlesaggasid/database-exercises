use regulus_db;

# one to many


# many to many


create database  if not exists fantasy_db;
use fantasy_db;

create table if not exists users
(
    id int unsigned not null auto_increment,
    username varchar(50) unique,
    password varchar(255),
    primary key (id)
);

create table if not exists leagues
(
    id int unsigned not null auto_increment,
    name varchar(255) unique,
    start_date datetime,
    end_date datetime,
    owner_id int unsigned not null,
    foreign key (owner_id) references users(id),
    primary key(id)
);

create table if not exists league_user
(
    user_id int unsigned not null,
    league_id int unsigned not null ,
    foreign key (user_id) references users(id),
    foreign key (league_id) references leagues(id)
);
