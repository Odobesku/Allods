create table storage_sources
(
    id                bigint       not null
        primary key,
    name              varchar(100) not null,
    host_id           bigint       not null,
    storage_directory varchar(250) not null,
    constraint fk_storage_sources_host_id
        foreign key (host_id) references hosts (id),
    constraint fk_storage_sources_id
        foreign key (id) references sources (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_storage_sources_host_id
    on storage_sources (host_id);

create index idx_storage_sources_id
    on storage_sources (id);

