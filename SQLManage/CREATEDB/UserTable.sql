use SmartHomeDb;


/**
用户登录 Session
 */

CREATE TABLE  IF NOT EXISTS SEDDION_T (
  `id` varchar(50) NOT NULL,#我
  `session` VARCHAR(32) NOT NULL, #section
  `validityPeriod` INT, #有效期（小时）
  `UUID` VARCHAR(11), #设备UUID
  `created_at` INT NOT NULL, #创建时间

  primary key (`id`)

)engine=innodb default charset=utf8;

/**
用户信息表
 */
CREATE TABLE  IF NOT EXISTS USERS(

  `userID` varchar(50) not null, #会员ID
  `userName` VARCHAR(25) NOT NULL, #用户名
  `passWord` varchar(50) NOT NULL,#密码
  `phone` VARCHAR(11), #手机号
  `email` VARCHAR(25) ,#邮箱
  `wxOpenid` VARCHAR(64) , #微信用户唯一标示
  `status` VARCHAR(4),#状态
  `permissions` int(8),#角色
  `headImage` VARCHAR(500), #头像
  `created_at` REAL NOT NULL,

  unique key `idx_userName` (`userName`),
  key `idx_wxOpenid` (`wxOpenid`),
  key `idx_phone` (`phone`),
  key `idx_email` (`email`),
  primary key (`userID`)
);


