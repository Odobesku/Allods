create table ccu_records
(
    id          bigint auto_increment
        primary key,
    shard_id    bigint    default -1                    not null,
    frontend_id smallint  default -1                    not null,
    ccu         int       default -1                    not null,
    stored_at   timestamp default '0000-00-00 00:00:00' not null,
    constraint shard_id
        unique (shard_id, frontend_id, stored_at)
)
    engine = InnoDB
    charset = utf8;

create index stored_at
    on ccu_records (stored_at);

