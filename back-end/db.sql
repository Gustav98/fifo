create database db_fifo;
use db_fifo;
create table user(
    cd_id int(9) unsigned auto_increment,
    nm_name varchar(60),
    cd_email varchar(80),
    nm_password varchar(24),
    ic_admin boolean,
    primary key (cd_id)
);
create table game(
    cd_id int(9) unsigned auto_increment,
    nm_name varchar(40),
    primary key (cd_id)
);
create table game_mode(
    cd_id int(9) unsigned auto_increment,
    qt_user int(3),
    nm_mode varchar(30),
    primary key (cd_id)
);
create table order_game_mode(
    cd_id_game int(9) unsigned,
    cd_id_game_mode int(9) unsigned,
    ic_active boolean,
    foreign key (cd_id_game) references game(cd_id),
    foreign key (cd_id_game_mode) references game_mode(cd_id)
);
create table order_game_user(
    cd_id_user int(9) unsigned,
    cd_id_game int(9) unsigned,
    dt_begin datetime,
    dt_end datetime,
    foreign key (cd_id_user) references user(cd_id),
    foreign key (cd_id_game) references game(cd_id)
);