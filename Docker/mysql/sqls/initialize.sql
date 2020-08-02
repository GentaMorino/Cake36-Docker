CREATE DATABASE qa_app;
use qa_app;

create table answers (
  id int(10) unsigned not null auto_increment,
  question_id int(10) unsigned not null,
  user_id int(10) unsigned not null,
  body varchar(255) not null,
  created datetime not null,
  modified datetime not null,
  primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table questions (
  id int(10) unsigned not null auto_increment,
  user_id int(10) unsigned not null,
  body varchar(255) not null,
  created datetime not null,
  modified datetime not null,
  primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table users (
  id int(10) unsigned not null auto_increment,
  username varchar(16) not null,
  password varchar(255) not null,
  nickname varchar(32) not null,
  created  datetime not null,
  modified datetime not null,
  primary key (id),
  unique key (username)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
