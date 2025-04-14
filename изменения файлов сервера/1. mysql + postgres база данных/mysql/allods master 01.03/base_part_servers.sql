create table base_part_servers
(
    id                bigint auto_increment
        primary key,
    name              varchar(100) not null,
    host_id           bigint       not null,
    remote_launch_dir varchar(64)  not null,
    config            mediumtext   not null,
    realm_id          bigint       not null,
    constraint fk_base_part_servers_host_id
        foreign key (host_id) references hosts (id),
    constraint fk_base_part_servers_realm_id
        foreign key (realm_id) references realms (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_base_part_servers_host_id
    on base_part_servers (host_id);

create index idx_base_part_servers_realm_id
    on base_part_servers (realm_id);

