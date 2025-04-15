-- accounts database

drop table if exists public.account_email;

create table public.account_email
(
    id    serial
        constraint account_email_pk
            primary key,
    email char(255),
    login char(255),
    guid char(255)
);




