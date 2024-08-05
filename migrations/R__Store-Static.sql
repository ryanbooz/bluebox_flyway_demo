CREATE TABLE staging.store_static (
	store_id int8 NOT NULL,
	street_name text NULL,
	road_ref text NULL,
	phone text NULL,
	zip_code int4 NOT NULL,
	geog public.geography(point, 4326) NOT NULL,
	CONSTRAINT store_pkey PRIMARY KEY (store_id),
	CONSTRAINT store_zip_code_fkey FOREIGN KEY (zip_code) REFERENCES bluebox.zip_code_info(zip_code)
);

/*
 * Static data for the bluebox.store table. Updated over time as needed
 */
INSERT INTO staging.store_static (store_id,street_name,road_ref,phone,zip_code,geog) VALUES
	 (1,'North Oak Street',NULL,'(608) 688-3795',11762,'SRID=4326;POINT (-73.47246394819818 40.69782015058857)'),
	 (2,'Redgate Avenue',NULL,'(464) 641-5562',10941,'SRID=4326;POINT (-74.38127591243037 41.45592982454084)'),
	 (3,'',NULL,'(941) 696-4935',13807,'SRID=4326;POINT (-74.96466738843134 42.65062226947692)'),
	 (4,'Raider Boulevard',NULL,'(982) 470-8598',12205,'SRID=4326;POINT (-73.80560862651734 42.70977436975071)'),
	 (5,'Thompson Street',NULL,'(222) 417-7596',12020,'SRID=4326;POINT (-73.8504142937451 43.00557846500064)'),
	 (6,'',NULL,'(689) 379-3678',14606,'SRID=4326;POINT (-77.69397281432057 43.1669613770089)'),
	 (7,'Buckeye Road',NULL,'(307) 843-4698',14226,'SRID=4326;POINT (-78.8025860208119 42.97708517397168)'),
	 (8,'Park Road',NULL,'(595) 133-7702',14427,'SRID=4326;POINT (-78.03980718255104 42.58657726039061)'),
	 (10,'',NULL,'(769) 080-1330',14048,'SRID=4326;POINT (-79.31372330382753 42.45932443403648)'),
	 (11,'Pioneer Plaza Drive',NULL,'(618) 111-5363',13601,'SRID=4326;POINT (-75.9542615197715 43.974600710405745)'),
	 (12,'',NULL,'(960) 255-7678',13662,'SRID=4326;POINT (-74.83915745792318 44.95073963545795)'),
	 (13,'Elsie Place',NULL,'(788) 518-2094',11735,'SRID=4326;POINT (-73.44975412411112 40.72827143475233)'),
	 (15,'Casey Road',NULL,'(621) 923-2633',14013,'SRID=4326;POINT (-78.40174507759241 43.11047039518543)'),
	 (16,'Meade Avenue',NULL,'(695) 267-2304',11801,'SRID=4326;POINT (-73.53983138404531 40.76215810073734)'),
	 (17,'',NULL,'(182) 438-4414',14853,'SRID=4326;POINT (-76.48825583889328 42.48384492893232)'),
	 (18,'East 32nd Street',NULL,'(038) 274-3229',10016,'SRID=4326;POINT (-73.98537407417284 40.74710337417954)'),
	 (19,'Knoll Drive',NULL,'(742) 032-4073',14120,'SRID=4326;POINT (-78.86335345793721 43.073457505391445)'),
	 (21,'Crestview Drive',NULL,'(642) 933-8613',14420,'SRID=4326;POINT (-77.94016641700426 43.20003574579917)'),
	 (22,'Janus Park Drive',NULL,'(571) 773-9828',13088,'SRID=4326;POINT (-76.1633453246567 43.121413681451784)'),
	 (23,'Freeman Road',NULL,'(739) 803-9014',14026,'SRID=4326;POINT (-78.6954005205068 42.950666821970046)'),
	 (24,'Montmorency Way',NULL,'(536) 077-0960',14456,'SRID=4326;POINT (-77.01310561878871 42.85407455151441)'),
	 (27,'Maple Avenue',NULL,'(162) 470-3740',10519,'SRID=4326;POINT (-73.66174799443573 41.35014424312469)'),
	 (28,'South Liberty Drive','US 9W;US 202','(744) 094-9856',10993,'SRID=4326;POINT (-73.98647661715458 41.216426940489534)'),
	 (29,'Hosbach Trail',NULL,'(889) 242-3787',13815,'SRID=4326;POINT (-75.51849053917843 42.51868739001139)'),
	 (30,'County Highway 18','CR 18','(047) 696-2732',13335,'SRID=4326;POINT (-75.30666340057303 42.699434837418075)'),
	 (31,'Thomas Street',NULL,'(348) 405-0624',12037,'SRID=4326;POINT (-73.59454387770457 42.362868346008284)'),
	 (33,'Lafayette Street',NULL,'(059) 342-0324',12804,'SRID=4326;POINT (-73.66578703428613 43.331350960454515)'),
	 (34,'Green Ridge Place',NULL,'(131) 315-7609',12866,'SRID=4326;POINT (-73.78611230176108 43.07296966033399)'),
	 (35,'Lowes Drive',NULL,'(370) 857-1657',12866,'SRID=4326;POINT (-73.74872684214358 43.10261742404935)'),
	 (37,'Corporate Drive',NULL,'(237) 934-9429',12065,'SRID=4326;POINT (-73.75594150587486 42.84669717743967)'),
	 (38,'Wedgewood Avenue',NULL,'(931) 977-1674',12307,'SRID=4326;POINT (-73.95157933055985 42.78208391879022)'),
	 (39,'Saint Camillus Way',NULL,'(654) 363-8741',14526,'SRID=4326;POINT (-77.44290076634071 43.12703766224703)'),
	 (40,'Ridgewood Road',NULL,'(282) 862-9661',12183,'SRID=4326;POINT (-73.64597130663157 42.74124354805355)'),
	 (41,'Main Street','NY 78','(663) 759-2963',14108,'SRID=4326;POINT (-78.70689636666552 43.28035540803185)'),
	 (42,'',NULL,'(004) 654-0713',14221,'SRID=4326;POINT (-78.69107854870369 42.974512897647)'),
	 (43,'Garden City Drive',NULL,'(976) 090-3337',13208,'SRID=4326;POINT (-76.15749785010156 43.094026157532795)'),
	 (44,'Railroad Avenue',NULL,'(179) 711-0958',10526,'SRID=4326;POINT (-73.67836952621244 41.29241389948764)'),
	 (45,'Pointview Drive',NULL,'(550) 924-0786',12144,'SRID=4326;POINT (-73.70609153480002 42.59555891866893)'),
	 (46,'Lake Avenue',NULL,'(786) 969-5071',12413,'SRID=4326;POINT (-73.99099496998012 42.29299929767934)'),
	 (47,'Smith Street',NULL,'(682) 962-3748',10977,'SRID=4326;POINT (-74.04264365158332 41.10954290790092)'),
	 (48,'Fritz Boulevard',NULL,'(075) 624-4954',12205,'SRID=4326;POINT (-73.84053393710333 42.714777776365274)'),
	 (49,'North Main Street',NULL,'(187) 804-4105',14572,'SRID=4326;POINT (-77.59080870455567 42.570359588970405)'),
	 (50,'West Morris Street',NULL,'(660) 516-7750',14810,'SRID=4326;POINT (-77.32260525599655 42.33287993364702)'),
	 (51,'Old Main Street',NULL,'(963) 414-9243',14807,'SRID=4326;POINT (-77.69572043593612 42.39287394377411)'),
	 (52,'Sanderson Road',NULL,'(337) 188-4057',14103,'SRID=4326;POINT (-78.38119369727917 43.194489250877396)'),
	 (53,'Cemetery Road',NULL,'(015) 813-4309',13309,'SRID=4326;POINT (-75.32564233183442 43.48037779885119)'),
	 (54,'6th Street',NULL,'(152) 106-7641',14302,'SRID=4326;POINT (-79.0550200956194 43.08394431576634)'),
	 (55,'Ossian Street',NULL,'(563) 296-7499',14437,'SRID=4326;POINT (-77.69566878082263 42.56126828289559)'),
	 (56,'Reed Street',NULL,'(693) 057-3783',14414,'SRID=4326;POINT (-77.74016805245704 42.9175610559459)'),
	 (57,'',NULL,'(620) 396-5404',10924,'SRID=4326;POINT (-74.33420807320893 41.396515214890655)'),
	 (58,'Village II Drive',NULL,'(748) 496-5430',14468,'SRID=4326;POINT (-77.78975901890657 43.28535376097912)'),
	 (59,'Roselawn Avenue',NULL,'(888) 107-8470',14450,'SRID=4326;POINT (-77.45183043883408 43.10265127513756)'),
	 (60,'',NULL,'(503) 107-8054',14424,'SRID=4326;POINT (-77.27367201423226 42.876215986037515)'),
	 (61,'Boies Alley',NULL,'(417) 098-4986',14052,'SRID=4326;POINT (-78.63166193211634 42.76558412307033)'),
	 (62,'Broadway','US 20','(574) 779-3754',14004,'SRID=4326;POINT (-78.49070776714784 42.900125346310524)'),
	 (63,'Spring Street',NULL,'(455) 665-5851',13326,'SRID=4326;POINT (-74.93816781125861 42.69280212073912)'),
	 (64,'Jefferson Street',NULL,'(046) 009-9829',13135,'SRID=4326;POINT (-76.2987872496607 43.23150877738749)'),
	 (65,'Cayuga Street',NULL,'(726) 589-7402',13069,'SRID=4326;POINT (-76.41752807984285 43.32397431347464)'),
	 (66,'William Street',NULL,'(139) 690-4821',13634,'SRID=4326;POINT (-76.04265034604938 44.00685734862185)'),
	 (67,'North Hycliff Drive',NULL,'(613) 908-2351',13601,'SRID=4326;POINT (-75.9346211672548 43.98664134991725)'),
	 (68,'West South Street',NULL,'(654) 059-0956',13073,'SRID=4326;POINT (-76.37281404640241 42.583146811203)'),
	 (69,'South Broad Street',NULL,'(011) 122-8358',14895,'SRID=4326;POINT (-77.9423550819638 42.11999594148754)'),
	 (70,'Upper College Drive',NULL,'(139) 167-7410',14802,'SRID=4326;POINT (-77.79492647655498 42.25642221505747)'),
	 (71,'Park Avenue',NULL,'(361) 897-0507',12504,'SRID=4326;POINT (-73.87392706763254 41.999702510318244)'),
	 (73,'East Main Street','NY 5','(500) 732-4405',13060,'SRID=4326;POINT (-76.43103591338783 43.03727694759223)'),
	 (74,'Pebblewood Ln',NULL,'(375) 142-9266',13027,'SRID=4326;POINT (-76.34391889244355 43.15074183439958)'),
	 (75,'Cottage Place',NULL,'(291) 417-1963',12037,'SRID=4326;POINT (-73.60418104728849 42.35639695209128)'),
	 (76,'Chestnut Drive',NULL,'(879) 288-8140',12485,'SRID=4326;POINT (-74.13297754301684 42.198360074835065)'),
	 (77,'','NY 303','(246) 461-4567',10983,'SRID=4326;POINT (-73.94350230025131 41.01784126177424)'),
	 (78,'Stevens Way',NULL,'(711) 205-2738',10962,'SRID=4326;POINT (-73.94775071263626 41.04109179194597)'),
	 (79,'West Nyack Road',NULL,'(991) 348-5223',10954,'SRID=4326;POINT (-74.00824411509672 41.09732045210916)'),
	 (80,'Bardonia Road',NULL,'(966) 014-8151',10954,'SRID=4326;POINT (-73.99275152925095 41.10965562572071)'),
	 (81,'',NULL,'(298) 767-9943',11755,'SRID=4326;POINT (-73.12389571768773 40.8717954335041)'),
	 (82,'Smith Street',NULL,'(881) 064-6144',11782,'SRID=4326;POINT (-73.08241830638342 40.738672420912565)'),
	 (83,'Bridgehampton–Sag Harbor Turnpike',NULL,'(723) 444-1351',11963,'SRID=4326;POINT (-72.30043170332556 40.98679527981593)'),
	 (84,'Clinton Street',NULL,'(852) 846-1797',11776,'SRID=4326;POINT (-73.04265149628391 40.93224578337774)'),
	 (85,'Renaissance Boulevard',NULL,'(859) 751-4046',11953,'SRID=4326;POINT (-72.94010164136279 40.88457837136987)'),
	 (86,'Oak Avenue',NULL,'(279) 671-4122',11967,'SRID=4326;POINT (-72.86710095978574 40.80313017405591)'),
	 (87,'Nursery Road',NULL,'(651) 584-2169',11747,'SRID=4326;POINT (-73.41186745344926 40.812232918838596)'),
	 (88,'Wading River Manor Road',NULL,'(171) 581-3293',11792,'SRID=4326;POINT (-72.83773570568343 40.93071142377405)'),
	 (89,'',NULL,'(158) 776-9715',11763,'SRID=4326;POINT (-72.98928148067378 40.82372360326898)'),
	 (90,'Marilyn Street',NULL,'(373) 615-3579',11730,'SRID=4326;POINT (-73.17798474973067 40.732347071454065)'),
	 (91,'State Place',NULL,'(405) 155-3984',11746,'SRID=4326;POINT (-73.36569550814288 40.83086105811383)'),
	 (92,'',NULL,'(720) 951-6657',11729,'SRID=4326;POINT (-73.31278092920519 40.760692218043104)'),
	 (93,'Beebe Court',NULL,'(443) 514-2134',11703,'SRID=4326;POINT (-73.32402302888187 40.74086347441292)'),
	 (94,'Silver Street',NULL,'(835) 905-9407',11784,'SRID=4326;POINT (-73.04429944914935 40.86690784658466)'),
	 (95,'Glenmere Lane',NULL,'(533) 625-4865',11727,'SRID=4326;POINT (-73.01656924175141 40.89642893815671)'),
	 (96,'Rinaldo Road',NULL,'(555) 373-5233',11768,'SRID=4326;POINT (-73.31623134056348 40.906076528057305)'),
	 (97,'',NULL,'(239) 580-3179',11754,'SRID=4326;POINT (-73.25300514131546 40.88524704889788)'),
	 (98,'Henry Street',NULL,'(716) 140-5189',11725,'SRID=4326;POINT (-73.29262860321039 40.808454410554496)'),
	 (99,'Sterling Court',NULL,'(870) 975-3039',11743,'SRID=4326;POINT (-73.43267739983204 40.87304862568451)'),
	 (100,'North Research Place',NULL,'(512) 154-8096',11722,'SRID=4326;POINT (-73.20247023879006 40.773720204209745)');

