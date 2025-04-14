create table svn_versions
(
    id             bigint           not null
        primary key,
    source_id      bigint           not null,
    deploy_dir     varchar(250)     not null,
    revision       int              not null,
    path           varchar(250)     not null,
    autoupdateable bit default b'0' not null,
    constraint fk_svn_versions_id
        foreign key (id) references versions (id)
            on delete cascade,
    constraint fk_svn_versions_source_id
        foreign key (source_id) references svn_sources (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_svn_versions_id
    on svn_versions (id);

create index idx_svn_versions_source_id
    on svn_versions (source_id);

