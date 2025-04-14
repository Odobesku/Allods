create table hosts
(
    id          bigint auto_increment
        primary key,
    name        varchar(100) not null,
    internal_ip varchar(250) not null,
    external_ip varchar(250) not null,
    client_ip   varchar(250) not null,
    port_ranges varchar(250) not null,
    constraint internal_ip
        unique (internal_ip),
    constraint name
        unique (name)
)
    engine = InnoDB
    charset = utf8;

