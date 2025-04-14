create table activities
(
    id            bigint auto_increment
        primary key,
    host_id       bigint                              not null,
    name          varchar(100)                        not null,
    status        varchar(20)                         not null,
    started_at    timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    ended_at      timestamp                           null,
    main_log_path varchar(250)                        not null,
    constraint fk_activities_host_id
        foreign key (host_id) references hosts (id)
            on delete cascade
)
    engine = InnoDB
    charset = utf8;

create index idx_activities_host_id
    on activities (host_id);

