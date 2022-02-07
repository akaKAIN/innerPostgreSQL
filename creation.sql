create database mydb;

create table if not exists customer (
    nickname varchar (256) not null,
    email varchar (256) unique  not null,
);

insert into customer values ('first-user', 'user@mail.ru');