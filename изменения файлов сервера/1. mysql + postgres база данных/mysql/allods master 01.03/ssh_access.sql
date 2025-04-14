create table ssh_access
(
    id        bigint auto_increment
        primary key,
    host_mask varchar(100) not null,
    login     varchar(100) not null,
    pwd       varchar(100) not null,
    `key`     blob         not null,
    constraint host_mask
        unique (host_mask)
)
    engine = InnoDB
    charset = utf8;

