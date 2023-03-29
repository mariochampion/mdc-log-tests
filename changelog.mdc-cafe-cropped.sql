-- liquibase formatted sql


-- changeset mmc:create-cafe labels:one context:one
	-- comment: get the cafe started
	create table cafe (
	    id int primary key,
	    name varchar(255) not null,
	    address1 varchar(255),
	    address2 varchar(255),
	    city varchar(30)
)
-- rollback DROP TABLE cafe


-- changeset mmc:create-stools labels:one context:one
-- comment: get the stools started
create table stools (
    id int primary key,
    name varchar(255) not null,
    address1 varchar(255),
    address2 varchar(255),
    city varchar(30)
)
-- rollback DROP TABLE stools

-- changeset mmc:create-table-with-table-in-name labels:one context:one
-- comment: get the tables started
create table cafetables (
    id int primary key,
    cheese varchar(255) not null,
    inches varchar(255),
    topping varchar(255),
    rainbows varchar(30)
)
-- rollback DROP TABLE cafetables

-- changeset mmc:create-foods labels:one context:one
-- comment: get the foods started
create table foods (
    id int primary key,
    cheese varchar(255) not null,
    inches varchar(255),
    topping varchar(255),
    rainbows varchar(30)
)
-- rollback DROP TABLE foods

-- changeset mmc:create-drinks labels:one context:one 
-- comment: get the drinks started
create table drinks (
    id int primary key,
    cheese varchar(255) not null,
    inches varchar(255),
    topping varchar(255),
    rainbows varchar(30)
)
-- rollback DROP TABLE drinks



-- changeset mmc:create-staffers labels:one context:one 
-- comment: get the staffers started
create table staffers (
    id int primary key,
    cheese varchar(255) not null,
    inches varchar(255),
    topping varchar(255),
    rainbows varchar(30)
)
-- rollback DROP TABLE staffers


