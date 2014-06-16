USE default;



# Dumping structure for table plans.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `signup_date` int(10) DEFAULT NULL,
  `language` tinytext,
  `status` tinyint(4) DEFAULT NULL,
  `last_activity` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB;

CREATE TABLE `baselinechatlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  FOREIGN KEY (userid) REFERENCES users(id),
  `username` varchar(50) DEFAULT NULL,
  `text` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


INSERT INTO `users` (`id`, `username`, `email`, `password`, `signup_date`, `language`, `status`, `last_activity`) VALUES
	(0, '1111', '1@1.aa', '356a192b7913b04c54574d18c28d46e6395428ab', 1370515540, NULL, 0, 1383227563),
	(3, '2', '1@1.rt', '356a192b7913b04c54574d18c28d46e6395428ab', 1370524742, NULL, 0, 1378997561),
	(4, '3', '1@i.ia', '356a192b7913b04c54574d18c28d46e6395428ab', 1370526895, NULL, 0, NULL),
	(6, '4', '1@1.ia', '356a192b7913b04c54574d18c28d46e6395428ab', 1370528465, NULL, 0, 1376076571),
	(7, '5', '5@i.ua', 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 1370938538, NULL, 0, 1383228081),
	(8, '6', '6@6.ua', 'c1dfd96eea8cc2b62785275bca38ac261256e278', 1370942125, NULL, NULL, NULL),
	(9, '7', '7@1.ua', '902ba3cda1883801594b6e1b452790cc53948fda', 1371136726, NULL, NULL, NULL),
	(10, '8', '8@1.ua', 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f', 1371218679, NULL, NULL, NULL),
	(11, '9', '9@i.ua', '0ade7c2cf97f75d009975f4d720d1fa6c19f4897', 1371218750, NULL, 0, 1383227770),
	(12, '10', '10@i.ua', 'b1d5781111d84f7b3fe45a0852e59758cd7a87e5', 1371237091, NULL, NULL, NULL),
	(13, '11', '1@i.ua', '17ba0791499db908433b80f37c5fbc89b870084b', 1371540367, NULL, NULL, NULL),
	(14, 'z', '1@1.ca', '356a192b7913b04c54574d18c28d46e6395428ab', 1375698138, NULL, NULL, NULL),
	(15, 'zz', 'zz@a.zz', 'd7dacae2c968388960bf8970080a980ed5c5dcb7', 1375698573, NULL, NULL, NULL),
	(16, 'zzz', 'z@z.zz', '395df8f7c51f007019cb30201c49e884b46b92fa', 1375699063, NULL, NULL, NULL),
	(17, 'www', 'w@w.ww', 'c50267b906a652f2142cfab006e215c9f6fdc8a0', 1375699326, NULL, NULL, NULL),
	(18, 'yyy', 'y@y.ww', 'c50267b906a652f2142cfab006e215c9f6fdc8a0', 1375699437, NULL, NULL, NULL),
	(19, 'ttt', 't@t.tt', '8c1017982b2032cc059203e3d83dd0ee2e7a86b3', 1375699722, NULL, NULL, NULL),
	(20, 'rrr', 'r@r.rr', '8578173555a47d4ea49e697badfda270dee0858f', 1375699845, NULL, NULL, NULL),
	(21, 'ee', 'e@r.rr', '8578173555a47d4ea49e697badfda270dee0858f', 1375699938, NULL, NULL, NULL),
	(22, 'eee', 'e@e.rr', '8578173555a47d4ea49e697badfda270dee0858f', 1375700047, NULL, NULL, NULL),
	(23, 'bbb', 'b@b.bb', '5cb138284d431abd6a053a56625ec088bfb88912', 1375700191, NULL, NULL, NULL),
	(24, 'vvvv', 'v@n.vv', '4cf997735475afd79f8711e22efaa9d306294785', 1375700236, NULL, NULL, NULL),
	(25, 'qq', 'q@q.qq', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938', 1375700339, NULL, NULL, NULL),
	(26, 'y', 'y@y.yy', '95cb0bfd2977c761298d9624e4b4d4c72a39974a', 1375949144, NULL, 0, 1375950746),
	(27, 'x', 'x@x.xx', '11f6ad8ec52a2984abaafd7c3b516503785c2072', 1375949315, NULL, 0, 1375949320),
	(28, 'a', 'a@a.aa', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 1379407082, NULL, 0, 1379407275),
	(29, 'b', 'b@b.ia', 'e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98', 1379407301, NULL, 1, 1381932039),
	(30, 'test', 't@i.ua', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 1379590892, NULL, 0, 1379590918);


INSERT INTO `baselinechatlines` (`id`, `userid`, `username`, `text`, `time`) VALUES
	(25, 222, 'asdfasdf', 'asdfasdfasdf  asdfasdzvxcvzxcvzx', 22);
