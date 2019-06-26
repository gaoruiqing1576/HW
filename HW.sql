#客户端连接服务器端
SET NAMES UTF8;
#先丢弃
DROP DATABASE IF EXISTS HW;
#再创建
CREATE DATABASE HW CHARSET=UTF8;
#使用HW数据库
USE HW;

#用户表的创建
CREATE TABLE HW_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,     #用户编号
	uname VARCHAR(32),			#用户名
	upwd  VARCHAR(32),			#密码
	email VARCHAR(32),			#邮箱
	phone VARCHAR(16),			#手机
	
	avatar VARCHAR(32),			#头像
	user_name VARCHAR(32),			#真实姓名
	gender INT,				#性别  男:1 女:0 保密:-1
	address VARCHAR(128),			#地址
	birthday DATETIME			#生日
);
/*插入用户数据*/
INSERT INTO HW_user VALUES(NULL,"kongkong",123456,"11111@qq.com","11111111111","images/users-avatar/default.png","孙悟空",1,"花果山水帘洞","1989-5-30");
INSERT INTO HW_user VALUES(NULL,"jiejie",123456,"22222@qq.com","22222222222","images/users-avatar/default.png","猪八戒",1,"福林山云栈洞","1978-3-24");
INSERT INTO HW_user VALUES(NULL,"shasha",123456,"33333@qq.com","33333333333","images/users-avatar/default.png","沙和尚",1,"贺州流沙河","2001-8-3");
INSERT INTO HW_user VALUES(NULL,"tangtang",123456,"44444@qq.com","44444444444","images/users-avatar/default.png","唐僧",1,"大唐芙蓉园","1999-7-4");
INSERT INTO HW_user VALUES(NULL,"longlong",123456,"55555@qq.com","55555555555","images/users-avatar/default.png","白龙马",1,"蛇盘山鹰愁涧","2008-5-20");
INSERT INTO HW_user VALUES(NULL,"xuande",123456,"66666@qq.com","66666666666","images/users-avatar/default.png","刘备",1,"幽州涿郡涿县人","0161-6-10");
INSERT INTO HW_user VALUES(NULL,"yunchang",123456,"77777@qq.com","77777777777","images/users-avatar/default.png","关羽",1,"河东郡解县人","0160-5-16");
INSERT INTO HW_user VALUES(NULL,"yide",123456,"88888@qq.com","88888888888","images/users-avatar/default.png","张飞",1,"幽州涿郡人","0165-7-11");
INSERT INTO HW_user VALUES(NULL,"xishi",123456,"99999@qq.com","99999999999","images/users-avatar/default.png","西施",0,"越国句无苎萝村人","1473-4-11");
INSERT INTO HW_user VALUES(NULL,"zhaojun",123456,"10101@qq.com","10101010101","images/users-avatar/default.png","王昭君",0,"西汉南郡秭归人","1052-3-11");
INSERT INTO HW_user VALUES(NULL,"yangyuhuan",123456,"12121@qq.com","12121212121","images/users-avatar/default.png","杨玉环",0,"开元宦官世家","1719-6-22");
INSERT INTO HW_user VALUES(NULL,"diaochan",123456,"13131@qq.com","13131313131","images/users-avatar/default.png","貂蝉",0,"昭阳宫里人","0168-6-12");

#用户收货地址表的创建
CREATE TABLE HW_receiver_address(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,			#用户编号
	receiver VARCHAR(16),		#接收人姓名
	province VARCHAR(16),		#省
        city VARCHAR(16),		#市
	county VARCHAR(16),		#县
        address VARCHAR(128),		#详细地址
	cellphone VARCHAR(16),		#手机
	postcode CHAR(6),		#邮编
	tag VARCHAR(16),		#备注
	is_default BOOLEAN,		#是否为当前用户的默认收货地址 
	FOREIGN KEY (user_id) REFERENCES HW_user(uid)
);


#用户购物车列表的添加
CREATE TABLE HW_shopping_cart(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,		#用户编号
	product_id INT,		#商品编号
	count INT,		#购买数量
	FOREIGN KEY (user_id) REFERENCES HW_user(uid)
);

#用户订单列表的创建
CREATE TABLE HW_order(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,		#用户编号
	address_id INT,		#用户地址
	status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消  
	order_time BIGINT,      #下单时间     
	pay_time BIGINT,        #付款时间
	deliver_time BIGINT,    #发货时间      
	received_time BIGINT,    #签收时间
	FOREIGN KEY (user_id) REFERENCES HW_user(uid)
); 