INSERT INTO staging.store_static (store_id,street_name,road_ref,phone,zip_code,geog) VALUES
	 (101,'Centereach Mall',NULL,'(000) 518-6138',11720,'SRID=4326;POINT (-73.0824715171069 40.862050713530344)'),
	 (102,'Scuttle Hole Road',NULL,'(187) 043-1260',11932,'SRID=4326;POINT (-72.3263521020654 40.95357734144255)'),
	 (103,'Andrea Road',NULL,'(120) 844-6676',11741,'SRID=4326;POINT (-73.0489508490145 40.77494630767793)'),
	 (104,'Smithtown Avenue',NULL,'(487) 200-5870',11716,'SRID=4326;POINT (-73.11101761423461 40.78550693669782)'),
	 (105,'Oceanside Street',NULL,'(421) 705-8605',11752,'SRID=4326;POINT (-73.16887709125797 40.76569017119265)'),
	 (106,'Justine Court',NULL,'(409) 596-3955',11751,'SRID=4326;POINT (-73.23382271207548 40.73880939289825)'),
	 (107,'Old Forge Hill Road',NULL,'(626) 087-6879',12553,'SRID=4326;POINT (-74.05163323965095 41.45777528260282)'),
	 (108,'Seminary Hill Road',NULL,'(958) 289-7516',10512,'SRID=4326;POINT (-73.67841882879122 41.420970435542095)'),
	 (109,'Winslow Gate Road',NULL,'(037) 430-3394',12601,'SRID=4326;POINT (-73.93248868771236 41.72730923853107)'),
	 (110,'Ring Road',NULL,'(005) 554-2632',14903,'SRID=4326;POINT (-76.86736440582771 42.161774757264574)'),
	 (111,'Wimbledon Court',NULL,'(140) 227-2595',11797,'SRID=4326;POINT (-73.47363610565426 40.814369597939375)'),
	 (112,'Rita Lane',NULL,'(835) 961-3544',11803,'SRID=4326;POINT (-73.47216938668946 40.786652382301014)'),
	 (113,'Vanderbilt Lane',NULL,'(421) 368-7141',11804,'SRID=4326;POINT (-73.45562888899178 40.763096022907604)'),
	 (114,'Morris Gate',NULL,'(393) 001-3036',11783,'SRID=4326;POINT (-73.49832598535824 40.673415908525435)'),
	 (115,'Wynsum Avenue',NULL,'(507) 858-6801',11566,'SRID=4326;POINT (-73.5417942211209 40.65569968770996)'),
	 (116,'Verly Court',NULL,'(419) 826-1492',11714,'SRID=4326;POINT (-73.48595713120622 40.72298796633778)'),
	 (117,'Hempstead Turnpike',NULL,'(723) 143-7185',11756,'SRID=4326;POINT (-73.52328208455945 40.72475105822495)'),
	 (118,'Charles Street',NULL,'(915) 623-9231',11552,'SRID=4326;POINT (-73.65512576176272 40.688436452894685)'),
	 (119,'',NULL,'(909) 156-4651',11753,'SRID=4326;POINT (-73.53082258483785 40.7807589541599)'),
	 (120,'Fulton Avenue',NULL,'(523) 561-8023',11040,'SRID=4326;POINT (-73.66234234016902 40.736379914058816)'),
	 (121,'Pilgrim Street',NULL,'(021) 997-1794',11040,'SRID=4326;POINT (-73.68687974125771 40.74719309311856)'),
	 (122,'Litchfield Avenue',NULL,'(933) 454-4595',11010,'SRID=4326;POINT (-73.68728239558729 40.698654287505796)'),
	 (123,'Ring Road South',NULL,'(264) 035-4803',11514,'SRID=4326;POINT (-73.6130216697552 40.733498522938916)'),
	 (124,'Carlton Court',NULL,'(075) 757-0513',11554,'SRID=4326;POINT (-73.55680697108835 40.71239730734805)'),
	 (125,'Lockwood Avenue',NULL,'(644) 099-3023',11735,'SRID=4326;POINT (-73.44828056933092 40.722697530874754)'),
	 (126,'Rufus Circle',NULL,'(160) 363-4324',13164,'SRID=4326;POINT (-76.29251640173733 43.122419147495016)'),
	 (127,'Obrien Road',NULL,'(549) 974-6357',13164,'SRID=4326;POINT (-76.29870094951399 43.13004612160012)'),
	 (128,'Apple Meadow Road',NULL,'(154) 972-6682',12172,'SRID=4326;POINT (-73.76315220355475 42.26389744158495)'),
	 (129,'Pine Grove Court',NULL,'(881) 727-3383',10517,'SRID=4326;POINT (-73.83322585896927 41.290477638605026)'),
	 (130,'Access Road',NULL,'(038) 535-4602',11518,'SRID=4326;POINT (-73.65646206527369 40.64006972564564)'),
	 (131,'Saratoga Boulevard',NULL,'(254) 643-3385',11558,'SRID=4326;POINT (-73.64522061549432 40.60936413848449)'),
	 (132,'Johnny Cake Lane',NULL,'(292) 860-9186',12018,'SRID=4326;POINT (-73.55326619635518 42.63377630125803)'),
	 (133,'Samsondale Plaza',NULL,'(393) 437-3594',10993,'SRID=4326;POINT (-73.98495933784793 41.206259494647696)'),
	 (134,'',NULL,'(669) 948-7078',12226,'SRID=4326;POINT (-73.79619744970451 42.685635030525056)'),
	 (135,'North Pearl Street',NULL,'(652) 257-0731',12204,'SRID=4326;POINT (-73.7363928911908 42.67834734554719)'),
	 (136,'Oakwood Place',NULL,'(529) 992-7098',12209,'SRID=4326;POINT (-73.82725646208604 42.623722241453514)'),
	 (137,'Skyway Shopping Center',NULL,'(931) 556-3865',12903,'SRID=4326;POINT (-73.44983784670377 44.68154342942223)'),
	 (138,'Burr Lane',NULL,'(569) 935-9110',11755,'SRID=4326;POINT (-73.13252542534543 40.86692113120768)'),
	 (139,'Gateway Boulevard',NULL,'(817) 319-8510',11741,'SRID=4326;POINT (-73.04003128793413 40.77945200118957)'),
	 (140,'Willow Place',NULL,'(048) 886-8698',11755,'SRID=4326;POINT (-73.1062003467896 40.837332585386626)'),
	 (141,'East Front Street',NULL,'(988) 962-5776',11944,'SRID=4326;POINT (-72.35903979325153 41.10245812458792)'),
	 (142,'Westminster Lane',NULL,'(666) 761-4128',11795,'SRID=4326;POINT (-73.29988600161255 40.719693966905645)'),
	 (143,'Gould Place',NULL,'(890) 488-9335',11718,'SRID=4326;POINT (-73.27501868196181 40.72615286920843)'),
	 (144,'Potter Boulevard',NULL,'(674) 275-9219',11718,'SRID=4326;POINT (-73.27041945772476 40.72833714475555)'),
	 (145,'Broadway Mall',NULL,'(683) 245-5502',14843,'SRID=4326;POINT (-77.66011147135835 42.326784939553974)'),
	 (146,'East Market Street',NULL,'(185) 033-7391',14830,'SRID=4326;POINT (-77.05068641798027 42.14271471658903)'),
	 (147,'Mansion Boulevard',NULL,'(305) 083-3878',12304,'SRID=4326;POINT (-73.89542740256904 42.77381174932539)'),
	 (148,'Ring Road',NULL,'(316) 893-7014',10917,'SRID=4326;POINT (-74.12557055072946 41.313210338532336)'),
	 (149,'Stanley Place',NULL,'(358) 926-0025',12550,'SRID=4326;POINT (-74.03219955607968 41.52728362134317)'),
	 (150,'Seward Avenue',NULL,'(413) 538-9533',10940,'SRID=4326;POINT (-74.43949831011734 41.449171565055394)'),
	 (151,'Fern Castle Drive',NULL,'(191) 403-8012',14622,'SRID=4326;POINT (-77.57147640746722 43.203981047460545)'),
	 (152,'Academy Street',NULL,'(463) 239-1355',14221,'SRID=4326;POINT (-78.7369681952921 42.96429886894846)'),
	 (153,'Young Street',NULL,'(240) 015-4693',14150,'SRID=4326;POINT (-78.85578376293554 43.00180858004246)'),
	 (154,'Pirson Parkway',NULL,'(721) 286-2527',14150,'SRID=4326;POINT (-78.89849061747347 42.99593309850903)'),
	 (155,'Irwinwood Road',NULL,'(032) 833-2592',14043,'SRID=4326;POINT (-78.6818506698702 42.896495681198054)'),
	 (156,'Polk Place',NULL,'(195) 883-9257',14207,'SRID=4326;POINT (-78.88139355166474 42.95814960532128)'),
	 (157,'Tremont Avenue',NULL,'(308) 083-7693',14217,'SRID=4326;POINT (-78.87770715731183 42.96597157120407)'),
	 (158,'Backman Avenue',NULL,'(457) 902-8925',12489,'SRID=4326;POINT (-74.39042975367778 41.720487672155265)'),
	 (159,'City Line Road',NULL,'(338) 661-7654',13126,'SRID=4326;POINT (-76.47233501680905 43.461099610546306)'),
	 (160,'Tow Path',NULL,'(287) 925-2364',12884,'SRID=4326;POINT (-73.57691296418899 43.10373795147536)'),
	 (161,'South Magee Street',NULL,'(222) 273-3330',14904,'SRID=4326;POINT (-76.8089994512593 42.09270614854575)'),
	 (162,'Forest Avenue',NULL,'(546) 946-6403',14701,'SRID=4326;POINT (-79.2411968375145 42.09200291295564)'),
	 (163,'Hickories Avenue',NULL,'(964) 767-1296',14720,'SRID=4326;POINT (-79.28963198289712 42.09610276798674)'),
	 (164,'Elmcrest Avenue',NULL,'(359) 793-2807',14750,'SRID=4326;POINT (-79.30887133332968 42.094375780511285)'),
	 (165,'Railroad Avenue',NULL,'(971) 202-4465',11598,'SRID=4326;POINT (-73.71243159015803 40.632501276527485)'),
	 (166,'Saint George Place',NULL,'(889) 930-5632',11096,'SRID=4326;POINT (-73.75077685477922 40.61349797595067)'),
	 (167,'Gates 5 Road',NULL,'(824) 908-2833',11429,'SRID=4326;POINT (-73.72046937051881 40.71145364516857)'),
	 (168,'Cinema Drive',NULL,'(872) 279-8766',14778,'SRID=4326;POINT (-78.46504478053531 42.08000753395419)'),
	 (169,'North Barry Street',NULL,'(331) 921-2623',14760,'SRID=4326;POINT (-78.42792776537674 42.08597794124114)'),
	 (170,'Rockwell Road',NULL,'(600) 715-0684',13205,'SRID=4326;POINT (-76.13571086704603 42.97467273783093)'),
	 (171,'Sunflower Drive',NULL,'(762) 689-8404',13088,'SRID=4326;POINT (-76.19893892354509 43.10575845191428)'),
	 (172,'Myrtle Street',NULL,'(048) 228-2369',13204,'SRID=4326;POINT (-76.19465698021124 43.04873576106979)'),
	 (173,'Basile Rowe',NULL,'(797) 810-4573',13214,'SRID=4326;POINT (-76.05928341927537 43.06335027994388)'),
	 (174,'Olcott Avenue',NULL,'(997) 298-8010',10520,'SRID=4326;POINT (-73.88096465283135 41.201637039559984)'),
	 (175,'Whitman Street',NULL,'(184) 845-6775',10706,'SRID=4326;POINT (-73.8812842776538 40.9947716133475)'),
	 (176,'Depot Way West',NULL,'(674) 484-1339',10538,'SRID=4326;POINT (-73.75798638049214 40.934136172745696)'),
	 (177,'Wheeler Avenue',NULL,'(262) 680-4709',10570,'SRID=4326;POINT (-73.79153978656382 41.13409466739384)'),
	 (178,'Wildey Street',NULL,'(024) 622-7552',10591,'SRID=4326;POINT (-73.86343148048601 41.08001931305958)'),
	 (179,'William Street',NULL,'(309) 025-2833',10601,'SRID=4326;POINT (-73.76896216262921 41.03227314771859)'),
	 (180,'Market Street',NULL,'(545) 157-2242',10710,'SRID=4326;POINT (-73.85672497523971 40.96536826175351)'),
	 (181,'Fairway Drive',NULL,'(175) 752-1097',11547,'SRID=4326;POINT (-73.66142910312318 40.825170479408136)'),
	 (182,'Ryder Place',NULL,'(686) 148-7968',11518,'SRID=4326;POINT (-73.66023603202963 40.645434256709045)'),
	 (183,'Caroline Place',NULL,'(507) 133-2667',11001,'SRID=4326;POINT (-73.70700092838645 40.72469319781405)'),
	 (184,'Gold Street',NULL,'(112) 581-7707',11520,'SRID=4326;POINT (-73.57695514550262 40.6543584502534)'),
	 (185,'Phillips Road',NULL,'(815) 932-6306',11542,'SRID=4326;POINT (-73.62565293886519 40.87321799042381)'),
	 (186,'Stuart Street',NULL,'(673) 867-1625',11023,'SRID=4326;POINT (-73.7365302889004 40.79990764561256)'),
	 (187,'Sewell Street',NULL,'(052) 118-1024',11550,'SRID=4326;POINT (-73.62735233521396 40.70139603553126)'),
	 (188,'Riverside Boulevard',NULL,'(743) 830-7615',11561,'SRID=4326;POINT (-73.6612168555538 40.58712753087246)'),
	 (189,'Norman Street',NULL,'(606) 404-3009',11563,'SRID=4326;POINT (-73.6825110315235 40.65601552756114)'),
	 (190,'',NULL,'(482) 159-4263',11547,'SRID=4326;POINT (-73.62572776800936 40.83267057237987)'),
	 (191,'',NULL,'(911) 899-0968',11501,'SRID=4326;POINT (-73.63594365982843 40.74160274140874)'),
	 (192,'Roosevelt Field Access Road',NULL,'(519) 373-5099',11514,'SRID=4326;POINT (-73.61452447520186 40.74312770770026)'),
	 (193,'Waldo Avenue',NULL,'(566) 398-6508',11548,'SRID=4326;POINT (-73.62543900885947 40.80790405622501)'),
	 (194,'Forest Drive',NULL,'(597) 433-0742',11576,'SRID=4326;POINT (-73.63382285864388 40.80642538667372)'),
	 (195,'Orchard Street',NULL,'(079) 944-5542',11771,'SRID=4326;POINT (-73.53441001450014 40.87150540437051)'),
	 (196,'Ridge Drive East',NULL,'(385) 540-8008',11576,'SRID=4326;POINT (-73.66034846596851 40.80067790668701)'),
	 (197,'Channel Drive',NULL,'(729) 307-7799',11050,'SRID=4326;POINT (-73.70140044400566 40.84195229352627)'),
	 (198,'South Fulton Street',NULL,'(689) 897-2444',11590,'SRID=4326;POINT (-73.58914740623396 40.747684245993746)'),
	 (199,'Franklin Street',NULL,'(375) 992-3916',11596,'SRID=4326;POINT (-73.64666233250502 40.76219172996489)'),
	 (200,'Washington Street',NULL,'(154) 701-5481',12202,'SRID=4326;POINT (-73.74408245283766 42.64018185773971)'),
	 (201,'George E Halliday Drive',NULL,'(037) 129-6698',12204,'SRID=4326;POINT (-73.68612611067773 42.69681218506501)'),
	 (202,'Marion Avenue',NULL,'(704) 152-1603',12198,'SRID=4326;POINT (-73.6445806393694 42.695145138022674)'),
	 (203,'Hudson Street',NULL,'(099) 428-6979',12801,'SRID=4326;POINT (-73.63778826294609 43.30393263732453)'),
	 (204,'Catskill Commons',NULL,'(692) 083-2185',12414,'SRID=4326;POINT (-73.8824246 42.21447115221459)'),
 	 (205,'Regate Austin',NULL,'(692) 083-2185',12414,'SRID=4326;POINT (-73.8824246 42.21447115221459)');

	----- End of static data -----
/*
 * UPSERT rows from the staging table into the live table.
 */	
INSERT INTO bluebox.store SELECT * FROM staging.store_static
ON CONFLICT (store_id) DO UPDATE SET 
	street_name = excluded.street_name, 
	road_ref = excluded.road_ref,
	phone = excluded.phone,
	zip_code = excluded.zip_code,
	geog = excluded.geog;

/*
 * Delete any rows that no longer exists in the main table.
 * 
 * This doesn't have to be a DELETE. For instance, we probably
 * don't want to delete stores from the database because other
 * data relies on it historically. So this might be an update
 * of the production table to set an active flag to false.
 */
DELETE FROM bluebox.store s WHERE NOT EXISTS (
	SELECT FROM staging.store_static stst 
	WHERE s.store_id = stst.store_id
);

/*
 * Drop the temporary table
 */
DROP TABLE staging.store_static;