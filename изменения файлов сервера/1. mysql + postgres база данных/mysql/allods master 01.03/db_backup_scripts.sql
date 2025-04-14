create table db_backup_scripts
(
    id          bigint auto_increment
        primary key,
    db_kind     varchar(100) not null,
    backup_kind varchar(100) not null,
    script      mediumtext   not null,
    constraint db_kind
        unique (db_kind, backup_kind)
)
    engine = InnoDB
    charset = utf8;

