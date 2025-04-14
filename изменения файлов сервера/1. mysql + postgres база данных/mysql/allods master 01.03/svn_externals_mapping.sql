create table svn_externals_mapping
(
    version_id   bigint       not null,
    mapping_path varchar(250) not null,
    repository   varchar(250) not null,
    revision     int          not null,
    constraint fk_svn_externals_mapping_version_id
        foreign key (version_id) references versions (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_svn_externals_mapping_version_id
    on svn_externals_mapping (version_id);

