use SmartHomeDb;

/**
* 创建存储接口的表
* interFaceId            接口ID
* interFaceName          接口名
* interFaceNameStr       接口中文描述
* interFaceDescribe      接口描述
* interFacepath          接口路径
* interFaceBeginTime     接口开始使用时间
* interFaceEndTime       接口结束使用时间
* interFaceBeginVersions 接口开始使用版本
* interFaceEndVersions   接口结束使用版本
*/

CREATE  TABLE IF NOT EXISTS SmartHomeInterFace_Table
(
interFaceId int not null auto_increment primary key,
interFaceName varchar(255)not null UNIQUE,
interFaceNameStr varchar(255)not null ,
interFaceDescribe text,
interFacepath text,
interFaceBeginTime text,
interFaceEndTime text,
interFaceBeginVersions text,
interFaceEndVersions text
);

/**
* 创建存储接口参数的表
* parameterId           参数ID
* parameterName         参数名
* parameterDescribe     参数描述
* parameterCanNil       参数可以为空
* parameterEndTime      参数结束使用时间
* parameterBeginVersions参数开始版本
* parameterEndVersions  参数结束版本
* parameterType         参数类型 text,int
* parameterTypeuse      参数用途（输入1001，输出1002）
* parameterFatherName     参数父ID
*/
CREATE  TABLE IF NOT EXISTS SmartHomeParameter_Table
(
parameterId int auto_increment primary key,
parameterName text,
parameterDescribe text,
parameterCanNil text,
parameterEndTime text,
parameterBeginVersions text,
parameterEndVersions text,
parameterType text,
parameterTypeuse text,
parameterFatherName text
);



/**
* 创建存储日志的表
* logId            日志id
* logLevels        日志等级
* logCode          日志编号
* logDescription   日志描述
* logBusiness      日志业务描述
* logMember        日志会员账号
* logTime          日志产生时间
*/
CREATE  TABLE IF NOT EXISTS Log_Table
(
logId int not null auto_increment primary key,
logLevels int not null,
logCode text,
logDescription  text,
logBusiness text,
logMember text,
logTime DATETIME
);