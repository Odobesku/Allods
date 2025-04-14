create table app_templates
(
    id       bigint auto_increment
        primary key,
    app_name varchar(64) not null,
    template mediumtext  not null,
    constraint app_name
        unique (app_name)
)
    engine = InnoDB
    charset = utf8;

