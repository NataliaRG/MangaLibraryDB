--I manually created this DB doing the 'Curso de SQL y MySQL' from Platzi. I copied the clients information to do the querys.
--This is a very small extraction of a database based on myAnimeList: https://myanimelist.net/

--DROP DATABASE IF EXISTS manga_library;

--CREATE DATABASE manga_library;
--USE manga_library;

--ALTER DATABASE manga_library CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE authors(
    author_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    nationality CHAR(3) DEFAULT NULL COMMENT 'ISO 3166-1 alfa-3 Language code',
    gender ENUM('M', 'F', 'ND') DEFAULT NULL,
 PRIMARY KEY(author_id),
 UNIQUE(name)   
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

INSERT INTO authors VALUES (1,'Miura, Kentarou','JPN', 'M'),
(2,'Kubo, Tite','JPN', 'M'), (3,'Sasuga, Kei ', 'JPN', 'F'), (4,'Toriyama, Akira', 'JPN', 'M'), (5,'Mashima, Hiro', 'JPN', 'M'),
(6,'Araki, Hirohiko', 'JPN', 'M'), (7,'Yamazaki, Kore', 'JPN', 'F'), (8,'Amazume, Ryuta', 'JPN', 'M'), (9,'Oda, Eiichiro', 'JPN', 'M'),
(10,'Watsuki, Nobuhiro', 'JPN', 'M'), (11,'Hakuri', NULL, NULL), (12,'Isayama, Hajime', 'JPN', 'M'), (13,'Ishida, Sui', 'JPN', NULL),
(14,'Chiba, Kozue', 'JPN', NULL), (15,'Matsuki, Tatsuya', NULL, 'M'), (16,'Usazaki, Shiro', NULL, 'F'), (17,'Yukimaru, Moe', 'JPN', NULL),
(18,'Anashin', 'JPN', 'F'), (19,'Obata, Takeshi', 'JPN', 'M'), (20,'Sakurazaka, Hiroshi', 'JPN', 'M'), (21,'Takeuchi, Ryousuke', 'JPN', 'M'),
(22,'Izumi, Mitsu', 'JPN', 'F'), (23,'Sakisaka, Io', 'JPN', 'F'), (24,'Itagaki, Paru', 'JPN', 'ND'), (25,'Motomi, Kyousuke', 'JPN', 'F'), 
(26,'Yagi, Norihiro', 'JPN', 'M'), (27,'Mitsui, Haruka', NULL, 'F'), (28,'Takaya, Natsuki', 'JPN', 'F'), (29,'Ito, Junji', 'JPN', 'M'),
(30,'Suzuki, Julietta', 'JPN', 'F'), (31,'Umezawa, Marina', 'JPN', 'F'), (32,'Iwaaki, Hitoshi', 'JPN', 'M'), (33,'Ooima, Yoshitoki', 'JPN', 'F'),
(34,'Iwashita, Keiko', 'JPN', NULL), (35,'Yokoyari, Mengo', 'JPN', NULL), (36,'Akatsuki, Kaori ', NULL, NULL), (37,'Kisaragi, Hiiro', NULL, NULL),
(38,'Takano, Ichigo', 'JPN', NULL), (39,'Asano, Inio', 'JPN', 'M'), (40,'Yazawa, Ai', 'JPN', 'F'), (41,'Takahashi, Rumiko', 'JPN', 'F'),
(42,'Ishihara, Keiko', NULL, 'F'), (43,'Meguro, Amu', 'JPN', NULL), (44,'Katsumoto, Kasane', 'JPN', 'F'), (45,'Tatsuta, Kazuto', 'JPN', 'M'),
(46,'Urasawa, Naoki', 'JPN', 'M'), (47,'Akizuki, Sorata', 'JPN', 'F'), (48,'Tashiro, Tetsuya', 'JPN', 'M'), (49,'Takahiro', 'JPN', 'M'), (50,'Kusanagi, Mizuho', 'JPN', 'F');

INSERT INTO authors VALUES (51,'Otomo, Katsuhiro', 'JPN', 'M'),
(52,'Oshimi, Shuuzou', 'JPN', 'M'), (53,'Toumori, Miyoshi', 'JPN', 'F'), (54,'Kiyohara, Hiro', 'JPN', NULL), (55,'Ayatsuji, Yukito', 'JPN', 'M'), (56,'Matsui, Yuusei', 'JPN', 'M'),
(57,'Fujiwara, Kiyo', 'JPN', 'F'), (58,'Kajiyama, Mika', 'JPN', 'F'), (59,'Hashimoto, Kanari', NULL, 'F'), (60,'Ohba, Tsugumi', 'JPN', 'M'), (61,'Kakizaki, Masasumi', 'JPN', 'M'),
(62,'Nihei, Tsutomu', 'JPN', 'M'), (63,'Samura, Hiroaki', 'JPN', 'M'), (64,'Kodama, Yuuki', 'JPN', 'F'), (65,'Sanbe, Kei', 'JPN', NULL), (66,'Horikoshi, Kouhei', 'JPN', 'M'),
(67,'Obata, Yuuki', 'JPN', 'F'), (68,'Yukihiro, Utako', NULL, 'F'), (69,'Udajo', 'JPN', NULL), (70,'Inoue, Junya', 'JPN', 'M'), (71,'Kanzaki, Karuna', NULL, NULL),
(72,'Kurokami, Yuuya', NULL, NULL), (73,'CLAMP', 'JPN', 'F'), (74,'Taniguchi, Gorou', 'JPN', 'M'), (75,'Okouchi, Ichiro', 'JPN', 'M'), (76,'Majiko!', NULL, NULL),
(77,'Kamijyo, Akimine', 'JPN', 'F'), (78,'Akegami, Takara', 'JPN', 'F'), (79,'Hoshino, Katsura', 'JPN', 'F'), (80,'Kondou, Kazuma', 'JPN', 'M'), (81,'Kataoka, Jinsei', 'JPN', 'F'),
(82,'Iwahara, Yuji', 'JPN', 'M'), (83,'Tezuka, Osamu', 'JPN', 'M'), (84,'Shiki, Satoshi', 'JPN', 'M'), (85,'Tonogai, Yoshiki', 'JPN', 'M'), (86,'Kui, Ryoko', 'JPN', 'F'),
(87,'Okamoto, Lynn', 'JPN', 'M'), (88,'Inagaki, Riichiro', 'JPN', 'M'), (89,'Murata, Yusuke', 'JPN', 'M'), (90,'Nishiwaki, Datto', NULL, NULL), (91,'Nasu, Kinoko', 'JPN', 'M'), 
(92,'Arakawa, Hiromu', 'JPN', 'F'), (93,'Nishikata, Mai', 'JPN', 'F'), (94,'Oku, Hiroya', 'JPN', 'M'), (95,'Noda, Satoru', 'JPN', 'M'), (96,'Takemiya, Yuyuko', 'JPN', 'F'),
(97,'Umechazuke', NULL, NULL), (98,'Fujisawa, Tohru', 'JPN', 'M'), (99,'Furudate, Haruichi', 'JPN', 'M'), (100,'Ninomiya, Sachi', NULL, NULL);

INSERT INTO authors VALUES (101,'Shimizu, Akane', 'JPN', NULL), 
(102,'Hirano, Kouta', 'JPN', 'M'), (103,'Kosumi, Fujiko', 'JPN', 'F'), (104,'Hagiwara, Daisuke', 'JPN', 'F'), (105,'HERO', 'JPN', 'F'), 
(106,'Murakami, Takashi', 'JPN', 'M'), (107,'Hanazawa, Kengo', 'JPN', 'M'), (108,'Mase, Motoro', 'JPN', 'M'), (109,'Hazuki, Matcha', NULL, 'F'),
(110,'Taguchi, Shouichi', 'JPN', 'M'), (111,'Miaki, Sugaru', NULL, NULL), (112,'NISIO, ISIN', 'JPN', 'M'), (113,'Akatsuki, Akira', 'JPN', 'M'), (114,'Akasaka, Aka', 'JPN', 'M'),
(115,'Fujiwara, Hiro', 'JPN', 'M'), (116,'Kon, Satoshi', 'JPN', 'M'), (117,'Sumida, Moto', NULL, NULL), (118,'Ozaki, Kaori', 'JPN', 'F'), (119,'Yamada, Shiro', 'JPN', 'F'),
(120,'Amano, Akira', 'JPN', 'F'), (121,'Shimada, Chie', 'JPN', 'F'), (122,'Kabei, Yukako', 'JPN', 'F'), (123,'Taue, Shunsuke', NULL, NULL), (124,'Gotouge, Koyoharu', 'JPN', 'ND'),
(125,'Hatsuharu', NULL, NULL), (126,'Shiina, Karuho', 'JPN', 'F'), (127,'Seo, Kouji', 'JPN', 'M'), (128,'Shinkai, Makoto', 'JPN', 'M'), (129,'Kotone, Ranmaru', 'JPN', 'F'),
(130,'Amano, Shiro', 'JPN', 'M'), (131,'Nomura, Tetsuya', 'JPN', 'M'), (132,'Tsumugi, Musawo', 'JPN', 'F'), (133,'Toboso, Yana', 'JPN', 'F'), (134,'Kaitani, Shinobu', 'JPN', 'M'),
(135,'Touno, Mamare', 'JPN', 'M'), (136,'Hara, Kazuhiro', 'JPN', 'M'), (137,'Tsukushi, Akihito', 'JPN', 'M'), (138,'Ohtaka, Shinobu', 'JPN', 'F'), (139,'Mio, Junta', 'JPN', 'F'),
(140,'Magica Quartet', NULL, NULL), (141,'Hanokage', NULL, NULL), (142,'Katsushika, Hokusei', 'JPN', 'M'), (143,'Esuno, Sakae', 'JPN', 'M'), (144,'Urushibara, Yuki', 'JPN', 'F'),
(145,'Miyuki, Mitsubachi', 'JPN', 'F'), (146,'Suzuki, Nakaba', 'JPN', 'M'), (147,'Kishimoto, Masashi', 'JPN', 'M'), (148,'Tokunou, Shoutarou', 'JPN', 'M'), (149,'Mizuno, Minami', 'JPN', 'F'),
(150,'Furuya, Usamaru', 'JPN', 'M');

INSERT INTO authors VALUES (151,'Dazai, Osamu', 'JPN', 'M'),
(152,'Komi, Naoshi', 'JPN', 'M'), (153,'Adachitoka', 'JPN', 'F'), (154,'ONE', 'JPN', 'M'), (155,'Hatta, Ayuko', 'JPN', 'F'), (156,'Hasekura, Isuna', 'JPN', 'M'),
(157,'Ayakura, Juu', 'JPN', 'M'), (158,'Kawahara, Kazune', 'JPN', 'F'), (159,'Aruko', NULL, NULL), (160,'Hatori, Bisco', 'JPN', 'F'), (161,'Mochizuki, Jun', 'JPN', 'F'),
(162,'Yukimura, Makoto', 'JPN', 'M'), (163,'Shihira, Tatsuya', 'JPN', NULL), (164,'Yayoi, Sou', 'JPN', 'F'), (165,'Mitsuki, Kako', 'JPN', 'F'), (166,'Hozumi', NULL, NULL),
(167,'Saeki, Shun', 'JPN', 'M'), (168,'Tsukuda, Yuuto', 'JPN', 'M'), (169,'Morisaki, Yuki', 'JPN', 'F'), (170,'Inoue, Takehiko', 'JPN', 'M'), (171,'Chugong', 'KOR', NULL),
(172,'Jang, Sung-rak', 'KOR', 'M'), (173,'Sukeno, Yoshiaki', 'JPN', 'M'), (174,'Type-Moon', 'JPN', 'ND'), (175,'Nitroplus', 'JPN', 'ND'), (176,'Sarachi, Yomi', 'JPN', 'F'),
(177,'Naruse, Yoshiki', NULL, NULL), (178,'Hazuki, Kanae', 'JPN', 'F'), (179,'Taamo', 'JPN', 'F'), (180,'Tachibana, Kenichi', 'JPN', 'M'), (181,'Sasuga, Yu', 'JPN', 'M'),
(182,'Park, Jin-Hwan', 'KOR', 'M'), (183,'Jeon, Geuk-jin', 'KOR', 'M'), (184,'Robico', 'JPN', 'F'), (185,'Zekkyou', NULL, NULL), (186,'Hiro, Chihiro', 'JPN', 'F'),
(187,'Nagabe', 'JPN', 'M'), (188,'ZUN', NULL, NULL), (189,'Rin, Kususaga', 'JPN', NULL), (190,'SIU', 'KOR', 'M'), (191,'Sugiyama, Miwako', 'JPN', 'F'), (192,'Mikage, Eiji', 'JPN', 'M'),
(193,'Tetsuo', NULL, NULL), (194,'Yoshikawa, Eiji', 'JPN', 'M'), (195,'Junko', 'JPN', 'F'), (196,'Tooyama, Ema', 'JPN', 'F'), (197,'Nogiri, Youko', 'JPN', 'F'),
(198,'Yumeka, Sumomo', 'JPN', 'F'), (199,'Watari, Wataru', 'JPN', 'M'), (200,'Ponkan', NULL, NULL);

INSERT INTO authors VALUES (201,'Demizu, Posuka', 'JPN', 'F'), (202,' Shirai, Kaiu', 'JPN', 'M'), (203,'Yoshikawa, Miki', 'JPN', 'F'),
(204,'Otonaka, Sawaki', 'JPN', 'F'), (205,'Azuma, Kiyohiko', 'JPN', 'M'), (206,'Katsura, Masakazu', 'JPN', 'M'), (207,'Shirodaira, Kyou', 'JPN', 'M'),
(208,'Saizaki, Ren', NULL, NULL), (209,'Kim, Carnby', 'KOR', 'M'), (210,'Hwang, Young-chan ', 'KOR', NULL), (211,'Plutus', 'KOR', NULL), (212,'Spoon', 'KOR', NULL),
(213,'Lee, Yunji', 'KOR', 'F'), (214,'Son, Jae-Ho', 'KOR', 'M'), (215,'Lee, Gwang-Su', 'KOR', 'M');

CREATE TABLE genres(
    genre_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(150) NOT NULL,
 PRIMARY KEY(genre_id),
 UNIQUE(category)    
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

INSERT INTO genres VALUES (1, 'Action'),
(2, 'Adventure'), (3, 'Historical'), (4, 'Sci-Fi'), (5, 'Drama'), (6, 'Horror'), (7, 'Josei'), (8, 'Shoujo'), (9, 'Music'), (10, 'Seinen'), (11, 'Cyberpunk'), (12, 'Romance'),
(13, 'Samurai'), (14, 'Comedy'), (15, 'Dementia'), (16, 'Fantasy'), (17, 'School'), (18, 'Shounen'), (19, 'Shounen Ai'), (20, 'Demons'), (21, 'Ecchi'), (22, 'Martial Arts'),
(23, 'Gore'), (24, 'Parody'), (25, 'Game'), (26, 'Gender Bender'), (27, 'Vampire'), (28, 'Slice of Life'), (29, 'Sports'), (30, 'Thriller'), (31, 'Harem'), (32, 'Psychological'),
(33, 'Supernatural'), (34, 'Super Power'), (35, 'Mecha'), (36, 'Space'), (37, 'Magic'), (38, 'Military'), (39, 'Mystery'); 

CREATE TABLE IF NOT EXISTS mangas(
    manga_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    title_jap VARCHAR(200) NOT NULL,
    title_eng VARCHAR(150) NOT NULL DEFAULT 'No Alternative Title',
    chapters INT(5) NOT NULL DEFAULT '1',
    public_date DATE NOT NULL DEFAULT '1980-01-01',
    langu CHAR(2) NOT NULL COMMENT 'ISO 639-1 Language code',
    cover_url VARCHAR(500) DEFAULT NULL,
    editorial VARCHAR(500) DEFAULT NULL,
    serialization VARCHAR(500) NOT NULL DEFAULT 'None',
    current_status ENUM('Finished', 'Publishing') NOT NULL,
    price double(6,2) DEFAULT NULL,
    sellabe tinyint(1) NOT NULL DEFAULT '0',
    copies INT(11) NOT NULL DEFAULT '1',
 PRIMARY KEY(manga_id),
 UNIQUE(title_jap)
  ) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

INSERT INTO mangas VALUES (1, 'Berserk Vol. 1', DEFAULT, 3, '2003-10-22', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/2/26/Manga_V1_Cover.png/revision/latest?cb=20170513170600', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 5.57, 1, 5),
(2, 'Berserk Vol. 2', DEFAULT, 2, '2004-01-14', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/6/63/Manga_V2_Cover.png/revision/latest?cb=20170513170650', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 5.50, 1, 3), 
(3, 'Berserk Vol. 3', DEFAULT, 4, '2004-04-14', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/f/ff/Manga_V3_Cover.png/revision/latest?cb=20170513170720', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 10.85, 0, 1), 
(4, 'Berserk Vol. 4', DEFAULT, 5, '2004-07-14', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/d/d4/Manga_V4_Cover.png/revision/latest?cb=20170513170754', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 5.29, 1, 2),
(5, 'Berserk Vol. 5', DEFAULT, 8, '2004-10-13', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/5/53/Manga_V5_Cover.png/revision/latest?cb=20170513171019', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 4.16, 1, 3),
(6, 'Berserk Vol. 6', DEFAULT, 10, '2005-01-19', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/3/39/Manga_V6_Cover.png/revision/latest?cb=20170513171210', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 4.00, 1, 1),
(7, 'Berserk Vol. 7', DEFAULT, 10, '2005-05-11', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/1/11/Manga_V7_Cover.png/revision/latest?cb=20170513171314', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 6.45, 1, 2),
(8, 'Berserk Vol. 8', DEFAULT, 10, '2005-07-13', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/5/51/Manga_V8_Cover.png/revision/latest?cb=20170513171400', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 7.39, 0, 1),
(9, 'Berserk Vol. 9', DEFAULT, 11, '2005-10-12', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/0/09/Manga_V9_Cover.png/revision/latest?cb=20170513171430', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 8.75, 1, 1),
(10, 'Berserk Vol. 10', DEFAULT, 11, '2006-01-25', 'EN', 
'https://vignette.wikia.nocookie.net/berserk/images/6/6c/Manga_V10_Cover.png/revision/latest?cb=20170513171502', 'Dark Horse Manga',
 'Young Animal', 'Publishing', 6.97, 1, 1),
(11, 'Bleach Vol. 1', DEFAULT, 7, '2011-06-17', 'EN', 
'https://vignette.wikia.nocookie.net/bleach/images/0/0d/Tomo_1.png/revision/latest?cb=20140326054737&path-prefix=es', 'VIZ Media: SHONEN JUMP',
 'Shounen Jump (Weekly)', 'Finished', 6.29, 0, 4),
(12, 'Domestic na Kanojo Vol. 1', 'Domestic Girlfriend', 6, '2017-04-11', 'EN', 
'https://vignette.wikia.nocookie.net/domestic-na-kanojo/images/f/f9/Volume_1_%28JP%29.jpg/revision/latest?cb=20190827163749', 'Kodansha Comics',
 'Shounen Magazine (Weekly)', 'Publishing', 13.00, 0, 1),
(13, 'Dragon Ball Vol. 1', DEFAULT, 11, '2003-03-12', 'EN', 
'https://vignette.wikia.nocookie.net/dragonball/images/0/0d/DBallv1.jpg/revision/latest?cb=20100715065659', 'VIZ Media: SHONEN JUMP',
 'Shounen Jump (Weekly)', 'Finished', 6.30, 1, 7),
(14, 'Dragon Ball Vol. 2', DEFAULT, 13, '2003-03-12', 'EN', 
'https://vignette.wikia.nocookie.net/dragonball/images/9/91/Volume2.jpg/revision/latest?cb=20100715065758', 'VIZ Media: SHONEN JUMP',
 'Shounen Jump (Weekly)', 'Finished', 6.99, 1, 5),
(15, 'Dragon Ball Vol. 3', DEFAULT, 12, '2003-03-12', 'EN', 
'https://vignette.wikia.nocookie.net/dragonball/images/9/97/Volume3.jpg/revision/latest?cb=20100715065638', 'VIZ Media: SHONEN JUMP',
 'Shounen Jump (Weekly)', 'Finished', 5.07, 1, 3),
(16, 'Dragon Ball Vol. 4', DEFAULT, 12, '2003-03-12', 'EN', 
'https://vignette.wikia.nocookie.net/dragonball/images/7/77/DBvol4.jpg/revision/latest?cb=20100603045752', 'VIZ Media: SHONEN JUMP',
 'Shounen Jump (Weekly)', 'Finished', 8.40, 0, 2),    
(17, 'Fairy Tail Vol. 1', DEFAULT, 4, '2008-03-25', 'EN', 
'https://vignette.wikia.nocookie.net/fairytail/images/d/db/Volume_1_Cover.png/revision/latest?cb=20160323002130', 'Kodansha Comics',
 'Shounen Magazine (Weekly)', 'Finished', 4.95, 1, 6),
(18, 'Fairy Tail Vol. 2', DEFAULT, 9, '2008-03-25', 'EN', 
'https://vignette.wikia.nocookie.net/fairytail/images/5/5c/Volume_2_Cover.png/revision/latest?cb=20160323001205', 'Kodansha Comics',
 'Shounen Magazine (Weekly)', 'Finished', 7.59, 1, 3),
(19, 'JoJo no Kimyou na Bouken Part 1: Phantom Blood Vol. 1', 'JoJo\"s Bizarre Adventure Part 1: Phantom Blood', 8, '2014-09-02', 'EN', 
'https://vignette.wikia.nocookie.net/jjba/images/b/b1/Volume_1.jpg/revision/latest?cb=20181007121346', 'VIZ Media: SHONEN JUMP ADVANCED',
 'Shounen Jump (Weekly)', 'Finished', 10.64, 1, 5),
(20, 'JoJo no Kimyou na Bouken Part 1: Phantom Blood Vol. 2', 'JoJo\"s Bizarre Adventure Part 1: Phantom Blood', 9, '2014-11-04', 'EN', 
'https://vignette.wikia.nocookie.net/jjba/images/5/53/Volume_2.jpg/revision/latest?cb=20181007121810', 'VIZ Media',
 'Shounen Jump (Weekly)', 'Finished', 11.87, 1, 3),
(21, 'Mahoutsukai no Yome Vol. 1', 'The Ancient Magus" Bride', 5, '2015-05-13', 'EN', 
'https://vignette.wikia.nocookie.net/mahou-tsukai-no-yome/images/0/04/Mahou-tsukai-no_yome.png/revision/latest?cb=20180216030217&path-prefix=es', 'Seven Seas',
 'Comic Garden', 'Publishing', 8.45, 1, 3),
(22, 'Nana to Kaoru Vol. 1', 'Kaoru and Nana', 8, '2008-11-28', 'JA', 
'https://comicvine1.cbsistatic.com/uploads/scale_large/6/67663/5661384-01.jpg', 'Hakusensha',
 'Young Animal', 'Finished', 11.67, 0, 1),
(23, 'Nana to Kaoru Vol. 2', 'Kaoru and Nana', 9, '2009-06-05', 'JA', 
'https://comicvine1.cbsistatic.com/uploads/scale_large/6/67663/5661410-02.jpg', 'Hakusensha',
 'Young Animal', 'Finished', 12.39, 0, 1), 
(24, 'Nana to Kaoru Vol. 3', 'Kaoru and Nana', 8, '2010-01-29', 'JA', 
'https://comicvine1.cbsistatic.com/uploads/scale_large/6/67663/5661411-03.jpg', 'Hakusensha',
 'Young Animal', 'Finished', 15.65, 0, 1),
(25, 'Nana to Kaoru Vol. 4', 'Kaoru and Nana', 8, '2010-05-28', 'JA', 
'https://comicvine1.cbsistatic.com/uploads/scale_large/6/67663/5661412-04.jpg', 'Hakusensha',
 'Young Animal', 'Finished', 11.67, 0, 1),
(26, 'Nana to Kaoru Vol. 5', 'Kaoru and Nana', 9, '2010-10-29', 'JA', 
'https://comicvine1.cbsistatic.com/uploads/scale_large/6/67663/5661413-05.jpg', 'Hakusensha',
 'Young Animal', 'Finished', 15.20, 0, 1),
(27, 'One Piece Vol. 1', DEFAULT, 8, '2003-01-02', 'EN', 
'https://vignette.wikia.nocookie.net/onepiece/images/3/3a/Volumen_1.png/revision/latest?cb=20130123231516&path-prefix=es', 'VIZ Media: SHONEN JUMP',
 'Shounen Jump (Weekly)', 'Publishing', 5.95, 1, 4),
(28, 'Rurouni Kenshin: Meiji Kenkaku Romantan Vol. 1', 'Rurouni Kenshin: Meiji Swordsman Romantic Story', 6, '2011-07-09', 'EN', 
'https://prodimage.images-bn.com/pimages/9781421546094_p0_v2_s600x595.jpg', 'VIZ Media: SHONEN JUMP',
 'Shounen Jump (Weekly)', 'Finished', 4.95, 1, 3),     
(29, 'Sachi-iro no One Room Vol. 1', DEFAULT, 6, '2016-09-30', 'EN', 
'https://cdn.myanimelist.net/images/manga/1/192115l.jpg', 'Square Enix and Pixiv Gangan Pixiv Web Magazine',
 DEFAULT, 'Publishing', DEFAULT, 0, DEFAULT),
(30, 'Shingeki no Kyojin Vol. 1', 'Attack on Titan', 4, '2012-06-19', 'EN', 
'https://vignette.wikia.nocookie.net/shingekinokyojin/images/d/db/Volume_1_Cover.png/revision/latest?cb=20191030213927', 'Kodansha Comics',
 'Bessatsu Shounen Magazine', 'Publishing', 4.95, 1, 10),
(31, '24 Colors: Hatsukoi no Palette', DEFAULT, 5, '2008-02-05', 'JA', 
'https://cdn.myanimelist.net/images/manga/1/20732l.jpg', 'Flower Comics',
 'Sho-Comi', 'Finished', 5.30, 1, 1),
(32, 'Tokyo Ghoul Vol. 1', DEFAULT, 9, '2015-06-16', 'EN', 
'https://vignette.wikia.nocookie.net/tokyoghoul/images/6/6a/Volume_01.jpg/revision/latest?cb=20161203075330', 'VIZ Media: VIZ Signature',
 'Young Jump', 'Finished', 4.40, 1, 5),
(33, 'All You Need Is Kill Vol. 1', DEFAULT, 7, '2014-06-19', 'EN', 
'https://dwgkfo5b3odmw.cloudfront.net/manga/thumbs/thumb-11521-ANK_01_web.jpg', 'VIZ Media: SHONEN JUMP ADVANCED',
 'Young Jump', 'Finished', 6.99, 1, 3), 
(34, 'All You Need Is Kill Vol. 2', DEFAULT, 10, '2014-06-19', 'EN', 
'https://dwgkfo5b3odmw.cloudfront.net/manga/thumbs/thumb-11525-ANK_02_web.jpg', 'VIZ Media: SHONEN JUMP ADVANCED',
 'Young Jump', 'Finished', 6.99, 1, 3),
(35, 'Death Note Vol. 1', DEFAULT, 7, '2005-10-10', 'EN', 
'https://vignette.wikia.nocookie.net/deathnote/images/b/b1/Volume_1.jpg/revision/latest?cb=20170726180340', 'VIZ Media: SHONEN JUMP ADVANCED',
 'Shounen Jump (Weekly)', 'Finished', 5.99, 1, 8);    

CREATE TABLE mangas_authors(
   manga_author_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
   manga_id INT(10) UNSIGNED NOT NULL,
   author_id INT(10) UNSIGNED NOT NULL,
 CONSTRAINT PK_MangaAuthor PRIMARY KEY(manga_author_id),  
 CONSTRAINT FK_Manga FOREIGN KEY (manga_id) REFERENCES mangas(manga_id) ON UPDATE CASCADE ON DELETE RESTRICT,
 CONSTRAINT FK_Author FOREIGN KEY (author_id) REFERENCES authors(author_id) ON UPDATE CASCADE ON DELETE RESTRICT
 ) ENGINE=InnoDB;

 INSERT INTO mangas_authors (manga_id, author_id) VALUES (1, 1),
 (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 2), (12, 3), (13, 4), (14, 4), (15, 4), (16, 4), (17, 5), (18, 5), (19, 6), (20, 6), (21, 7),
 (22, 8), (23, 8), (24, 8), (25, 8), (26, 8), (27, 9), (28, 10), (29, 11), (30, 12), (31, 14), (32, 13), (33, 19), (33, 20), (33, 21), (34, 19), (34, 20), (34, 21), (35, 19), (35, 60);

CREATE TABLE mangas_genres(
    manga_genre_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
   manga_id INT(10) UNSIGNED NOT NULL,
   genre_id INT(10) UNSIGNED NOT NULL,
 CONSTRAINT PK_MangaGenre PRIMARY KEY(manga_genre_id),  
 CONSTRAINT FK_MangaG FOREIGN KEY (manga_id) REFERENCES mangas(manga_id) ON UPDATE CASCADE ON DELETE RESTRICT,
 CONSTRAINT FK_Genre FOREIGN KEY (genre_id) REFERENCES genres(genre_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB; 

INSERT INTO mangas_genres (manga_id, genre_id) VALUES (1, 1),
(1, 2), (1, 20), (1, 5), (1, 16), (1, 6), (1, 33), (1, 38), (1, 32), (1, 10), (2, 1), (2, 2), (2, 20), (2, 5), (2, 16), (2, 6), (2, 33), (2, 38), (2, 32), (2, 10), (3, 1), (3, 2), (3, 20),
(3, 5), (3, 16), (3, 6), (3, 33), (3, 32), (3, 38), (3, 10), (4, 1), (4, 10), (4, 2), (4, 20), (4, 5), (4, 16), (4, 6), (4, 33), (4, 32), (4, 38), (5, 1), (5, 2), (5, 5), (5, 6), (5, 10),
(5, 16), (5, 20), (5, 33), (5, 32), (5, 38), (6, 1), (6, 2), (6, 5), (6, 6), (6, 10), (6, 16), (6, 20), (6, 32), (6, 33), (6, 38), (7, 1), (7, 2), (7, 5), (7, 6), (7, 10), (7, 16), (7, 20),
(7, 32), (7, 33), (7, 38), (8, 1), (8, 2), (8, 5), (8, 6), (8, 10), (8, 16), (8, 20), (8, 32), (8, 33), (8, 38), (9, 1), (9, 2), (9, 5), (9, 6), (9, 10), (9, 16), (9, 20), (9, 32), (9, 33),
(9, 38), (10, 1), (10, 2), (10, 5), (10, 6), (10, 10), (10, 16), (10, 20), (10, 32), (10, 33), (10, 38), (11, 1), (11, 2), (11, 18), (11, 34), (11, 33), (12, 5), (12, 12), (12, 17), (12, 18);

INSERT INTO mangas_genres (manga_id, genre_id) VALUES (13, 1),
(13, 2), (13, 14), (13, 22), (13, 4), (13, 18), (13, 34), (14, 2), (14, 14), (14, 22), (14, 4), (14, 18), (14, 34), (14, 1), (15, 2), (15, 14), (15, 22), (15, 4), (15, 18), (15, 34), (15, 1),
(16, 2), (16, 14), (16, 22), (16, 4), (16, 18), (16, 34), (16, 1), (17, 1), (17, 2), (17, 14), (17, 21), (17, 16), (17, 37), (17, 18), (18, 1), (18, 2), (18, 14), (18, 21), (18, 16), (18, 37),
(18, 18), (19, 1), (19, 2), (19, 3), (19, 18), (19, 27), (19, 6), (20, 1), (20, 2), (20, 3), (20, 6), (20, 18), (20, 27), (21, 16), (21, 37), (21, 18), (21, 28), (22, 14), (22, 21), (22, 12),
(22, 17), (22, 10), (23, 14), (23, 21), (23, 12), (23, 17), (23, 10), (24, 14), (24, 21), (24, 12), (24, 17), (24, 10), (25, 14), (25, 21), (25, 12),(25, 17), (25, 10), (26, 14), (26, 21),
(26, 12), (26, 17), (26, 10);

INSERT INTO mangas_genres (manga_id, genre_id) VALUES (27, 1),
(27, 2), (27, 14), (27, 16), (27, 18), (27, 34), (28, 1), (28, 3), (28, 5), (28, 13), (28, 18), (29, 5), (30, 1), (30, 39), (30, 5), (30, 16), (30, 6), (30, 18), (30, 34), (30, 33),
(31, 8), (31, 14), (31, 12), (31, 17), (32, 1), (32, 5), (32, 6), (32, 10), (32, 32), (32, 33), (32, 39), (33, 1), (33, 4), (33, 10), (33, 38), (34, 1), (34, 4), (34, 10), (34, 38),
(35, 5), (35, 18), (35, 39), (35, 33), (35, 32); 

CREATE TABLE clients(
    client_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) DEFAULT NULL,
    email VARCHAR(100) NOT NULL,
    birthdate DATE DEFAULT NULL,
    gender ENUM('M', 'F') DEFAULT NULL,
    active TINYINT(1) NOT NULL DEFAULT '1',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(client_id),
 UNIQUE(email)
 ) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO clients VALUES (1, 'Maria Dolores Gomez','Maria Dolores.95983222J@random.names','1971-06-06','F',1,'2018-04-09 16:51:30'),
(2,'Adrian Fernandez','Adrian.55818851J@random.names','1970-04-09','M',1,'2018-04-09 16:51:30'),
(3,'Maria Luisa Marin','Maria Luisa.83726282A@random.names','1957-07-30','F',1,'2018-04-09 16:51:30'),
(4,'Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1,'2018-04-09 16:51:30'),
(5,'Pablo Saavedra','Pablo.93733268B@random.names','1960-07-21','M',1,'2018-04-09 16:51:30'),
(6,'Marta Carrillo','Marta.55741882W@random.names','1981-06-15','F',1,'2018-04-09 16:51:30'),
(7,'Javier Barrio','Javier.54966248C@random.names','1971-04-24','M',1,'2018-04-09 16:51:30'),
(8,'Milagros Garcia','Milagros.90074144A@random.names','1964-12-05','F',1,'2018-04-09 16:51:30'),
(9,'Carlos Quiros','Carlos.63291957M@random.names','1954-08-28','M',1,'2018-04-09 16:51:30'),
(10,'Carmen De la Torre','Carmen.57408761W@random.names','1966-05-14','F',1,'2018-04-09 16:51:30'),
(11,'Laura Moron','Laura.57774589S@random.names','1954-03-02','F',1,'2018-04-09 16:51:30'),
(12,'Maria Dolores Larrea','Maria Dolores.71788005Z@random.names','1990-09-04','F',1,'2018-04-09 16:51:30'),
(13,'Maria Dolores Sanz','Maria Dolores.30948169J@random.names','2001-08-30','F',1,'2018-04-09 16:51:30'),
(14,'Jose Maria Bermudez','Jose Maria.24963969E@random.names','1998-05-23','M',1,'2018-04-09 16:51:30'),
(15,'Carlos Blanco','Carlos.94783133H@random.names','1952-08-07','M',1,'2018-04-09 16:51:30'),
(16,'Juan Carlos Jurado','Juan Carlos.71650477A@random.names','1990-12-12','M',1,'2018-04-09 16:51:30'),
(17,'David Gonzalez','David.54332034P@random.names','1976-05-03','M',1,'2018-04-09 16:51:30'),
(18,'Antonia Aranda','Antonia.91560262E@random.names','1979-10-25','F',1,'2018-04-09 16:51:30'),
(19,'Maria Moreno','Maria.58935447V@random.names','1997-01-12','F',1,'2018-04-09 16:51:30'),
(20,'David Casals','David.06746883V@random.names','1999-07-13','M',1,'2018-04-09 16:51:30'),
(21,'Mario Romero','Mario.46091382A@random.names','1985-03-29','M',1,'2018-04-09 16:51:30'),
(22,'Maria angeles Alba','Maria angeles.91808919A@random.names','1959-09-14','F',1,'2018-04-09 16:51:30'),
(23,'Rafael Espinola','Rafael.67605541P@random.names','1998-10-11','M',1,'2018-04-09 16:51:30'),
(24,'Montserrat alvarez','Montserrat.31114289G@random.names','1994-11-06','F',1,'2018-04-09 16:51:30'),
(25,'Maria Carmen Gomez','Maria Carmen.64351051H@random.names','1968-06-30','F',1,'2018-04-09 16:51:30'),
(26,'Maria Cruz Morillas','Maria Cruz.81385695B@random.names','1978-10-29','F',1,'2018-04-09 16:51:30'),
(27,'Josefa Roldan','Josefa.51417560W@random.names','1993-08-09','F',1,'2018-04-09 16:51:30'),
(28,'Monica Pla','Monica.18992324M@random.names','1972-06-08','F',1,'2018-04-09 16:51:30'),
(29,'Juana Maria Lopez','Juana Maria.51072683X@random.names','1990-07-15','F',1,'2018-04-09 16:51:30'),
(30,'Maria Carmen Ponce','Maria Carmen.41619980P@random.names','1984-07-26','F',1,'2018-04-09 16:51:30'),
(31,'Juan Carlos Rios','Juan Carlos.45673504N@random.names','1967-05-04','M',1,'2018-04-09 16:51:30'),
(32,'Isabel Alfaro','Isabel.77316882J@random.names','1980-07-25','F',1,'2018-04-09 16:51:30'),
(33,'Maria Isabel Armas','Maria Isabel.42010289F@random.names','1950-11-21','F',1,'2018-04-09 16:51:30'),
(34,'Maria Teresa Castillo','Maria Teresa.91228389Q@random.names','2002-11-08','F',1,'2018-04-09 16:51:30'),
(35,'Andres Planells','Andres.09981449R@random.names','1992-06-19','M',1,'2018-04-09 16:51:30'),
(36,'Silvia Perez','Silvia.91812407H@random.names','1969-02-15','F',1,'2018-04-09 16:51:30'),
(37,'Pablo Gonzalez','Pablo.11605676Z@random.names','2000-10-11','M',1,'2018-04-09 16:51:30'),
(38,'Maria Antonia Jimenez','Maria Antonia.98071058R@random.names','1998-06-23','F',1,'2018-04-09 16:51:31'),
(39,'Jesus Rodriguez','Jesus.86679475L@random.names','1961-01-17','M',1,'2018-04-09 16:51:31'),
(40,'Carmen Rodriguez','Carmen.81799536J@random.names','1973-02-17','F',1,'2018-04-09 16:51:31');

CREATE TABLE transactions(
   transaction_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
   manga_id INT(10) UNSIGNED NOT NULL,
   client_id INT(10) UNSIGNED NOT NULL,
   type ENUM('lend', 'sell') NOT NULL,
   created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   finished TINYINT(1) NOT NULL DEFAULT '0',
 PRIMARY KEY(transaction_id)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO transactions VALUES (1, 1, 36, 'lend', DEFAULT, DEFAULT, DEFAULT),
(2, 30, 40, 'sell', DEFAULT, DEFAULT, 1), (3, 30, 9, 'lend', DEFAULT, DEFAULT, DEFAULT), (4, 29, 15, 'lend', DEFAULT, DEFAULT, DEFAULT),
(5, 1, 39, 'sell', DEFAULT, DEFAULT, 1), (6, 26, 17, 'lend', DEFAULT, DEFAULT, DEFAULT), (7, 3, 16, 'lend', DEFAULT, DEFAULT, DEFAULT),
(8, 13, 25, 'sell', DEFAULT, DEFAULT, 1), (9, 18, 1, 'sell', DEFAULT, DEFAULT, 1), (10, 20, 2, 'sell', DEFAULT, DEFAULT, 1),
(11, 20, 3, 'sell', DEFAULT, DEFAULT, 1), (12, 21, 18, 'sell', DEFAULT, DEFAULT, 1), (13, 22, 4, 'lend', DEFAULT, DEFAULT, DEFAULT),
(14, 28, 32, 'sell', DEFAULT, DEFAULT, 1), (15, 31, 6, 'sell', DEFAULT, DEFAULT, 1), (16, 32, 23, 'sell', DEFAULT, DEFAULT, 1),
(17, 32, 5, 'sell', DEFAULT, DEFAULT, 1), (18, 33, 27, 'sell', DEFAULT, DEFAULT, 1), (19, 34, 27, 'sell', DEFAULT, DEFAULT, 1),
(20, 35, 24, 'lend', DEFAULT, DEFAULT, DEFAULT), (21, 27, 29, 'lend', DEFAULT, DEFAULT, DEFAULT), (22, 27, 20, 'lend', DEFAULT, DEFAULT, DEFAULT),
(23, 28, 22, 'lend', DEFAULT, DEFAULT, DEFAULT), (24, 1, 21, 'sell', DEFAULT, DEFAULT, 1);

--To INNER JOIN the Mangas, Authors, Genres and Junction tables:

SELECT DISTINCT name FROM authors AS a JOIN mangas_authors AS ma ON a.author_id=ma.author_id  JOIN mangas AS m ON m.manga_id=ma.manga_id;

SELECT title_jap, name FROM mangas AS m JOIN mangas_authors AS ma ON m.manga_id=ma.manga_id JOIN authors AS a ON a.author_id=ma.author_id;
SELECT GROUP_CONCAT(" ", title_jap) AS title, name FROM mangas AS m JOIN mangas_authors AS ma ON m.manga_id=ma.manga_id JOIN authors AS a ON a.author_id=ma.author_id GROUP BY name;


SELECT title_jap, category FROM mangas AS m JOIN mangas_genres AS mg ON m.manga_id=mg.manga_id JOIN genres AS g ON g.genre_id=mg.genre_id;
SELECT title_jap AS title, GROUP_CONCAT(" ", category) AS Genre FROM mangas AS m JOIN mangas_genres AS mg ON m.manga_id=mg.manga_id JOIN genres AS g ON g.genre_id=mg.genre_id GROUP BY title_jap;

--LEFT JOIN to show all the authors and genres that don't have any title associated

SELECT title_jap AS title, name FROM authors AS a LEFT JOIN mangas_authors AS ma ON a.author_id=ma.author_id LEFT JOIN mangas AS m ON m.manga_id=ma.manga_id;
SELECT title_jap AS title, category FROM genres AS g LEFT JOIN mangas_genres AS mg ON g.genre_id=mg.genre_id LEFT JOIN mangas AS m ON m.manga_id=mg.manga_id;

SELECT title_jap AS title, name FROM authors AS a LEFT JOIN mangas_authors AS ma ON a.author_id=ma.author_id LEFT JOIN mangas AS m ON m.manga_id=ma.manga_id WHERE title_jap IS NULL;
SELECT title_jap AS title, name FROM authors AS a LEFT JOIN mangas_authors AS ma ON a.author_id=ma.author_id LEFT JOIN mangas AS m ON m.manga_id=ma.manga_id WHERE title_jap IS NOT NULL;

/*
This is the exercise created by Platzi's teacher.
1. What are the nationalities?
2. How many authors are from each nationality?
3. How many mangas are from each nationality?
4. What is the AVG and STD of the mangas price?
5. What is the max and min price of a manga?
6. Show the lend and sell report
*/

SELECT DISTINCT nationality FROM authors ORDER BY nationality;
SELECT nationality, COUNT(author_id) AS c_authors FROM authors GROUP BY nationality ORDER BY c_authors DESC, nationality ASC;
SELECT COUNT(a.author_id) AS c_mangas, nationality FROM mangas AS m JOIN mangas_authors AS ma ON m.manga_id=ma.manga_id JOIN authors AS a ON a.author_id=ma.author_id GROUP BY nationality;
SELECT AVG(price) as Average, STDDEV(price) AS STD FROM mangas AS m JOIN mangas_authors AS ma ON m.manga_id=ma.manga_id JOIN authors AS a ON a.author_id=ma.author_id GROUP BY name;
SELECT nationality, MAX(price) AS MAX, MIN(price) AS MIN FROM mangas AS m JOIN mangas_authors AS ma ON m.manga_id=ma.manga_id JOIN authors AS a ON a.author_id=ma.author_id GROUP BY nationality;
SELECT c.name, t.type, m.title_jap, CONCAT(a.name, " (", a.nationality, ")") AS Author FROM transactions AS t JOIN clients AS c ON c.client_id=t.client_id JOIN mangas AS m ON m.manga_id=t.manga_id JOIN mangas_authors AS ma ON m.manga_id=ma.manga_id JOIN authors AS a ON a.author_id=ma.author_id ORDER BY c.name;

