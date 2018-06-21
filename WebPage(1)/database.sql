DROP TABLE sc;
DROP TABLE student;
DROP TABLE course;

CREATE TABLE student(    
  SNO VARCHAR2(7) PRIMARY  KEY,
  Sname VARCHAR2(18)  not null,
  SSex VARCHAR2(3),
  Sage SMALLINT,
  Sdept VARCHAR2(50),
  SAvgGrade NUMBER(4,1),
  SPicture  BLOB,
  photo_url varchar2(200)
);

insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512101','李勇','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512102','刘晨','男',20,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512103','王敏','女',20,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9521101','张立','男',22,'信息系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9521102','吴宾','女',21,'信息系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9521103','张海','男',20,'信息系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9531101','钱小平','女',18,'数学系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9531102','王大力','男',19,'数学系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512104','张健','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512105','张齐朴','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512106','何世焱','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512107','乔勇','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512108','余天璞','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512109','郑德祥','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512110','沈忱','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512111','杜达林','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512112','方科','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512113','崔昌瑞','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512114','蔡基利','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512115','陈礼锐','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512116','刘大伟','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512117','杨宝宏','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512118','陈立淦','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512119','肖克','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512120','郭清吉','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512121','代磊','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512122','刘斌龙','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512123','陈少鹏','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512124','张嘉伟','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512125','李博古','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512126','金力','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512127','张景峰','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512128','张仁涛','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512129','裴晓斌','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512130','李成','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512131','王龙','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512132','史成林','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512133','刘其辉','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512134','张锋','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512135','常铮','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512136','王娜娜','女',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512137','严涛','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512138','李江','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512139','李晓真','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512140','罗雷','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512141','李豪','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512142','高瞻','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512143','吴建兵','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512144','陈新坤','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512145','李盼','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512146','潘威','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512147','陈光银','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512148','吕建雨','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512149','尚前进','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512150','陈龙','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512151','潘和星','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512152','陈啟飞','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512153','罗烈','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512154','陈涛','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512155','许泽亭','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512156','卢秦亮','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512157','张云飞','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512158','史博文','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512159','龚进伟','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512160','周靖','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512161','孙亚鹏','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512162','陈强','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512163','罗四维','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512164','赫中翮','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512165','王辉','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512166','刁劼庭','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512167','白小康','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512168','方敏','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512169','张博文','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512170','秦正位','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512171','熊海森','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512172','曾虎','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512173','张小华','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512174','宋亚威','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512175','张龙','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512176','王德红','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512177','杨文亮','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512178','石东','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512179','董求求','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512180','石颖','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512181','刘乾乾','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512182','张涛','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512183','王本友','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512184','操恒','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512185','张娟','女',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512186','杨丽','女',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512187','陈惜','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512188','蔡永权','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512189','邓超','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512190','林挺胜','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512191','周炫','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512192','廖欢','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512193','吴丕权','男',19,'计算机系','nopic.png');
insert into student(sno,sname,ssex,sage,sdept,photo_url) values('9512194','陈辉','男',19,'计算机系','nopic.png');
commit;