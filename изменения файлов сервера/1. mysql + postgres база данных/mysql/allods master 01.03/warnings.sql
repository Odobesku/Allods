create table warnings
(
    id          bigint auto_increment
        primary key,
    object_kind varchar(32) default ''                    not null,
    object_id   bigint      default -1                    not null,
    message     mediumtext                                not null,
    logged_at   timestamp   default '0000-00-00 00:00:00' not null,
    started_at  timestamp   default '0000-00-00 00:00:00' not null
)
    engine = InnoDB
    charset = utf8;

create index logged_at
    on warnings (logged_at);

create index object_kind
    on warnings (object_kind, object_id);

