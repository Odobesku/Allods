create table applications
(
    id                bigint auto_increment
        primary key,
    host_id           bigint      not null,
    shard_id          bigint      not null,
    role              varchar(32) not null,
    remote_launch_dir varchar(64) not null,
    type              varchar(32) not null,
    config            mediumtext  not null,
    min_assigned_port int         not null,
    max_assigned_port int         not null,
    constraint fk_applications_host_id
        foreign key (host_id) references hosts (id),
    constraint fk_applications_shard_id
        foreign key (shard_id) references shard (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_applications_host_id
    on applications (host_id);

create index idx_applications_shard_id
    on applications (shard_id);

create index idx_applications_type
    on applications (shard_id, type);

