create table sources
(
    id   bigint auto_increment
        primary key,
    type varchar(32) not null
)
    engine = InnoDB
    charset = utf8;

INSERT INTO allods_master.sources (id, type) VALUES (1, 'ManualSource');
