create table versions
(
    id   bigint auto_increment
        primary key,
    type varchar(32) not null
)
    engine = InnoDB
    charset = utf8;

