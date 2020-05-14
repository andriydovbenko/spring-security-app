alter table if exists message
    drop constraint if exists message_user_fk;
alter table if exists user_role
    drop constraint if exists user_role_user_fk;
drop table if exists message cascade;
drop table if exists user_role cascade;
drop table if exists usr cascade;
drop sequence if exists hibernate_sequence;
create sequence hibernate_sequence start 1 increment 1;

create table message
(
    id      int8 not null,
    tag     varchar(255),
    text    varchar(2048) not null,
    user_id int8,
    primary key (id)
);

create table user_role
(
    user_id int8 not null,
    roles   varchar(255)
);

create table usr
(
    id       int8    not null,
    active   boolean not null,
    password varchar(255),
    username varchar(255),
    primary key (id)
);

alter table if exists message
    add constraint message_user_fk foreign key (user_id) references usr;
alter table if exists user_role
    add constraint user_role_user_fk foreign key (user_id) references usr;