#用户订单详情表
CREATE TABLE HW_order_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,	
	order_id INT,		#订单编号
	product_id INT,		#产品编号
	count INT          	#购买数量  
);

#商品家族列表的创建
CREATE TABLE HW_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(32)	#家族名称
);
/*插入家族数据*/
INSERT INTO HW_family VALUES(1,"手机");
INSERT INTO HW_family VALUES(2,"笔记本");
INSERT INTO HW_family VALUES(3,"精品平板");
INSERT INTO HW_family VALUES(4,"精选配件");


#华为手机表的创建
CREATE TABLE HW_phone(
	family_id INT,				#家族编号
	pid INT PRIMARY KEY AUTO_INCREMENT,     #商品编号
	title VARCHAR(64),			#主标题
	subtitle VARCHAR(32),			#副标题
	price DECIMAL(8,2),			#价格 10000.00
	color VARCHAR(16),			#颜色
	spec VARCHAR(32),			#规格

	pname VARCHAR(16),			#手机名称
	fcamera	VARCHAR(128),			#前置摄像头
	rcamera	VARCHAR(128),			#后置摄像头
	battery	VARCHAR(16),			#电池容量
	screen VARCHAR(16),			#屏幕尺寸
	resolution VARCHAR(16),			#分辨率
	cpu VARCHAR(16),			#处理器
	details VARCHAR(1024),   		#产品详细说明

	shelf_time BIGINT,          		#上架时间
	sold_count INT,             		#已售出的数量
	is_onsale BOOLEAN,          		#是否促销中 # 1--促销  2--不促销
	FOREIGN KEY (family_id) REFERENCES HW_family(fid)
);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI Mate 10",NULL,"3399.00","樱粉金","4GB+64GB","HUAWEI Mate 10（Ascend Mate）","800万","1200万（彩色）＋2000万（黑白）","4000mAh","5.9英寸","2560*1440像素","麒麟970","<div>","2017年10月",5,0);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI Mate 20 RS 保时捷设计","甄选进口牛皮材质，保时捷设计基因，卓然典藏的艺术珍品",12999.00,"瑞红","8GB|512GB|全网通版","HUAWEI Mate 20 RS 保时捷设计"," 2400万像素","4000万像素+2000万像素+800万像素","4200mAh","6.39 英寸","2k+ 3120 x 1440 像素","HUAWEI Kirin 980 （麒麟980）","<div>","2018年10月",5,1);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹","4000万超大广角徕卡三摄|手持超级夜景|40W超级快充",5499.00,"翡冷翠","8GB|128GB|全网通版","HUAWEI Mate 20 Pro (UD)","2400万像素"," 4000万像素","4200mAh","6.39英寸","2k+ 3120 x 1440 像素","HUAWEI Kirin 980 （麒麟980）","<div>","2018年10月",10,1);
INSERT INTO HW_phone VALUES(1,NULL,"荣耀10 GT游戏加速 AIS手持夜景 AI摄影","麒麟970AI芯片|GPU Turbo|手持超级夜景","1999.00","幻影蓝","6GB|128GB|全网通","荣耀10","2400万像素","1600万像素＋2400万像素","3400mAh","5.84英寸","2280 x 1080 像素","HUAWEI Kirin 970 （麒麟970）","<div>","2018年4月",23,1);
INSERT INTO HW_phone VALUES(1,NULL,"荣耀20 4800万超广角AI四摄 3200W美颜自拍","购机享多重豪礼①尊享6期免息②赠价值2019元专属好礼③赢全国任意飞机票④享碎屏险8折","2699.00","幻夜黑","全网通8GB+128GB","荣耀20","3200万像素","4800万像素","3750mAh","6.26英寸","FHD+ 2340×1080像素","HUAWEI Kirin 980","<div>","2019年6月",30,1);
INSERT INTO HW_phone VALUES(1,NULL,"荣耀20i 3200万AI自拍 超广角三摄","优惠200，成交价1399元！",1599.00,"渐变红","全网通|6GB|64GB","荣耀20i","3200万像素","2400万像素+800万像素+200万像素","3400mAh","6.21英寸","2340*1080像素","Hisilicon Kirin 710*","<div>","2019年6月",30,1);
INSERT INTO HW_phone VALUES(1,NULL,"荣耀Magic2 魔法全视屏 麒麟980AI芯片 屏内指纹 超广角AI三摄"," 麒麟980 AI处理器，后置2400万 AI三摄，40W安全超级快充",2699.00,"渐变黑","全网通|6GB|128GB","荣耀Magic2","1600万像素+ 200万像素+ 200万像素","1600万像素+2400万像素+1600万像素","3500mAh","6.39英寸","FHD+ 2340 x 1080 像素","HUAWEI Kirin 980（麒麟980）","<div>","2018年10月",7,1);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI P20 Pro 4000万徕卡三摄 AI摄影大师",NULL,4488.00,"亮黑色","6GB|64GB|全网通版","HUAWEI P20 Pro","2400万像素","4000万像素","4000mAh","6.1英寸","2240*1080像素","麒麟970","<div>","2018年4月",6,1);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI P30 麒麟980 超感光徕卡三摄 屏内指纹 双景录像","麒麟980芯片|6.1英寸OLED全面屏|屏内指纹|超感光徕卡三摄|5倍混合变焦","3988.00","亮色黑","全网通8GB+128GB","HUAWEI P30","3200万像素","4000万像素超感光摄像头+1600万像素超广角摄像头+800万像素长焦摄像头","3650mAh","6.1英寸","FHD+ 2340*1080 像素","HUAWEI Kirin 980","<div>","2019年4月",5,1);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI P30 Pro 麒麟980 超感光徕卡四摄 屏内指纹 曲面屏 双景录像","麒麟980芯片|6.47英寸OLED曲面屏|4000万超感光徕卡四摄|4200毫安电池强劲续航","5488.00","亮色黑","全网通8GB+128GB","HUAWEI P30 Pro","3200万像素"," 4000万像素超感光摄像头+2000万像素超广角摄像头+800万像素超级变焦摄像头+华为Time-of-Flight（ToF）摄像头","4200mAh","6.47英寸","FHD+ 2340*1080 像素","HUAWEI Kirin 980","<div>","2019年4月",5,1);
INSERT INTO HW_phone VALUES(1,NULL,"荣耀畅玩7 全网通版 2GB+16GB（黑色）","小巧全面屏 智能听筒 独立三卡槽",599.00,"黑色","全网通版|2GB|16GB","荣耀畅玩7","500万","1300万","3020mAh","5.45英寸","1440*720像素","PowerVR GE8100","<div>","2018年5月",2,1);
INSERT INTO HW_phone VALUES(1,NULL,"荣耀畅玩8A 6.09英寸珍珠全面屏 震撼大音量","标配版",799.00,"极光蓝","全网通|3GB|32GB","荣耀畅玩8A","800万像素","1300万像素","3020mAh","6.088英寸","HD+ 1520x720 像素","Mediatek MT6765（联发科 Helio P35）","<div>","2019年1月",4,1);
INSERT INTO HW_phone VALUES(1,NULL,"荣耀畅玩8C 两天一充 莱茵护眼 超清刘海屏","标配版",899.00,"极光蓝","全网通标配版|4GB|32GB","荣耀畅玩8C","800万像素","1300万像素","4000mAh","6.26英寸","HD+ 1520x720 像素","高通骁龙632","<div>","2018年10月",10,1);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI nova 3"," 易烊千玺代言，2400万海报级自拍，GPU Turbo 稳定高帧率游戏体验，6.3英寸全面屏3D炫彩机身",2599.00,"蓝楹紫","全网通|6GB|64GB","HUAWEI nova 3","2400万像素＋200万像素","1600万像素＋2400万像素","3750mAh","6.3英寸","2310 x 1080像素","HUAWEI Kirin 970 (麒麟970)","<div>","2018年7月",3,1);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI nova 4 4800万超广角三摄 自拍极点全面屏"," 6.4英寸极点全面屏，4800万超广角三摄，2500万海报级自拍，AI微塑美颜，来电视频铃声，AI视频专家自动剪辑主角故事。",2799.00,"贝母白","全网通|8GB|128GB","HUAWEI nova 4","2500万像素","4800万像素","3750mAh","6.4英寸","2310 x 1080像素","HUAWEI Kirin 970 (麒麟970)","<div>","2018年12月",9,1);
INSERT INTO HW_phone VALUES(1,NULL,"华为畅享 9S 2400万超广角AI三摄 ","2400万超广角三摄，6.21英寸珍珠屏，EMUI 9.0系统",1599.00,"珊瑚红","全网通|4GB|64GB","华为畅享 9S","800万像素","2400万像素+1600万像素（广角）+200万像素","3400mAh","6.21英寸","2340*1080像素","Hisilicon Kirin 710*","<div>","2019年3月",5,1);
INSERT INTO HW_phone VALUES(1,NULL,"华为畅享 MAX ","7.12英寸珍珠屏，5000mAh大电池，精雕皮纹工艺",1699.00,"琥珀棕","全网通|4GB|64GB","华为畅享 MAX","800万像素","1600万像素+200万像素","3750mAh","7.12英寸","FHD+ 1080x2244 像素","Qualcomm Snapdragon 660（高通 骁龙660）","<div>","2018年10月",5,1);
INSERT INTO HW_phone VALUES(1,NULL,"HUAWEI 麦芒7 6GB+64GB 全网通版（铂光金）","①领券减400 ②赠PC保护壳（赠品有限，赠完即止）③享6期分期免息 ④购机赢法国豪华游",2199.00,"铂光金","全网通|6GB|64GB","HUAWEI 麦芒7","2400万像素（彩色）像素＋200万像素","2000万像素+200万像素","3750mAh","6.3英寸","FHD+ 1080 x 2340 像素","HUAWEI Kirin 710 (麒麟710)","<div>","2018年9月",7,1);
INSERT INTO HW_phone VALUES(1,NULL,"华为麦芒8 6G+128G 全网通版（宝石蓝）","【16:08开始预订 订金50抵100】6.12日首销支付尾款和发货",1899.00,"宝石蓝","全网通|6GB|128GB","HUAWEI 麦芒 8","800万像素","2400万像素+1600万像素（广角）+200万像素","3400mAh","6.21英寸","2340*1080像素","Hisilicon Kirin 710*","<div>","2019年6月",5,1);


