insert into ottawaspoon.rater (userId,e_mail,name,type,join_date,reputation,password) values
('1','home@canada.home','Parami','blog','Mon May 11 22:24:01 EDT 1998',1,'1111'),
('2','oh@simpson.homer','Steve','blog','Thu Apr 03 12:00:50 EST 1986',5,'1111'),
('3','oh@simpson.homer','Artem','food critic','Fri Sep 19 12:18:50 EDT 1941',2,'1111'),
('4','home@canada.home','Aleks','blog','Thu Jan 22 05:18:52 EST 1953',3,'1111'),
('5','hi@what.see','Josh','food critic','Fri Oct 01 22:16:57 EDT 1982',5,'aaaa'),
('6','home@canada.home','Alen','online','Thu Dec 04 08:23:02 EST 1986',5,'aaaa'),
('7','home@canada.home','Josh','food critic','Tue May 04 08:53:16 EDT 1943',5,'aaaa'),
('8','home@canada.home','Just Batman','blog','Sat May 31 23:00:42 EDT 1997',2,'bbbb'),
('9','fun@fun.fun','Steven','online','Sat Oct 12 11:10:37 EDT 1985',1,'1111'),
('10','fun@fun.fun','HisName','food critic','Tue Jan 20 16:31:09 EST 1953',3,'cccc'),
('11','home@canada.home','Robin','online','Fri Oct 25 09:59:53 EDT 2002',1,'1111'),
('12','fun@fun.fun','Barbara','online','Fri Jun 02 08:27:18 EDT 1978',3,'cccc'),
('13','fun@fun.fun','Baraque','online','Fri Jun 01 19:53:32 EDT 1984',4,'cccc'),
('14','home@canada.home','Vladimir','online','Tue Sep 20 06:41:51 EDT 1977',2,'1111'),
('15','hi@what.see','Donald','blog','Sat Nov 29 04:29:27 EST 2003',3,'aaaa'),
('16','fun@fun.fun','Vader','blog','Thu May 11 19:49:10 EDT 2000',1,'1111'),
('17','hi@what.see','C3PO','food critic','Thu Jul 30 13:36:39 EDT 1987',3,'aaaa')
;insert into ottawaspoon.restaurant(restaurantID,name,type,url) values(1,'King for the people','thai','www.form.com'),
(2,'Chopped head','ucranian','www.das.ca'),
(3,'Mug you','ucranian','www.das.ca'),
(4,'Not welcome','candian','www.form.com'),
(5,'Dead on the inside','ucranian','www.ed.fred'),
(6,'You Fool!','italian','www.ed.fred'),
(7,'Come come','italian','www.hat.co'),
(8,'I know what you did last summer','indian','www.ed.fred'),
(9,'You eat we see','ucranian','www.form.com'),
(10,'Hi how are you','candian','www.form.com'),
(11,'Strange soup','ucranian','www.ed.fred'),
(12,'Cooking on your head','indian','www.form.com')
;insert into ottawaspoon.rating (userId,date,price,food,mood,staff,comment,restaurantID) values
(2,'Wed Nov 01 06:28:01 EST 1961',1,5,2,4,'I like it',6),
(2,'Sat Feb 02 13:12:51 EST 2008',2,5,1,3,'It was bad',10),
(2,'Thu Mar 12 05:30:49 EST 1970',4,1,1,2,'How can you not love this place',9),
(2,'Sun Jun 08 11:30:13 EDT 1958',1,5,4,5,'I was never so happy',2),
(2,'Tue Sep 16 23:07:57 EDT 1952',1,2,3,5,'It was bad',8),
(2,'Sun Nov 18 04:11:28 EST 1956',4,5,2,5,'How can you not love this place',10),
(2,'Thu Apr 14 16:12:38 EDT 1988',5,3,1,2,'How can you not love this place',7),
(2,'Mon Aug 04 17:01:34 EDT 1975',2,1,4,2,'It was bad',8),
(2,'Thu Sep 27 11:15:00 EDT 1956',3,4,2,5,'I like it',9),
(2,'Wed Mar 15 14:02:30 EST 2006',5,4,2,4,'I was never so happy',5),
(3,'Fri Sep 19 06:26:36 EDT 1947',3,5,1,2,'I like it',12),
(3,'Thu Sep 05 10:05:36 EDT 1985',1,5,4,3,'How can you not love this place',8),
(3,'Sat Feb 12 06:14:41 EDT 1944',2,4,2,3,'I was never so happy',2),
(3,'Wed Feb 28 23:20:52 EDT 1945',4,2,1,1,'It was bad',7),
(3,'Mon Oct 19 15:31:56 EDT 1981',3,2,5,4,'I like it',11),
(3,'Wed Jul 27 06:02:44 EDT 1977',5,3,4,4,'I was never so happy',6),
(3,'Fri Jul 05 20:03:53 EDT 1957',2,5,2,2,'I was never so happy',11),
(3,'Tue Dec 29 03:47:35 EDT 1942',4,4,1,4,'How can you not love this place',4),
(3,'Sun Mar 30 09:06:35 EST 1980',4,1,5,4,'How can you not love this place',11),
(3,'Fri Mar 23 18:07:55 EST 1979',2,1,5,5,'I like it',11),
(4,'Sat Aug 30 15:05:57 EDT 1958',3,1,1,4,'I like it',10),
(4,'Tue Dec 19 18:27:03 EST 1972',2,1,3,1,'I like it',2),
(4,'Sun Sep 12 15:33:48 EDT 2004',3,2,1,5,'I like it',7),
(4,'Wed Oct 21 01:29:14 EDT 1970',1,2,3,4,'How can you not love this place',9),
(4,'Wed Nov 14 04:10:57 EST 1951',1,1,5,5,'I like it',4),
(4,'Sat May 26 23:03:24 EDT 2001',2,2,4,1,'It was bad',10),
(4,'Wed May 18 00:25:31 EDT 1949',3,2,5,2,'It was bad',4),
(4,'Tue Mar 25 20:55:19 EST 1986',5,1,2,2,'How can you not love this place',9),
(4,'Wed Oct 21 00:07:26 EDT 1981',1,3,4,1,'It was bad',1),
(4,'Mon Aug 30 07:01:54 EDT 1971',3,5,3,1,'How can you not love this place',7),
(5,'Fri Jul 21 13:35:24 EDT 1967',1,4,5,2,'I was never so happy',5),
(5,'Tue Jan 02 13:52:15 EST 1979',3,5,3,2,'I was never so happy',6),
(5,'Sat Apr 29 10:48:00 EST 1950',4,1,5,2,'I was never so happy',9),
(5,'Fri Aug 31 20:08:47 EDT 1990',1,1,2,2,'I like it',7),
(5,'Thu Dec 21 16:34:14 EST 1995',4,1,2,3,'It was bad',7),
(5,'Thu Oct 12 15:19:39 EDT 1995',5,3,1,2,'I like it',5),
(5,'Fri Oct 20 03:06:02 EDT 2006',1,5,5,3,'It was bad',8),
(5,'Thu Oct 13 02:43:02 EDT 2005',2,4,5,5,'I was never so happy',10),
(5,'Mon Jun 09 12:12:46 EDT 1941',1,3,2,4,'I was never so happy',3),
(5,'Mon Mar 25 17:17:07 EST 1946',1,5,4,2,'How can you not love this place',4),
(6,'Fri Mar 09 15:07:07 EDT 1945',2,1,4,2,'I like it',12),
(6,'Thu Jun 20 15:00:11 EDT 1991',4,4,3,3,'I was never so happy',5),
(6,'Wed May 28 13:28:10 EDT 1952',1,2,3,5,'It was bad',4),
(6,'Sat Mar 19 22:04:03 EST 1977',3,4,4,3,'How can you not love this place',4),
(6,'Sat Nov 23 10:51:05 EST 1968',2,2,5,2,'How can you not love this place',3),
(6,'Fri Jun 01 19:01:11 EDT 1951',2,1,4,4,'I like it',11),
(6,'Sat Jul 27 20:42:40 EDT 1963',4,4,1,1,'How can you not love this place',10),
(6,'Wed Sep 08 03:11:35 EDT 1954',5,5,2,1,'I like it',1),
(6,'Fri Oct 29 02:42:03 EST 1954',5,2,4,4,'I like it',10),
(6,'Sat Jan 27 20:18:09 EST 2007',3,1,3,3,'I like it',5),
(7,'Wed Aug 29 06:14:14 EDT 1951',5,2,5,5,'It was bad',6),
(7,'Tue Jun 08 14:29:21 EDT 1948',3,4,1,2,'It was bad',6),
(7,'Sat Jan 30 14:02:09 EST 1954',4,5,1,1,'It was bad',12),
(7,'Fri Jun 26 03:46:23 EDT 1959',4,4,2,4,'I like it',5),
(7,'Mon May 13 13:09:01 EDT 1968',5,5,1,2,'I like it',2),
(7,'Sun Aug 07 02:16:03 EDT 1988',5,3,4,4,'It was bad',1),
(7,'Fri May 23 12:18:32 EDT 1969',2,3,2,4,'It was bad',8),
(7,'Thu May 14 08:53:58 EDT 1970',2,2,1,4,'It was bad',1),
(7,'Thu Dec 05 16:17:53 EST 1991',3,5,4,4,'I was never so happy',11),
(7,'Thu Dec 28 21:38:52 EST 1961',1,2,4,4,'How can you not love this place',6),
(8,'Fri Oct 12 20:58:12 EDT 1956',2,5,4,3,'I was never so happy',3),
(8,'Fri Aug 11 08:00:35 EDT 2006',5,1,3,4,'How can you not love this place',7),
(8,'Fri Sep 10 12:15:09 EDT 1999',4,2,5,1,'How can you not love this place',8),
(8,'Mon Jul 09 11:45:56 EDT 1990',1,4,3,2,'I was never so happy',5),
(8,'Thu May 29 08:22:27 EDT 1952',3,4,2,3,'How can you not love this place',7),
(8,'Tue Apr 25 06:45:47 EST 1967',4,2,2,1,'It was bad',8),
(8,'Wed Jan 24 00:37:33 EST 1962',1,5,1,3,'How can you not love this place',2),
(8,'Fri Jun 16 07:27:53 EDT 1989',4,5,3,2,'It was bad',3),
(8,'Mon May 01 09:41:54 EDT 1989',2,1,3,1,'How can you not love this place',12),
(8,'Sat Jun 09 10:35:17 EDT 2001',3,4,3,5,'How can you not love this place',1),
(9,'Fri Jul 11 00:09:01 EDT 2008',5,3,2,4,'I was never so happy',7),
(9,'Fri Mar 20 18:40:05 EST 1987',5,4,4,5,'I like it',2),
(9,'Sun Jul 10 18:32:37 EDT 1988',3,5,1,4,'I was never so happy',3),
(9,'Sat May 18 04:26:24 EDT 1968',5,2,3,4,'How can you not love this place',8),
(9,'Fri Jul 20 02:41:35 EDT 1951',5,2,3,4,'It was bad',1),
(9,'Mon Jul 17 00:18:40 EDT 1978',1,4,1,1,'I like it',9),
(9,'Fri Dec 03 09:25:26 EST 1993',2,5,3,1,'How can you not love this place',4),
(9,'Sat Oct 15 03:52:54 EST 1949',4,4,1,4,'I like it',3),
(9,'Sun Jan 31 03:22:02 EST 1999',4,3,3,1,'I like it',1),
(9,'Sat Jun 16 21:57:52 EDT 2001',5,5,3,3,'How can you not love this place',7),
(10,'Sun Sep 08 08:28:36 EDT 1974',2,5,3,5,'It was bad',7),
(10,'Sat Sep 23 13:18:33 EDT 1972',1,4,2,1,'It was bad',8),
(10,'Thu May 26 19:38:05 EDT 1955',4,1,1,5,'I like it',8),
(10,'Sun Oct 26 07:02:15 EST 1947',1,2,2,2,'It was bad',6),
(10,'Mon May 15 10:01:37 EDT 2000',2,5,1,2,'I like it',6),
(10,'Tue Aug 16 14:09:04 EDT 1988',3,1,3,2,'I was never so happy',8),
(10,'Sat Dec 14 11:25:11 EST 1940',3,1,1,5,'How can you not love this place',9),
(10,'Sun Apr 22 21:15:54 EDT 1945',4,1,2,3,'I like it',11),
(10,'Mon Aug 10 04:38:56 EDT 1998',5,5,2,1,'I was never so happy',11),
(10,'Thu Oct 12 15:16:25 EDT 2000',2,2,2,4,'How can you not love this place',6),
(11,'Sun Sep 07 13:43:04 EDT 1941',4,1,2,4,'It was bad',10),
(11,'Fri Jan 22 19:07:08 EST 1999',3,4,3,5,'How can you not love this place',8),
(11,'Mon Dec 07 04:07:50 EST 1953',1,1,4,3,'How can you not love this place',10),
(11,'Sun Dec 16 23:35:25 EST 1979',5,4,5,5,'It was bad',6),
(11,'Mon Jun 29 18:52:27 EDT 1942',3,2,5,2,'I was never so happy',3),
(11,'Fri May 07 18:14:57 EDT 1965',4,4,3,2,'It was bad',5),
(11,'Fri May 29 10:07:50 EDT 1992',4,5,2,1,'I was never so happy',9),
(11,'Sun Mar 18 08:34:22 EDT 1945',3,1,5,1,'I like it',5),
(11,'Wed Jan 26 08:17:55 EST 1949',2,4,1,3,'It was bad',10),
(11,'Wed Jun 17 22:08:28 EDT 1942',4,1,5,2,'How can you not love this place',8),
(12,'Tue May 15 05:39:47 EDT 1951',1,4,4,4,'It was bad',7),
(12,'Fri Oct 03 05:45:06 EDT 1975',2,3,1,3,'How can you not love this place',5),
(12,'Mon Nov 07 15:20:41 EST 2005',4,5,3,5,'How can you not love this place',5),
(12,'Thu Sep 20 23:51:16 EDT 1962',1,2,5,4,'I like it',7),
(12,'Fri Jan 10 03:23:13 EST 1969',2,1,1,1,'It was bad',6),
(12,'Thu Sep 12 06:45:24 EDT 2002',4,4,2,2,'I was never so happy',11),
(12,'Sun Aug 24 19:26:04 EDT 2008',5,1,1,4,'I was never so happy',12),
(12,'Mon Aug 28 07:01:40 EDT 1961',3,1,5,2,'I was never so happy',1),
(12,'Thu Jul 02 07:19:46 EDT 1992',2,3,2,3,'I was never so happy',8),
(12,'Thu Mar 31 16:16:08 EST 2005',3,5,1,3,'I was never so happy',3),
(13,'Tue Feb 26 11:09:30 EST 2002',3,1,5,2,'How can you not love this place',6),
(13,'Sun Jan 27 15:12:54 EST 2008',2,1,5,5,'How can you not love this place',6),
(13,'Thu May 18 06:36:18 EDT 2000',4,2,2,2,'It was bad',11),
(13,'Sun Apr 12 04:06:35 EDT 1992',4,5,3,3,'How can you not love this place',6),
(13,'Sun Jul 27 23:50:27 EDT 2008',4,2,5,1,'It was bad',7),
(13,'Thu Feb 12 12:17:10 EST 2009',1,4,1,2,'How can you not love this place',11),
(13,'Sun Feb 19 15:05:15 EST 1978',4,5,2,4,'It was bad',1),
(13,'Fri Nov 28 13:15:09 EST 1986',2,4,5,3,'I was never so happy',2),
(13,'Thu Jan 13 19:59:53 EST 1949',2,2,2,3,'How can you not love this place',7),
(13,'Sat Jun 12 09:14:23 EDT 1965',1,3,5,4,'How can you not love this place',11),
(3,'Thu Mar 26 16:13:10 EST 1987',4,4,4,4,'How can you not love this place',3),
(3,'Mon Jan 19 00:00:00 EST 2015',4,3,2,2,'How can you not love this place',3),
(3,'Fri Jan 19 00:00:00 EST 2018',1,5,1,3,'How can you not love this place',3),
(3,'Fri Feb 19 00:00:00 EST 2016',2,1,1,1,'It was bad',3),
(14,'Mon Dec 20 10:25:11 EST 1965',5,5,1,2,'It was bad',3),
(14,'Sun Aug 27 10:27:50 EDT 1972',4,5,3,2,'I was never so happy',3)
;insert into ottawaspoon.location(locationId,open_Date,manager,phone,address,hours_open,hours_close,restaurantID) values(1,'Wed Jun 24 05:18:56 EDT 1998','Robin','24981730','34 Johnson',5,24,11),
(2,'Tue Oct 01 04:05:53 EDT 2002','Donald','613whattoDO','12 Eldgin',2,23,5),
(3,'Fri May 16 07:45:35 EDT 1952','Aleks','3431249817','12 Hopekin',3,24,9),
(4,'Tue Dec 18 17:00:57 EST 1973','Vladimir','342329387432222hi','33 Bronson',8,16,3),
(5,'Wed Sep 01 03:48:56 EDT 1999','John','3431249817','33 Bronson',1,15,4),
(6,'Tue Dec 22 12:51:20 EST 1953','Parami','24981730','33 Bronson',2,21,3),
(7,'Thu Oct 06 03:08:51 EDT 1983','Aleks','613whattoDO','12 Eldgin',8,18,3),
(8,'Mon Apr 07 21:39:13 EDT 1997','Vladimir','613whattoDO','12 Eldgin',1,22,2),
(9,'Sat Feb 07 18:56:02 EST 1942','Steven','342329387432222hi','34 Johnson',9,18,12),
(10,'Tue Dec 28 03:06:26 EST 1965','Artem','342329387432222hi','12 Hopekin',7,24,6),
(11,'Sun Dec 10 23:31:41 EST 1961','Parami','24981730','12 Eldgin',6,23,1),
(12,'Tue Feb 29 23:43:50 EST 1972','Alen','342329387432222hi','12 Hopekin',6,17,10)
;insert into ottawaspoon.MenuItem(itemID,name,type,category,description,price,restaurantID) values
(1,'fish','food','main','Try to eat me',59,1),
(2,'ice on ice','food','starter','You are dead',83,1),
(3,'rice','beverage','desert','You are dead',37,1),
(4,'meat','beverage','desert','Drink and you die',81,1),
(5,'meat','food','starter','Drink and you die',52,1),
(6,'meat','food','starter','Try to eat me',21,1),
(7,'bear with beer','beverage','starter','Drink and you die',16,1),
(8,'bear with beer','beverage','desert','Drink and you die',68,1),
(9,'pear','food','main','You can eat me',29,1),
(10,'fish','food','main','Try to eat me',51,1),
(11,'pear','beverage','starter','Drink and you die',13,2),
(12,'ice on ice','beverage','main','Try to eat me',23,2),
(13,'fish','food','starter','Drink and you die',96,2),
(14,'meat','beverage','starter','You are dead',30,2),
(15,'pear','food','desert','Try to eat me',13,2),
(16,'meat','food','desert','Drink and you die',76,2),
(17,'meat','food','main','You can eat me',65,2),
(18,'pear','beverage','starter','You are dead',83,2),
(19,'bear with beer','food','starter','You can eat me',7,2),
(20,'bear with beer','beverage','main','You can eat me',72,2),
(21,'fish','beverage','desert','Try to eat me',60,3),
(22,'fish','food','desert','Drink and you die',89,3),
(23,'ice on ice','food','main','You can eat me',17,3),
(24,'fish','beverage','starter','You are dead',70,3),
(25,'rice','beverage','starter','You can eat me',66,3),
(26,'bear with beer','food','starter','You can eat me',68,3),
(27,'pear','beverage','starter','Try to eat me',42,3),
(28,'meat','beverage','main','Try to eat me',74,3),
(29,'ice on ice','food','desert','You are dead',55,3),
(30,'meat','beverage','main','Try to eat me',39,3),
(31,'fish','beverage','desert','You can eat me',75,4),
(32,'meat','beverage','main','Drink and you die',61,4),
(33,'meat','beverage','starter','Drink and you die',39,4),
(34,'fish','food','main','You are dead',22,4),
(35,'rice','food','main','You are dead',43,4),
(36,'bear with beer','beverage','main','Drink and you die',99,4),
(37,'rice','food','desert','Drink and you die',17,4),
(38,'bear with beer','beverage','desert','You are dead',13,4),
(39,'ice on ice','food','starter','You can eat me',91,4),
(40,'meat','food','desert','You can eat me',53,4),
(41,'pear','beverage','starter','You are dead',13,5),
(42,'bear with beer','beverage','desert','Drink and you die',23,5),
(43,'meat','food','main','Try to eat me',43,5),
(44,'ice on ice','food','starter','You can eat me',56,5),
(45,'meat','food','main','Try to eat me',20,5),
(46,'meat','food','main','You can eat me',27,5),
(47,'rice','beverage','desert','You can eat me',19,5),
(48,'ice on ice','beverage','desert','Try to eat me',82,5),
(49,'meat','beverage','main','You are dead',65,5),
(50,'fish','beverage','main','You can eat me',92,5),
(51,'fish','food','starter','You can eat me',31,6),
(52,'bear with beer','beverage','desert','Drink and you die',43,6),
(53,'ice on ice','food','starter','Drink and you die',76,6),
(54,'pear','food','desert','You are dead',29,6),
(55,'bear with beer','food','main','You are dead',61,6),
(56,'rice','food','starter','Drink and you die',3,6),
(57,'ice on ice','food','main','Drink and you die',39,6),
(58,'ice on ice','beverage','desert','You can eat me',1,6),
(59,'rice','food','starter','You can eat me',50,6),
(60,'ice on ice','beverage','main','You are dead',26,6),
(61,'bear with beer','beverage','desert','You can eat me',4,7),
(62,'fish','beverage','desert','Drink and you die',78,7),
(63,'ice on ice','food','desert','Drink and you die',39,7),
(64,'ice on ice','food','desert','You can eat me',91,7),
(65,'rice','food','main','Try to eat me',47,7),
(66,'meat','beverage','desert','Try to eat me',92,7),
(67,'meat','beverage','desert','You are dead',100,7),
(68,'pear','beverage','desert','You are dead',68,7),
(69,'bear with beer','beverage','starter','You can eat me',35,7),
(70,'fish','beverage','starter','Drink and you die',62,7),
(71,'bear with beer','food','starter','Try to eat me',66,8),
(72,'rice','beverage','main','Drink and you die',53,8),
(73,'ice on ice','food','starter','Drink and you die',65,8),
(74,'meat','food','main','Drink and you die',54,8),
(75,'bear with beer','beverage','desert','You can eat me',44,8),
(76,'pear','food','desert','Drink and you die',68,8),
(77,'fish','food','desert','Try to eat me',2,8),
(78,'meat','food','main','Try to eat me',31,8),
(79,'rice','food','desert','You are dead',72,8),
(80,'fish','beverage','desert','You are dead',43,8),
(81,'pear','food','starter','Drink and you die',97,9),
(82,'pear','beverage','starter','You are dead',28,9),
(83,'rice','food','desert','You are dead',86,9),
(84,'bear with beer','food','starter','Drink and you die',68,9),
(85,'bear with beer','beverage','starter','You can eat me',70,9),
(86,'ice on ice','food','desert','You can eat me',10,9),
(87,'pear','food','main','You are dead',39,9),
(88,'meat','food','desert','You can eat me',93,9),
(89,'pear','food','desert','Drink and you die',46,9),
(90,'bear with beer','beverage','starter','Try to eat me',78,9),
(91,'meat','food','main','You can eat me',26,10),
(92,'rice','food','main','Drink and you die',40,10),
(93,'fish','beverage','desert','Drink and you die',80,10),
(94,'pear','beverage','main','Drink and you die',73,10),
(95,'ice on ice','beverage','main','Drink and you die',46,10),
(96,'ice on ice','food','desert','Try to eat me',87,10),
(97,'ice on ice','food','desert','You are dead',51,10),
(98,'pear','beverage','main','Drink and you die',69,10),
(99,'rice','beverage','desert','You can eat me',46,10),
(100,'ice on ice','food','desert','You can eat me',78,10),
(101,'bear with beer','food','starter','You can eat me',19,11),
(102,'bear with beer','beverage','starter','You can eat me',25,11),
(103,'pear','beverage','main','Try to eat me',93,11),
(104,'pear','beverage','desert','You can eat me',74,11),
(105,'meat','food','starter','You are dead',86,11),
(106,'ice on ice','food','starter','You can eat me',28,11),
(107,'bear with beer','food','main','Try to eat me',41,11),
(108,'pear','food','starter','You can eat me',28,11),
(109,'fish','food','starter','You are dead',27,11),
(110,'rice','food','main','You can eat me',47,11),
(111,'fish','food','main','Try to eat me',86,12),
(112,'meat','beverage','starter','You are dead',41,12),
(113,'bear with beer','beverage','main','You can eat me',74,12),
(114,'rice','food','main','You can eat me',64,12),
(115,'pear','food','starter','Try to eat me',5,12),
(116,'meat','beverage','main','You can eat me',94,12),
(117,'bear with beer','beverage','starter','Try to eat me',55,12),
(118,'bear with beer','beverage','starter','You can eat me',81,12),
(119,'fish','beverage','main','You can eat me',56,12),
(120,'meat','food','main','Drink and you die',64,12);

