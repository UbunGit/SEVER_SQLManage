/**
 * 修改会员信息
 * 2016.4.15 xiaoqy
*/
use SmartHomeDb;

DROP PROCEDURE  if exists p_ReplaceUserInfo;
DELIMITER //
CREATE  PROCEDURE `p_ReplaceUserInfo`(

    IN  userName_in text,       #接口名
    IN  userImg_in text,       #接口名
    IN  userPassWord_in text,    #接口中文描述
    IN  userTel_in text,   #接口描述
    IN  userLevel_in text,
    IN  userLogState_in int
)
    BEGIN

        SELECT COUNT(*) INTO @Count
        FROM SmartHomeUser_Table
        WHERE  userName = userName_in;


        IF @Count>0 THEN


            IF LENGTH(userName_in) THEN
                UPDATE SmartHomeUser_Table SET
                    userImg = userImg_in
                WHERE  userName = userName_in;
            END IF;

            IF LENGTH(userPassWord_in) THEN
                UPDATE SmartHomeUser_Table SET
                    userPassWord = userPassWord_in
                WHERE  userName = userName_in;
            END IF;

            IF LENGTH(userLevel_in) THEN
                UPDATE SmartHomeUser_Table SET
                    userLevel = userLevel_in
                WHERE  userName = userName_in;
            END IF;

            IF userLogState_in THEN
                UPDATE SmartHomeUser_Table SET
                    userLogState = userLogState_in
                WHERE  userName = userName_in;
            END IF;

            IF LENGTH(userTel_in) THEN

                UPDATE SmartHomeUser_Table SET
                    userTel = userTel_in
                WHERE  userName = userName_in;
            END IF;


        ELSE
            INSERT SmartHomeUser_Table SET
                userName = userName_in,
                userPassWord = userPassWord_in,
                userLevel = userLevel_in,
                userTel = userTel_in;

        END IF;

    END
//
DELIMITER ;

#call p_ReplaceUserInfo('admin',NULL,'123456','13923497592','1001','1001');
#SELECT * FROM SmartHomeUser_Table;