#华为手机图片表
CREATE TABLE HW_phone_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	phone_id INT,               #手机编号
	sm VARCHAR(128),            #小图片路径
	md VARCHAR(128),            #中图片路径
	bg VARCHAR(128),             #大图片路径
	FOREIGN KEY (phone_id) REFERENCES HW_phone(pid)
);
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/01_sm.jpg","images/phone-pic/middle/01_md.jpg","images/phone-pic/big/01_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/02_sm.jpg","images/phone-pic/middle/02_md.jpg","images/phone-pic/big/02_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/03_sm.png","images/phone-pic/middle/03_md.png","images/phone-pic/big/03_bg.png");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/04_sm.jpg","images/phone-pic/middle/04_md.jpg","images/phone-pic/big/04_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/05_sm.jpg","images/phone-pic/middle/05_md.jpg","images/phone-pic/big/05_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/06_sm.jpg","images/phone-pic/middle/06_md.jpg","images/phone-pic/big/06_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/07_sm.jpg","images/phone-pic/middle/07_md.jpg","images/phone-pic/big/07_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/08_sm.jpg","images/phone-pic/middle/08_md.jpg","images/phone-pic/big/08_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/09_sm.jpg","images/phone-pic/middle/09_md.jpg","images/phone-pic/big/09_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/10_sm.png","images/phone-pic/middle/10_md.png","images/phone-pic/big/10_bg.png");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/11_sm.jpg","images/phone-pic/middle/11_md.jpg","images/phone-pic/big/11_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/12_sm.jpg","images/phone-pic/middle/12_md.jpg","images/phone-pic/big/12_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/13_sm.jpg","images/phone-pic/middle/13_md.jpg","images/phone-pic/big/13_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/14_sm.png","images/phone-pic/middle/14_md.png","images/phone-pic/big/14_bg.png");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/15_sm.jpg","images/phone-pic/middle/15_md.jpg","images/phone-pic/big/15_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/16_sm.jpg","images/phone-pic/middle/16_md.jpg","images/phone-pic/big/16_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/17_sm.jpg","images/phone-pic/middle/17_md.jpg","images/phone-pic/big/17_bg.jpg");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/18_sm.png","images/phone-pic/middle/18_md.png","images/phone-pic/big/81_bg.png");
INSERT INTO HW_phone_pic VALUES(Null,1,"images/phone-pic/small/19_sm.jpg","images/phone-pic/middle/19_md.jpg","images/phone-pic/big/19_bg.jpg");

