create table scp_sources
(
    id    bigint       not null
        primary key,
    name  varchar(64)  not null,
    login varchar(250) not null,
    pwd   varchar(250) not null,
    host  varchar(32)  not null,
    port  int          not null,
    path  varchar(250) not null,
    constraint fk_scp_sources_id
        foreign key (id) references sources (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_scp_sources_id
    on scp_sources (id);

