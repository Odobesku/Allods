create table high_level_updates
(
    id           bigint auto_increment
        primary key,
    name         varchar(250)                        not null,
    performed_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint idx_high_l_u_name
        unique (name)
)
    engine = InnoDB
    charset = utf8;

INSERT INTO allods_master.high_level_updates (id, name, performed_at) VALUES (1, 'masterServer.main.highLevelUpdates.BasePartCutter', '2023-03-29 14:26:20');
INSERT INTO allods_master.high_level_updates (id, name, performed_at) VALUES (2, 'masterServer.plugins.projectSupport.a1.updates.HistoryInitializer', '2023-03-29 14:26:21');
