create table storage_versions
(
    id           bigint       not null
        primary key,
    source_id    bigint       not null,
    deploy_dir   varchar(250) not null,
    archive_name varchar(250) not null,
    constraint fk_storage_versions_id
        foreign key (id) references versions (id)
            on delete cascade,
    constraint fk_storage_versions_source_id
        foreign key (source_id) references storage_sources (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_storage_versions_id
    on storage_versions (id);

create index idx_storage_versions_source_id
    on storage_versions (source_id);