insert into ottawaspoon.ratingItem(userId,date,itemID,itemRating,comment) values
(2,'Wed Nov 01 06:28:01 EST 1961',69,1,'Tried and died'),
(2,'Sat Feb 02 13:12:51 EST 2008',104,5,'Hope could eat again'),
(2,'Thu Mar 12 05:30:49 EST 1970',14,1,'Seen people die trying'),
(2,'Sun Jun 08 11:30:13 EDT 1958',16,2,'Tried and died'),
(2,'Tue Sep 16 23:07:57 EDT 1952',13,2,'Seen people die trying'),
(2,'Sun Nov 18 04:11:28 EST 1956',83,4,'Tried and died'),
(2,'Thu Apr 14 16:12:38 EDT 1988',57,4,'Hope could eat again'),
(2,'Mon Aug 04 17:01:34 EDT 1975',96,4,'Hope could eat again'),
(2,'Thu Sep 27 11:15:00 EDT 1956',111,3,'Seen people die trying'),
(2,'Wed Mar 15 14:02:30 EST 2006',8,4,'Love it'),
(3,'Fri Sep 19 06:26:36 EDT 1947',81,4,'Tried and died'),
(3,'Thu Sep 05 10:05:36 EDT 1985',119,5,'Hope could eat again'),
(3,'Sat Feb 12 06:14:41 EDT 1944',39,2,'Seen people die trying'),
(3,'Wed Feb 28 23:20:52 EDT 1945',96,5,'Seen people die trying'),
(3,'Mon Oct 19 15:31:56 EDT 1981',112,1,'Love it'),
(3,'Wed Jul 27 06:02:44 EDT 1977',85,3,'Hope could eat again'),
(3,'Fri Jul 05 20:03:53 EDT 1957',110,5,'Love it'),
(3,'Tue Dec 29 03:47:35 EDT 1942',59,5,'Tried and died'),
(3,'Sun Mar 30 09:06:35 EST 1980',86,3,'Hope could eat again'),
(3,'Fri Mar 23 18:07:55 EST 1979',23,2,'Seen people die trying'),
(4,'Sat Aug 30 15:05:57 EDT 1958',116,2,'Tried and died'),
(4,'Tue Dec 19 18:27:03 EST 1972',97,1,'Tried and died'),
(4,'Sun Sep 12 15:33:48 EDT 2004',4,1,'Seen people die trying'),
(4,'Wed Oct 21 01:29:14 EDT 1970',44,2,'Tried and died'),
(4,'Wed Nov 14 04:10:57 EST 1951',20,4,'Tried and died'),
(4,'Sat May 26 23:03:24 EDT 2001',36,5,'Hope could eat again'),
(4,'Wed May 18 00:25:31 EDT 1949',83,3,'Tried and died'),
(4,'Tue Mar 25 20:55:19 EST 1986',42,3,'Love it'),
(4,'Wed Oct 21 00:07:26 EDT 1981',116,2,'Love it'),
(4,'Mon Aug 30 07:01:54 EDT 1971',74,2,'Hope could eat again'),
(5,'Fri Jul 21 13:35:24 EDT 1967',99,3,'Tried and died'),
(5,'Tue Jan 02 13:52:15 EST 1979',62,2,'Hope could eat again'),
(5,'Sat Apr 29 10:48:00 EST 1950',114,3,'Tried and died'),
(5,'Fri Aug 31 20:08:47 EDT 1990',35,2,'Love it'),
(5,'Thu Dec 21 16:34:14 EST 1995',101,2,'Seen people die trying'),
(5,'Thu Oct 12 15:19:39 EDT 1995',58,1,'Love it'),
(5,'Fri Oct 20 03:06:02 EDT 2006',98,3,'Tried and died'),
(5,'Thu Oct 13 02:43:02 EDT 2005',58,5,'Seen people die trying'),
(5,'Mon Jun 09 12:12:46 EDT 1941',23,2,'Love it'),
(5,'Mon Mar 25 17:17:07 EST 1946',111,5,'Love it'),
(6,'Fri Mar 09 15:07:07 EDT 1945',19,3,'Hope could eat again'),
(6,'Thu Jun 20 15:00:11 EDT 1991',100,2,'Love it'),
(6,'Wed May 28 13:28:10 EDT 1952',102,2,'Seen people die trying'),
(6,'Sat Mar 19 22:04:03 EST 1977',25,3,'Seen people die trying'),
(6,'Sat Nov 23 10:51:05 EST 1968',2,3,'Love it'),
(6,'Fri Jun 01 19:01:11 EDT 1951',90,3,'Hope could eat again'),
(6,'Sat Jul 27 20:42:40 EDT 1963',66,3,'Seen people die trying'),
(6,'Wed Sep 08 03:11:35 EDT 1954',24,5,'Seen people die trying'),
(6,'Fri Oct 29 02:42:03 EST 1954',49,1,'Seen people die trying'),
(6,'Sat Jan 27 20:18:09 EST 2007',120,3,'Love it'),
(7,'Wed Aug 29 06:14:14 EDT 1951',50,3,'Hope could eat again'),
(7,'Tue Jun 08 14:29:21 EDT 1948',49,4,'Hope could eat again'),
(7,'Sat Jan 30 14:02:09 EST 1954',91,5,'Tried and died'),
(7,'Fri Jun 26 03:46:23 EDT 1959',99,2,'Love it'),
(7,'Mon May 13 13:09:01 EDT 1968',57,1,'Hope could eat again'),
(7,'Sun Aug 07 02:16:03 EDT 1988',120,1,'Love it'),
(7,'Fri May 23 12:18:32 EDT 1969',113,1,'Tried and died'),
(7,'Thu May 14 08:53:58 EDT 1970',109,1,'Hope could eat again'),
(7,'Thu Dec 05 16:17:53 EST 1991',105,5,'Love it'),
(7,'Thu Dec 28 21:38:52 EST 1961',58,3,'Love it'),
(8,'Fri Oct 12 20:58:12 EDT 1956',59,3,'Seen people die trying'),
(8,'Fri Aug 11 08:00:35 EDT 2006',28,4,'Love it'),
(8,'Fri Sep 10 12:15:09 EDT 1999',115,2,'Seen people die trying'),
(8,'Mon Jul 09 11:45:56 EDT 1990',36,5,'Tried and died'),
(8,'Thu May 29 08:22:27 EDT 1952',95,5,'Love it'),
(8,'Tue Apr 25 06:45:47 EST 1967',105,1,'Seen people die trying'),
(8,'Wed Jan 24 00:37:33 EST 1962',58,5,'Tried and died'),
(8,'Fri Jun 16 07:27:53 EDT 1989',115,5,'Hope could eat again'),
(8,'Mon May 01 09:41:54 EDT 1989',120,2,'Love it'),
(8,'Sat Jun 09 10:35:17 EDT 2001',76,1,'Hope could eat again'),
(9,'Fri Jul 11 00:09:01 EDT 2008',83,4,'Tried and died'),
(9,'Fri Mar 20 18:40:05 EST 1987',104,4,'Hope could eat again'),
(9,'Sun Jul 10 18:32:37 EDT 1988',95,5,'Love it'),
(9,'Sat May 18 04:26:24 EDT 1968',24,2,'Seen people die trying'),
(9,'Fri Jul 20 02:41:35 EDT 1951',41,2,'Love it'),
(9,'Mon Jul 17 00:18:40 EDT 1978',16,1,'Love it'),
(9,'Fri Dec 03 09:25:26 EST 1993',34,1,'Seen people die trying'),
(9,'Sat Oct 15 03:52:54 EST 1949',5,3,'Hope could eat again'),
(9,'Sun Jan 31 03:22:02 EST 1999',63,1,'Tried and died'),
(9,'Sat Jun 16 21:57:52 EDT 2001',111,1,'Tried and died'),
(10,'Sun Sep 08 08:28:36 EDT 1974',11,4,'Seen people die trying'),
(10,'Sat Sep 23 13:18:33 EDT 1972',52,4,'Love it'),
(10,'Thu May 26 19:38:05 EDT 1955',68,2,'Seen people die trying'),
(10,'Sun Oct 26 07:02:15 EST 1947',86,3,'Hope could eat again'),
(10,'Mon May 15 10:01:37 EDT 2000',62,2,'Seen people die trying'),
(10,'Tue Aug 16 14:09:04 EDT 1988',23,5,'Seen people die trying'),
(10,'Sat Dec 14 11:25:11 EST 1940',78,3,'Love it'),
(10,'Sun Apr 22 21:15:54 EDT 1945',48,5,'Hope could eat again'),
(10,'Mon Aug 10 04:38:56 EDT 1998',32,4,'Love it'),
(10,'Thu Oct 12 15:16:25 EDT 2000',15,2,'Hope could eat again'),
(11,'Sun Sep 07 13:43:04 EDT 1941',41,5,'Love it'),
(11,'Fri Jan 22 19:07:08 EST 1999',57,5,'Seen people die trying'),
(11,'Mon Dec 07 04:07:50 EST 1953',91,2,'Tried and died'),
(11,'Sun Dec 16 23:35:25 EST 1979',21,5,'Love it'),
(11,'Mon Jun 29 18:52:27 EDT 1942',103,1,'Love it'),
(11,'Fri May 07 18:14:57 EDT 1965',56,1,'Tried and died'),
(11,'Fri May 29 10:07:50 EDT 1992',1,3,'Seen people die trying'),
(11,'Sun Mar 18 08:34:22 EDT 1945',84,1,'Tried and died'),
(11,'Wed Jan 26 08:17:55 EST 1949',74,5,'Love it'),
(11,'Wed Jun 17 22:08:28 EDT 1942',57,3,'Love it'),
(12,'Tue May 15 05:39:47 EDT 1951',40,2,'Seen people die trying'),
(12,'Fri Oct 03 05:45:06 EDT 1975',35,5,'Hope could eat again'),
(12,'Mon Nov 07 15:20:41 EST 2005',50,1,'Seen people die trying'),
(12,'Thu Sep 20 23:51:16 EDT 1962',100,5,'Love it'),
(12,'Fri Jan 10 03:23:13 EST 1969',105,1,'Tried and died'),
(12,'Thu Sep 12 06:45:24 EDT 2002',90,1,'Tried and died'),
(12,'Sun Aug 24 19:26:04 EDT 2008',45,2,'Love it'),
(12,'Mon Aug 28 07:01:40 EDT 1961',5,1,'Tried and died'),
(12,'Thu Jul 02 07:19:46 EDT 1992',15,4,'Tried and died'),
(12,'Thu Mar 31 16:16:08 EST 2005',30,1,'Love it'),
(13,'Tue Feb 26 11:09:30 EST 2002',45,2,'Seen people die trying'),
(13,'Sun Jan 27 15:12:54 EST 2008',48,4,'Tried and died'),
(13,'Thu May 18 06:36:18 EDT 2000',46,1,'Hope could eat again'),
(13,'Sun Apr 12 04:06:35 EDT 1992',40,3,'Tried and died'),
(13,'Sun Jul 27 23:50:27 EDT 2008',53,5,'Hope could eat again'),
(13,'Thu Feb 12 12:17:10 EST 2009',12,2,'Tried and died'),
(13,'Sun Feb 19 15:05:15 EST 1978',85,1,'Tried and died'),
(13,'Fri Nov 28 13:15:09 EST 1986',72,4,'Tried and died'),
(13,'Thu Jan 13 19:59:53 EST 1949',65,3,'Tried and died'),
(13,'Sat Jun 12 09:14:23 EDT 1965',110,3,'Love it'),
(3,'Thu Mar 26 16:13:10 EST 1987',64,3,'Tried and died'),
(3,'Mon Jan 19 00:00:00 EST 2015',3,1,'Seen people die trying'),
(3,'Fri Jan 19 00:00:00 EST 2018',38,3,'Love it'),
(3,'Fri Feb 19 00:00:00 EST 2016',81,1,'Hope could eat again'),
(14,'Mon Dec 20 10:25:11 EST 1965',47,5,'Tried and died'),
(14,'Sun Aug 27 10:27:50 EDT 1972',97,4,'Seen people die trying');