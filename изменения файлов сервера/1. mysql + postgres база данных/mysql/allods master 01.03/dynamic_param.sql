create table dynamic_param
(
    id    bigint auto_increment
        primary key,
    name  varchar(100) default '' not null,
    value blob                    not null,
    constraint name
        unique (name)
)
    engine = InnoDB
    charset = utf8;

