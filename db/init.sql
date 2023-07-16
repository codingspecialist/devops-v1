create table user_tb (
    id integer AUTO_INCREMENT PRIMARY KEY,
    created timestamp,
    email varchar(255) not null,
    password varchar(255) not null,
    updated timestamp,
    username varchar(20),
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table post_tb (
    id integer AUTO_INCREMENT PRIMARY KEY,
    content varchar(10000) not null,
    created timestamp,
    title varchar(100) not null,
    updated timestamp,
    user_id integer not null,
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert into user_tb(username, password, email, created, updated) values('ssar', '1234', 'ssar@nate.com', now(), now());
insert into user_tb(username, password, email, created, updated) values('cos', '1234', 'cos@nate.com', now(), now());
insert into post_tb(title, content, user_id, created, updated) values('title1', 'content1', 1, now(), now());
insert into post_tb(title, content, user_id, created, updated) values('title2', 'content2', 1, now(), now());
insert into post_tb(title, content, user_id, created, updated) values('title3', 'content3', 1, now(), now());
insert into post_tb(title, content, user_id, created, updated) values('title4', 'content4', 2, now(), now());
insert into post_tb(title, content, user_id, created, updated) values('title5', 'content5', 2, now(), now());