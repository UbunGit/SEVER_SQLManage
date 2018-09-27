use SmartHomeDb;
/*
* 创建关于彩票的表
*/

use SmartHomeDb;

create table if not exists FC3DData_t
(

outNO int not null primary key,#开奖期号
outdate date not null,#开奖日期
out_bai int(4) not null,#百位出球
out_shi int(4) not null,#十位出球
out_ge int(4) not null,#个位出球
unique(outNO,outdate)
);


create table if not exists FC3DDataBalance_t
(
fatherType int not null,#出球频率
fatherCout int not null,#频率值
balance float not null  #所占比重
);