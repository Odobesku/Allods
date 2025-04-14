create table svn_sources
(
    id    bigint       not null
        primary key,
    name  varchar(64)  not null,
    login varchar(250) not null,
    pwd   varchar(250) not null,
    url   varchar(250) not null,
    constraint fk_svn_sources_id
        foreign key (id) references sources (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_svn_sources_id
    on svn_sources (id);

