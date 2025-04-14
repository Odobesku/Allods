create table scp_versions
(
    id         bigint       not null
        primary key,
    source_id  bigint       not null,
    deploy_dir varchar(250) not null,
    sub_path   varchar(250) not null,
    constraint fk_scp_versions_id
        foreign key (id) references versions (id)
            on delete cascade,
    constraint fk_scp_versions_source_id
        foreign key (source_id) references scp_sources (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_scp_versions_id
    on scp_versions (id);

create index idx_scp_versions_source_id
    on scp_versions (source_id);

