use SmartHomeDb;
/**
用户信息表
 */
CREATE TABLE  IF NOT EXISTS USER_T(

  userID int auto_increment primary key, #会员ID
  userName VARCHAR(25) NOT NULL unique, #用户名
  phone VARCHAR(11) unique, #手机号
  wxOpenid VARCHAR(64) unique, #微信用户唯一标示
  email VARCHAR(25) unique,#邮箱

  passWord text,#密码
  createTime text,#创建时间
  status text,#状态
  permissions text,#角色
  headImage text #头像
);


/**
用户登录 Session
 */

CREATE TABLE  IF NOT EXISTS SEDDION_T(

  userID int,
  session VARCHAR(32) NOT NULL, #section
  createTime INT NOT NULL, #创建时间
  validityPeriod INT, #有效期（小时）
  UUID VARCHAR(11) #设备UUID

);