#华为笔记本列表的创建
CREATE TABLE HW_laptop(
	lid INT PRIMARY KEY AUTO_INCREMENT,	#产品编号
	family_id INT,				#所属型号家族编号
	title VARCHAR(128),			#主标题
	subtitle VARCHAR(128),			#副标题
	price DECIMAL(7,2),			#价格 10000.00
	color VARCHAR(16),			#颜色
	spec VARCHAR(32),			#规格
			
	lname VARCHAR(32),           		#笔记本名称
	screen VARCHAR(16),			#屏幕尺寸
	os VARCHAR(32),             		#操作系统
	battery	VARCHAR(16),			#电池容量
	resolution VARCHAR(32),     		#分辨率
	video_card VARCHAR(32),     		#显卡型号
	cpu VARCHAR(32),            		#处理器
	memory VARCHAR(32),   				#存储容量
	details VARCHAR(1024),      		#产品详细说明
			
	shelf_time BIGINT,          		#上架时间
	sold_count INT,             		#已售出的数量
	is_onsale BOOLEAN,           		#是否促销中
	FOREIGN KEY (family_id) REFERENCES HW_family(fid)
);
INSERT INTO HW_laptop VALUES(NULL,2,"HUAWEI MateBook X Pro 2019款","3K触控全面屏，91%屏占比，HUAWEI Share 一碰传，全速雷电3接口",8999.00,"深空灰","I5/8GB/512GB","HUAWEI MateBook X Pro","13.9英寸","Windows 10 64位 家庭版","57.4Wh","3000*2000像素","独立显卡","i5-8265U","512GB","<div>","2019年4月",5,1);
INSERT INTO HW_laptop VALUES(NULL,2,"HUAWEI MateBook E 2019款","2K触摸屏，HUAWEI Share 一碰传，4G LTE全时在线，轻松移动办公",3999.00,"钛金灰"," 高通|850|8GB|256GB","华为(HUAWEI) MateBook E 2019款","12英寸","Windows 10 家庭中文版","36.3Wh","2160x1440像素","核芯显卡","高通骁龙850™移动计算平台（高通SDM850）","256GB","<div>","2019年4月",5,1);
INSERT INTO HW_laptop VALUES(NULL,2,"HUAWEI MateBook 14","2K全面屏，90%屏占比，HUAWEI Share 一碰传，快速充电持续续航",6999.00,"皓月银","i7|8GB|512GB","HUAWEI MateBook 14","14英寸","预装Windows 10 家庭版 64位","57.4Wh","2160x1440像素","独立显卡","i7-8565U","512GB","<div>","2019年4月",8,1);
INSERT INTO HW_laptop VALUES(NULL,2,"HUAWEI MateBook 13 2K全面屏轻薄性能笔记本 手机电脑一碰即传 ","2K全面屏，HUAWEI Share 一碰传，快速充电持久续航，指纹式开机登录一键完成。",5699.00,"皓月银","i5|8GB|256GB","HUAWEI MateBook 13","13英寸","预装Windows 10 家庭版 64位","41.838Wh","2160x1440像素","独立显卡","i5-8265U","512GB","<div>","2018年12月",9,1);
INSERT INTO HW_laptop VALUES(NULL,2,"荣耀MagicBook 2019 锐龙版 14英寸轻薄笔记本电脑 ",NULL,3999.00,"冰河银","R5|8GB|256GB|2019版","荣耀 MagicBook 2019","14英寸","Windows 10 家庭版 64位","57.4Wh","1920x1080像素","Radeon™ Vega 8 Graphics","AMD锐龙5 3500U移动处理器","256GB","<div>","2019年4月",5,1);
INSERT INTO HW_laptop VALUES(NULL,2,"荣耀MagicBook 14英寸轻薄笔记本电脑","12小时长续航，微边框护眼全高清IPS屏,MX150独立显卡，时尚轻薄！",4999.00,"冰河银","i5|8GB|256GB","荣耀MagicBook","14英寸","Windows 10 家庭版 64位","57.4Wh","1920x1080（FHD）","英伟达 GeForce MX150","第八代智能英特尔® 酷睿™ i5-8250U处理器","256GB","<div>","2018年4月",7,1);
INSERT INTO HW_laptop VALUES(NULL,2,"HUAWEI MateBook D（2018版）15.6英寸轻薄笔记本 金属一体化机身 杜比全景声音响"," 15.6英寸大屏 6.2mm微边框 83%屏占比 金属一体化机身 杜比全景声音响系统",5188.00,"皓月银","I5/8GB/256GB","HUAWEI MateBook D","15.6英寸","预装Windows 10 家庭版；内置Microsoft Office家庭和学生版2016","43.3Wh","1920x1080像素","NVIDIA GeForce MX150 2GB显存","第八代智能英特尔® 酷睿 i5-8250U 处理器","256GB 固态硬盘","<div>","2018年8月",6,1);
INSERT INTO HW_laptop VALUES(NULL,2,"HUAWEI MateBook E","标配键盘和扩展坞 2K高清触摸屏 办公、游戏轻松切换",4288.00,"香槟金","M3|4GB|128GB","MateBook E","12英寸","Windows 10 家庭版 64位","33.7Wh","2160×1440","Intel® HD Graphics 615","第七代智能英特尔® 酷睿™ m3-7Y30 处理器","128GB固态硬盘","<div>","2019年4月",10,1);


