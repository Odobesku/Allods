create table realms
(
    id         bigint auto_increment
        primary key,
    name       varchar(100) not null,
    version_id bigint       null,
    config     mediumtext   null,
    constraint name
        unique (name),
    constraint fk_realms_version_id
        foreign key (version_id) references versions (id)
)
    engine = InnoDB
    charset = utf8;

create index idx_realms_version_id
    on realms (version_id);

INSERT INTO allods_master.realms (id, name, version_id, config) VALUES (1, 'Default', null, '<?xml version="1.0" encoding="UTF-8"?>
<config>
    <masterServer ip="" lang="ru" warningLog="true">
        <net ip="192.168.31.222" port="8089"/>
        <api ip="192.168.31.222" port="10500"/>
        <agent ip="192.168.31.222" port="9550"/>
    </masterServer>
</config>
');
