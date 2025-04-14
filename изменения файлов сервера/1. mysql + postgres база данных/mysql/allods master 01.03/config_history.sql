create table config_history
(
    id          bigint auto_increment
        primary key,
    logged_at   timestamp default '0000-00-00 00:00:00' not null,
    object_kind varchar(32)                             not null,
    object_id   bigint                                  not null,
    object_name varchar(250)                            not null,
    config      mediumtext                              not null,
    record_kind varchar(32)                             not null
)
    engine = InnoDB
    charset = utf8;

create index idx_object_id
    on config_history (object_id);

create index idx_object_name
    on config_history (object_name);

INSERT INTO allods_master.config_history (id, logged_at, object_kind, object_id, object_name, config, record_kind) VALUES (1, '2023-03-29 14:26:21', 'Realm', 1, 'Default', '<?xml version="1.0" encoding="UTF-8"?>
<config>
    <masterServer ip="" lang="en" warningLog="true">
        <net ip="127.0.0.1" port="8089"/>
        <api ip="127.0.0.1" port="10500"/>
        <agent ip="127.0.0.1" port="9550"/>
    </masterServer>
</config>
', 'Change');
