create table schema_versions
(
    version         int                                 not null
        primary key,
    last_changed_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    username        varchar(100)                        null,
    ip              varchar(15)                         null,
    revision        int                                 null
)
    charset = utf8;

INSERT INTO allods_master.schema_versions (version, last_changed_at, username, ip, revision) VALUES (1530, '2023-03-29 14:26:20', 'Administrator', '205.134.224.160', 523044);
