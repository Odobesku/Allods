create table params
(
    name            varchar(100) default ''                not null
        primary key,
    value           text                                   not null,
    host            varchar(200)                           null,
    last_changet_at timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
    charset = utf8;

