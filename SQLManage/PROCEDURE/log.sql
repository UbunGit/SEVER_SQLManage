/**
 * 查询会员信息
 * 2016.4.15 xiaoqy
*/
use SmartHomeDb;

DROP PROCEDURE  if exists p_ReplaceUserInfo; 
DELIMITER //
CREATE  PROCEDURE `p_ReplaceUserInfo`(

IN  userName_in text,       #接口名
)
BEGIN 



END
//  
DELIMITER ;

#call p_ReplaceUserInfo('test123','123456','13923497592','1001','1001');
#call p_ReplaceUserInfo('test123',NULL,NULL,NULL,1001)
