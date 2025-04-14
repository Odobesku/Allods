create table man_versions
(
    id         bigint       not null
        primary key,
    source_id  bigint       not null,
    deploy_dir varchar(250) not null,
    host_id    bigint       not null,
    constraint fk_man_versions_host_id
        foreign key (host_id) references hosts (id),
    constraint fk_man_versions_id
        foreign key (id) references versions (id)
            on delete cascade,
    constraint fk_man_versions_source_id
        foreign key (source_id) references man_sources (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_man_versions_host_id
    on man_versions (host_id);

create index idx_man_versions_id
    on man_versions (id);

