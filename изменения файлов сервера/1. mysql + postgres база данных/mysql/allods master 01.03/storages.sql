create table storages
(
    id   bigint auto_increment
        primary key,
    host varchar(100) not null,
    path varchar(250) not null
)
    engine = InnoDB
    charset = utf8;

