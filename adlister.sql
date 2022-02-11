create database if not exists adlister;
use adlister;

# drop database java_adlister;
create table if not exists users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
#
INSERT INTO users (username, email, password)
VALUES ('mae12', 'mae12@yahoo.com', 'pass123'),
       ('aga321', 'aga321@yahoo.com', 'pass1234');

# describe departments;
select * from categories;
drop table ad;
# -------------------------------------------------
create table if not exists ad
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_id INT UNSIGNED NOT NULL,
    title VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);
#
INSERT INTO ad (title, description, users_id)
VALUES ('Hiring UBER', 'Hiring UBER drivers.', (select id from users where username = 'mae12')),
       ('For Sale: Toyota Camry 2018', 'Good condition car.', (select id from users where username = 'aga321'));

select * from categories;
delete from ad where id = 2;

# -------------------------------------------------

create table if not exists categories
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    ad_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ad(id)
);
#
INSERT INTO categories (category, ad_id)
VALUES ('jobs', (select id from ad where id = '5')),
       ('jobs', (select id from ad where id = '7')),
       ('cars', (select id from ad where id = '4')),
       ('cars', (select id from ad where id = '6')),
       ('cars', (select id from ad where id = '8')),
       ('free stuff', (select id from ad where id = '3'));

# -------------------------------------------------
create table if not exists ad_category
(
    ad_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ad(id),
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

#
INSERT INTO ad_category (category_id, ad_id)
VALUES (3, 3), (2, 4), (1, 5), (2, 6), (1, 7), (2, 8);

# -------------------------------------------------
drop table categories;

alter table categories
add column ad_id INT UNSIGNED NOT NULL,
add FOREIGN KEY (ad_id) REFERENCES ad(id);

alter table categories
drop ad_id;
# select count(category) from categories where category ='free stuff';

# For a given ad, what is the email address of the user that created it?
select users.email, ad.title as 'Ad Title'
from users
        join ad on users.id = ad.users_id
where ad.title = 'Hiring UBER';

# For a given ad, what category, or categories, does it belong to?
select ad.title, categories.category
from ad
      join categories on ad.id = categories.ad_id
where ad.title = 'Hiring UBER';

# For a given category, show all the ads that are in that category.
select title, category
from ad
    right join categories on ad.id = categories.ad_id
where title = 'Hiring UBER';

# For a given user, show all the ads they have posted.
select username, title, category
from users
    right join ad on users.id = ad.users_id
    left join categories on ad.id = categories.ad_id
    where username = 'charlie123';