#华为笔记本图片表

CREATE TABLE HW_laptop_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	laptop_id INT,               #手机编号
	sm VARCHAR(128),            #小图片路径
	md VARCHAR(128),            #中图片路径
	bg VARCHAR(128),            #大图片路径
	FOREIGN KEY (laptop_id) REFERENCES HW_laptop(lid)
);

INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/01_sm.jpg","images/computer-pic/middle/01_md.jpg","images/computer-pic/big/01_bg.jpg");
INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/02_sm.png","images/computer-pic/middle/02_md.png","images/computer-pic/big/02_bg.png");
INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/03_sm.png","images/computer-pic/middle/03_md.png","images/computer-pic/big/03_bg.png");
INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/04_sm.png","images/computer-pic/middle/04_md.png","images/computer-pic/big/04_bg.png");
INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/05_sm.png","images/computer-pic/middle/05_md.png","images/computer-pic/big/05_bg.png");
INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/06_sm.png","images/computer-pic/middle/06_md.png","images/computer-pic/big/06_bg.png");
INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/07_sm.png","images/computer-pic/middle/07_md.png","images/computer-pic/big/07_bg.png");
INSERT INTO HW_laptop_pic VALUES(Null,1,"images/computer-pic/small/08_sm.png","images/computer-pic/middle/08_md.png","images/computer-pic/big/08_bg.png");

