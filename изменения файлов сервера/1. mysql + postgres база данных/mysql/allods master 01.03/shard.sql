create table shard
(
    id         bigint auto_increment
        primary key,
    name       varchar(100) not null,
    config     mediumtext   not null,
    version_id bigint       null,
    realm_id   bigint       not null,
    constraint name
        unique (name),
    constraint fk_shard_realm_id
        foreign key (realm_id) references realms (id)
            on delete cascade,
    constraint fk_shards_version_id
        foreign key (version_id) references versions (id)
)
    engine = InnoDB
    charset = utf8;

create index idx_shard_realm_id
    on shard (realm_id);

INSERT INTO allods_master.shard (id, name, config, version_id, realm_id) VALUES (1, 'Allods Tets 7.0', '', null, 1);
