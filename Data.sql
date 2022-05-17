
use myuserdb;


-- Admin Table Cration 

create table admin (
       aid bigint not null auto_increment,
        apass varchar(255) not null,
        auname varchar(100) not null,
        primary key (aid)
) 	engine=MyISAM ;
 
-- HouseKeeper Table Cration  
 
create table housekeepers (
       hid bigint not null auto_increment,
        complains varchar(255),
        floor integer not null,
        hostelname varchar(255) not null,
        hname varchar(255) not null,
        available varchar(255) not null,
        roomscleaned integer not null,
        userid bigint,
        primary key (hid)
) engine=MyISAM ;

-- Users Table Cration 

create table users (
       uid bigint not null auto_increment,
        name varchar(255) not null,
        username varchar(100) not null,
        userpassword varchar(100) not null,
        primary key (uid)
    ) engine=MyISAM ;

alter table admin 
       drop index UK_gkk86h72hlxmue4yilaf05ovc;

alter table admin 
       add constraint UK_gkk86h72hlxmue4yilaf05ovc unique (auname);

alter table users 
       drop index UK_r43af9ap4edm43mmtq01oddj6;

alter table users 
       add constraint UK_r43af9ap4edm43mmtq01oddj6 unique (username);
    
alter table housekeepers 
       add constraint FK515v84i0pniltek9hnxvyr6mh 
       foreign key (userid) 
       references users (uid) ;
    
desc users;
desc housekeepers;
desc admin;

select * from users;
select * from admin;
select * from housekeepers;