#首页商品表的创建
CREATE TABLE HW_index_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,	
	family_id INT,				#家族编号		
	title VARCHAR(64),			#商品标题
	details VARCHAR(128),            	#详细描述
	pic VARCHAR(128),            		#图片
	price DECIMAL(10,2),			#商品价格
	href VARCHAR(128),
	FOREIGN KEY (family_id) REFERENCES HW_family(fid)
);
#手机
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI Mate 20","购机赠耳机","images/index/phones/a06.png",3499.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI Mate 20 RS","购机赠耳机","images/index/phones/a07.png",12999.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"荣耀10","准点赠好礼","images/index/phones/a14.png",1799.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"荣耀20","购机赠耳机","images/index/phones/a15.png",2699.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI P20 Pro","准点赠好礼","images/index/phones/a03.png",4488.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI P30","购机赠耳机","images/index/phones/a04.png",3988.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI P30 Pro","购机赠耳机","images/index/phones/a05.png",5488.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"荣耀畅玩7","准点赠好礼","images/index/phones/a12.png",599.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"荣耀畅玩8A","购机赠耳机","images/index/phones/a13.png",799.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI nova 3","准点赠好礼","images/index/phones/a01.png",2799.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI nova 4","购机赠耳机","images/index/phones/a02.png",2799.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"华为畅享 9S","准点赠好礼","images/index/phones/a08.png",1599.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"华为畅享 MAX","购机赠耳机","images/index/phones/a09.png",1699.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI 麦芒7","准点赠好礼","images/index/phones/a10.png",2199.00,"");
INSERT INTO HW_index_product VALUES(NULL,1,"HUAWEI 麦芒8","购机赠耳机","images/index/phones/a11.png",1899.00,"");
#笔记本
INSERT INTO HW_index_product VALUES(NULL,2,"HUAWEI MateBook X Pro 2019 款","最高直降200+6期免息 ","images/index/computers/b02.png",7999.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"HUAWEI MateBook E 2019 款","现货速发  享3期免息 ","images/index/computers/b03.png",4999.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"HUAWEI MateBook 14","最高直降200+6期免息 ","images/index/computers/b04.png",6999.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"HUAWEI MateBook 13","现货速发  享3期免息 ","images/index/computers/b05.png",5999.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"荣耀MagicBook","最高直降200+6期免息 ","images/index/computers/b06.png",4299.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"荣耀MagicBook 笔记本电脑","现货速发  享3期免息 ","images/index/computers/b07.png",4999.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"HUAWEI MateBook D","最高直降200+6期免息 ","images/index/computers/b08.png",5188.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"HUAWEI MateBook E","现货速发  享3期免息 ","images/index/computers/b09.png",4288.00,"");
INSERT INTO HW_index_product VALUES(NULL,2,"【订金】MagicBook2019锐龙版","最高直降200+6期免息 ","images/index/computers/b10.png",3999.00,"");
#平板
INSERT INTO HW_index_product VALUES(NULL,3,"荣耀平板5 10.1英寸","最高直降200+6期免息 ","images/index/tablet/c02.png",1199.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"华为平板 M5 青春版 10.1英寸","现货速发  享3期免息 ","images/index/tablet/c03.png",2349.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"荣耀平板5 8英寸","最高直降200+6期免息 ","images/index/tablet/c04.png",949.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"华为畅享平板","现货速发  享3期免息 ","images/index/tablet/c05.png",1299.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"荣耀Waterplay","最高直降200+6期免息 ","images/index/tablet/c06.png",1299.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"华为平板 M5 8.4英寸","现货速发  享3期免息 ","images/index/tablet/c07.png",2088.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"【订金】荣耀平板5 10.1","最高直降200+6期免息 ","images/index/tablet/c08.png",1399.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"华为平板 M5 青春版 8.0英寸","现货速发  享3期免息 ","images/index/tablet/c09.png",1149.00,"");
INSERT INTO HW_index_product VALUES(NULL,3,"【订金】荣耀平板5 8英寸","最高直降200+6期免息 ","images/index/tablet/c10.png",1099.00,"");
#精选配件
INSERT INTO HW_index_product VALUES(NULL,4,"北通G1手游游戏手柄-蓝牙版","多指组合操作","images/index/accessories/d02.png",219.00,"");
INSERT INTO HW_index_product VALUES(NULL,4,"科大讯飞翻译机","51种语言在线翻译","images/index/accessories/d03.png",2799.00,"");
INSERT INTO HW_index_product VALUES(NULL,4,"BRASPORT双色硅胶表带","双色设计动感","images/index/accessories/d04.png",89.00,"");
INSERT INTO HW_index_product VALUES(NULL,4,"绿联 高清投屏转换器","智能Type-C拓展 小巧便捷 ","images/index/accessories/d05.png",159.00,"");
INSERT INTO HW_index_product VALUES(NULL,4,"MOMAX 手持挂脖风扇","美颜补妆镜 ","images/index/accessories/d06.png",69.00,"");
INSERT INTO HW_index_product VALUES(NULL,4,"耐翔 手游数据线","随心随意双面盲插 ","images/index/accessories/d07.png",29.00,"");
INSERT INTO HW_index_product VALUES(NULL,4,"M5 平板电脑皮套键盘","轻薄优雅 精巧设计 ","images/index/accessories/d08.png",299.00,"");
INSERT INTO HW_index_product VALUES(NULL,4,"MOMAX 5A弯头编织数据线","炫彩编织 强悍耐用 ","images/index/accessories/d09.png",39.00,"");



#轮播图表的创建
CREATE TABLE HW_index_carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,	
	img VARCHAR(128),			#图片路径
	title VARCHAR(64),            		#图片描述
	href VARCHAR(128)           		#图片链接
);
#大轮播图
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel01/01.jpg","轮播广告商品1","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel01/02.jpg","轮播广告商品2","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel01/03.jpg","轮播广告商品3","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel01/04.jpg","轮播广告商品4","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel01/05.jpg","轮播广告商品5","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel01/06.jpg","轮播广告商品6","");
#小轮播图
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/01.jpg","轮播广告商品1","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/02.jpg","轮播广告商品2","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/03.jpg","轮播广告商品3","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/04.jpg","轮播广告商品4","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/05.jpg","轮播广告商品5","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/06.jpg","轮播广告商品6","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/07.jpg","轮播广告商品7","");
INSERT INTO HW_index_carousel VALUES(NULL,"images/carousel02/08.jpg","轮播广告商品8","");


