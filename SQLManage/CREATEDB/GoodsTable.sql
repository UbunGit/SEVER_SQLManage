use SmartHomeDb;
/**
商品表
 */
CREATE TABLE  IF NOT EXISTS GOODS_T(

  goodsID int auto_increment primary key, #商品ID
  goodsNO VARCHAR(20) ,#商品编号

  goodsName VARCHAR(255) NOT NULL, #商品名称
  goodsType VARCHAR(20), #商品类别

  goodsReserve VARCHAR(20), #商品库存

  goodsCostPrice FLOAT, #商品成本价
  goodsPrice     FLOAT, #商品定价
  goodsDiscount  FLOAT, #商品折扣
  goodsMinPrice  FLOAT, #商品最低价

  goodsImage text       #商品图片
);

/**
商品详情表
 */
CREATE TABLE  IF NOT EXISTS GOODSDES_T(

  goodsID int primary key, #商品ID
  goodsImglist text,#商品图片","分割
  goodsImgdeslist text #商品图片","分割
);