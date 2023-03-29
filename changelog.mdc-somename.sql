--liquibase formatted sql

--changeset mmc-somename:mdc-poc-01somename labels:example-label context:example-context
--comment: example comment
create table someperson (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE someperson;

--changeset mmc-somename:mdc-poc-02somename labels:example-label context:example-context
--comment: example comment
create table somecompany (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE somecompany;

--changeset mmc-somename:mdc-poc-03somename labels:example-label context:example-context
--comment: example comment
alter table someperson add column country varchar(4)
--rollback ALTER TABLE someperson DROP COLUMN country;

