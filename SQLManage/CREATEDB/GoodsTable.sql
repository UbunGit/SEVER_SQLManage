use SmartHomeDb;



/**
商品分类表
 */
CREATE TABLE  IF NOT EXISTS GOODSCATEGORY(

  `id` VARCHAR(50), #分类id
  `name` VARCHAR(25), #分类名
  `fatherid` VARCHAR(50),#分类父id
  `icon` VARCHAR(20),#分类icon
  `depth` INTEGER,#深度
  primary key (`id`)
);

/**
  * 商品属性表
 */
CREATE TABLE  IF NOT EXISTS ATTRIBUTENAME(

  `id` varchar(50), #属性id
  `name` VARCHAR(25), #属性名
  primary key (`id`)
);

/**
分类 属性关联表
 */
CREATE TABLE  IF NOT EXISTS GOODS_SPU(
  `id` varchar(50), #属性id
  `attributeid` VARCHAR(50), #属性id
  `categoryid` VARCHAR(50),#分类id
  primary key (`id`),
  FOREIGN KEY (attributeid) REFERENCES ATTRIBUTENAME(id),
  FOREIGN KEY (categoryid) REFERENCES GOODSCATEGORY(id)

);


/**
商品spu表
 */
CREATE TABLE  IF NOT EXISTS GOODS_SPU(
  `id` VARCHAR(50), #属性id
  `name` VARCHAR(125), #商品名
  `content` text, #商品描述
  `dm_img` varchar(255), #'宣传图',
  `dm_price` varchar(50), #'宣传价格',
  `keywords` varchar(255), #'SEO关键词'
  `categoryid` varchar(50), #'分类ID'
  `mallid` varchar(50), #'店铺ID'
  primary key (`id`),
  FOREIGN KEY (categoryid) REFERENCES GOODSCATEGORY(id)
);

