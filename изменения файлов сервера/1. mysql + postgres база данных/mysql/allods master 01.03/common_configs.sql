create table common_configs
(
    id          bigint auto_increment
        primary key,
    object_kind varchar(32) not null,
    object_id   bigint      not null,
    config      mediumtext  not null,
    constraint idx_obj_kind_id
        unique (object_kind, object_id)
)
    engine = InnoDB
    charset = utf8;

