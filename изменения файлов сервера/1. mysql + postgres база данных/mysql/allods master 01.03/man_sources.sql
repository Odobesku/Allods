create table man_sources
(
    id bigint not null
        primary key,
    constraint fk_man_sources_id
        foreign key (id) references sources (id)
)
    engine = InnoDB
    charset = utf8;

INSERT INTO allods_master.man_sources (id) VALUES (1);
