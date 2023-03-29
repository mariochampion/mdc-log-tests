--liquibase formatted sql

--changeset mmc-03:mdc-poc-01 labels:example-label context:example-context
--comment: example comment
create table person03 (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person03;

--changeset mmc-03:mdc-poc-02 labels:example2-label context:example-context
--comment: example comment
create table company03 (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company03;

--changeset mmc-03:mdc-poc-03yyy labels:example3-label context:example-context
--comment: example comment
alter table person03 add column country varchar(2)
--rollback ALTER TABLE person03 DROP COLUMN country;

