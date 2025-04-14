create table user_config
(
    id    bigint auto_increment
        primary key,
    `key` varchar(64)  not null,
    name  varchar(64)  not null,
    value varchar(250) not null,
    constraint `key`
        unique (`key`, name)
)
    engine = InnoDB
    charset = utf8;

