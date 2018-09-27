/*
* xiaoqy 2015/8/25
*/


#删除之前的数据库
use mysql;
DELETE FROM mysql.user WHERE user='SmartHome' AND host='%';
DELETE FROM mysql.user WHERE user='SmartHome' AND host='localhost';
drop database if  exists SmartHomeDb;
FLUSH PRIVILEGES;

create database SmartHomeDb DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

use SmartHomeDb;
#创建用户名密码

CREATE USER 'SmartHome'@'localhost' IDENTIFIED BY 'SmartHome';;
CREATE USER 'SmartHome'@'%' IDENTIFIED BY 'SmartHome';;

REVOKE ALL PRIVILEGES ON *.* FROM 'SmartHome'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'SmartHome'@'%';

REVOKE ALL PRIVILEGES ON *.* FROM 'SmartHome'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'SmartHome'@'localhost';

FLUSH PRIVILEGES;


use SmartHomeDb;



/**
* 创建保存会员信息表 SmartHomeUser_Table
* userId 会员id
* userName 会员名
* userPassWord 会员密码
* userTel 会员电话号码
* userLogState 1001 未登录 1002已登录
*/
use SmartHomeDb;
CREATE  TABLE IF NOT EXISTS SmartHomeUser_Table
(
userId int not null AUTO_INCREMENT,
userName varchar(255)not null UNIQUE,
userPassWord text,
userTel varchar(255) not null UNIQUE,
userLevel int,/*0 普通会员 1管理员*/
userLogState int,/*1001 未登录 1002已登录*/
userImg text,
PRIMARY KEY (userId)
);




























