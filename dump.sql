\connect "ONline_store"

--
-- TOC entry 3456 (class 0 OID 16546)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO users (id, email, password, role, "createdAt", "updatedAt", photo) VALUES (9991, 'mark@mail.ru', '$2b$05$POCgQlhzbtAUFHE4LjI4I.wiwLE5CcFj9r12yg7fC1GA8tOp/4VnO', 'USER', '2022-10-17 10:51:48.897+03', '2022-10-17 10:51:48.897+03', NULL);
INSERT INTO users (id, email, password, role, "createdAt", "updatedAt", photo) VALUES (9992, 'ADMIN', '$2b$05$kYTdRS6ytIpuTA6ebFjeheO6osNQGb3bBXXWrk3fJInXFZwzr2.aO', 'ADMIN', '2021-11-02 14:11:53.022+03', '2023-06-07 00:16:11.829+03', 'a085628b-a019-4741-88ea-70573676c871.jpg');
INSERT INTO users (id, email, password, role, "createdAt", "updatedAt", photo) VALUES (9993, 'marudov009@gmail.com', '$2b$05$jBd4NLbkqy8ajFehPesgZO7XlX7mI21Ojwv3/UrdJTIJwNAJexLCa', 'USER', '2023-05-24 21:27:13.33+03', '2023-06-12 01:45:03.701+03', 'dfaec6f3-df1e-41d8-af38-2d16530589c6.jpg');

INSERT INTO baskets (id, "createdAt", "updatedAt", "userId") VALUES (9991, '2021-11-02 14:11:53.032+03', '2021-11-02 14:11:53.032+03', 9991);
INSERT INTO baskets (id, "createdAt", "updatedAt", "userId") VALUES (9992, '2022-10-17 10:51:48.901+03', '2022-10-17 10:51:48.901+03', 9992);
INSERT INTO baskets (id, "createdAt", "updatedAt", "userId") VALUES (9993, '2023-05-24 21:27:13.342+03', '2023-05-24 21:27:13.342+03', 9993);


INSERT INTO brands (id, name, "createdAt", "updatedAt") VALUES (9952, 'В наличии', '2023-06-06 23:24:30.947+03', '2023-06-06 23:24:30.947+03');
INSERT INTO brands (id, name, "createdAt", "updatedAt") VALUES (9953, 'Под заказ', '2023-06-06 23:24:45.272+03', '2023-06-06 23:24:45.272+03');


--
-- TOC entry 3480 (class 0 OID 16772)
-- Dependencies: 234
-- Data for Name: device_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO types (id, name, "createdAt", "updatedAt") VALUES (9916, 'Портмоне', '2022-10-17 01:13:52.318+03', '2022-10-17 01:13:52.318+03');
INSERT INTO types (id, name, "createdAt", "updatedAt") VALUES (9914, 'Бумажники и документницы', '2022-10-16 21:44:14.251+03', '2022-10-16 21:44:14.251+03');
INSERT INTO types (id, name, "createdAt", "updatedAt") VALUES (9921, 'Обложки и картхолдеры', '2022-11-16 00:51:56.751+03', '2022-11-16 00:51:56.751+03');
INSERT INTO types (id, name, "createdAt", "updatedAt") VALUES (9920, 'Сумки и рюкзаки', '2022-11-16 00:51:39.276+03', '2022-11-16 00:51:39.276+03');
INSERT INTO types (id, name, "createdAt", "updatedAt") VALUES (9918, 'Клатчи и несессеры', '2022-11-16 00:49:29.862+03', '2022-11-16 00:49:29.862+03');
INSERT INTO types (id, name, "createdAt", "updatedAt") VALUES (9922, 'Эксклюзив от мастера', '2022-11-16 00:53:10.006+03', '2022-11-16 00:53:10.006+03');
INSERT INTO types (id, name, "createdAt", "updatedAt") VALUES (9927, 'Чемоданы', '2023-06-07 15:16:55.87+03', '2023-06-07 15:16:55.87+03');


--
-- TOC entry 3478 (class 0 OID 16750)
-- Dependencies: 232
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9971, 'Клатч Gentle Max', 160.00, 0, '5b933dbd-8ff6-4685-97da-f2f921f64502.jpg', '2023-06-07 02:01:20.663+03', '2023-06-07 02:12:30.206+03', 9918, 9952, 'eed1d38e-d5bd-4524-8009-b577c1f31b82.jpg', 'abc8b938-228a-498a-9cc9-93d14098732d.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9972, 'Клатч Wrangler', 190.00, 0, 'b0d7a0f3-7d22-48cf-b2e8-e3b3ab26df8b.jpg', '2023-06-07 02:04:00.042+03', '2023-06-07 02:13:33.754+03', 9918, 9952, '4631c1e9-962a-4553-b3fa-1a1efd9fefb1.jpg', 'cef87bd7-7c08-48a6-918f-9e7e9dc2c82e.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9973, 'Несессер Буханка', 150.00, 0, '00ce5145-bd71-4049-9c15-c0e04d5f54a6.jpg', '2023-06-07 02:19:06.275+03', '2023-06-07 02:19:06.275+03', 9918, 9952, 'a205c483-3fcf-4167-8d96-40a4e400cda9.jpg', '5e97795b-c2f1-4390-b5cc-7188f9e84866.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9974, 'Несессер Буханочка', 130.00, 0, '9faedff1-47e3-4842-97c7-2697a2ed56ff.jpg', '2023-06-07 02:33:52.754+03', '2023-06-07 02:33:52.754+03', 9918, 9952, 'fc07a870-f635-4604-95b0-7526898493b8.jpg', '45c46a5b-c049-4bd3-ba28-c9bd5039b855.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9975, 'Чемодан блек', 999.09, 0, '0fd92f20-4a5f-4639-8233-348f4ef46e86.jpg', '2023-06-07 15:19:39.35+03', '2023-06-07 15:20:04.745+03', 9927, 9952, '7a75fd2f-b2e2-4d7d-b96f-e841ffac72e1.jpg', NULL);
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9957, 'Портмоне Traveler', 145.00, 0, 'cd3ceca2-0bf7-49b8-9e0b-ca9aa3b99d7c.jpg', '2023-06-06 23:37:32.669+03', '2023-06-06 23:37:32.669+03', 9916, 9952, '4dffe61e-afcc-4c2a-924e-5b4e6fd6d459.jpg', '633c6296-440e-472a-a208-a248444396d3.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9958, 'Сумка old school', 450.00, 0, 'f3ad30b8-565c-46db-a48f-53d6bdd2bb5b.jpg', '2023-06-06 23:49:17.189+03', '2023-06-06 23:49:17.189+03', 9922, 9953, 'f3cd88a9-74da-4f3a-916d-a09d0446b108.jpg', NULL);
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9959, 'Портмоне Morse', 145.00, 0, '5a478380-c031-4d5c-b485-f102888d2515.jpg', '2023-06-07 00:30:23.139+03', '2023-06-07 00:30:23.139+03', 9916, 9952, '422bf551-d973-4c2c-bf08-af5305edce2c.jpg', '1ab60780-11ee-4d47-a876-d79c9464355e.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9960, 'Портмоне zipper', 150.55, 0, '7ce14c79-3bf9-45b8-bb3f-4968532e65ee.jpg', '2023-06-07 01:08:46.948+03', '2023-06-07 01:09:10.562+03', 9916, 9952, 'a00f9e2b-2da2-4a13-84cf-05f09442fb18.jpg', '3dbd42cb-abac-4122-9d0a-e05fc9b890ca.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9961, 'Документница Keeper', 130.00, 0, '743cb847-e06f-4781-9151-7055de764977.jpg', '2023-06-07 01:22:58.497+03', '2023-06-07 01:22:58.497+03', 9914, 9952, '8d0d172e-b7cb-4767-8dc2-46579179d538.jpg', '56133dc1-3aea-4d52-8677-b5936577a0fd.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9965, 'Бумажник Classic', 154.99, 0, '5e44b35e-72ae-4612-ae26-a7eb67bc7585.jpg', '2023-06-07 01:29:55.957+03', '2023-06-07 01:29:55.957+03', 9914, 9952, '651b1cb1-db98-4c00-954b-a803abe227df.jpg', NULL);
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9966, 'Документница Max', 105.99, 0, '91296904-ba80-403b-a154-bc6e81a0b4a5.jpg', '2023-06-07 01:34:47.78+03', '2023-06-07 01:34:47.78+03', 9914, 9952, '767617e1-0b63-43f6-aa8c-f213df0aefc2.jpg', NULL);
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9968, 'Документница Mini', 99.00, 0, 'a9e7b849-8ca4-45bc-99b5-cd382df42731.jpg', '2023-06-07 01:41:34.63+03', '2023-06-07 01:41:34.63+03', 9914, 9952, '3fbc2149-fce2-4e43-8495-9c74b303a713.jpg', NULL);
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9969, 'Документница order', 79.99, 0, 'f025a3a9-aec4-43be-8307-7c984c875d4e.jpg', '2023-06-07 01:44:00.415+03', '2023-06-07 01:44:00.415+03', 9914, 9952, '194f1910-b048-4357-b6f5-4029fbf8fb99.jpg', 'add81fd3-89b7-4f7e-ac78-769d2523bfbd.jpg');
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9967, 'Бумажник button', 105.99, 0, '15ea22c9-e64b-46f1-9f10-e2b7e1c10c4c.jpg', '2023-06-07 01:37:48.86+03', '2023-06-07 01:44:32.198+03', 9914, 9952, 'a1aaa0b1-63b4-42be-bf49-01d7792c1fa9.jpg', NULL);
INSERT INTO devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId", img2, img3) VALUES (9970, 'Клатч Harber', 500.00, 0, '66442bdf-2ff1-4c06-8e37-578bd830928f.jpg', '2023-06-07 01:59:37.765+03', '2023-06-07 01:59:37.765+03', 9918, 9952, 'b8e60121-76ef-4f83-b3dc-c326cfda1afd.jpg', 'b48914b4-e6ae-46d7-9803-69376d8af05c.jpg');



INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99251, 'Материал', 'натуральная кожа', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99252, 'Назначение', 'для неё', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99253, 'Тип', 'кошелёк', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99254, 'Цвет', 'красный', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99255, 'Полное наименование', 'кошелек сувенирный (натуральная кожа) с художественной вставкой', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99256, 'Вес', '95 г', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99257, 'Размер', '121*95*23 мм', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99272, 'ппп', 'ппп', '2023-05-11 11:34:22.202+03', '2023-05-11 11:34:22.202+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99273, 'ппп', 'п', '2023-05-11 11:34:22.202+03', '2023-05-11 11:34:22.202+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99279, 'rr', 'rr', '2023-05-25 12:17:30.845+03', '2023-05-25 12:17:30.845+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99280, 'Marx', 'aaa', '2023-05-25 12:19:10.348+03', '2023-05-25 12:19:10.348+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99274, 'Color', 'Black', '2023-05-24 21:24:42.228+03', '2023-05-24 21:24:42.228+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99296, 'Тип', 'сумка', '2023-06-07 00:31:00.356+03', '2023-06-07 00:31:00.356+03', 9958);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99312, 'Об изделии', 'документница Max выполнен из итальянской кожи crazy horse с винтажным эффектом со временем покрывается патинами и царапинками, что делает его более дорогим на вид', '2023-06-07 01:34:47.811+03', '2023-06-07 01:34:47.811+03', 9966);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99313, 'Назначение', 'для него\для неё', '2023-06-07 01:34:47.812+03', '2023-06-07 01:34:47.812+03', 9966);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99314, 'Тип', 'документница', '2023-06-07 01:34:47.812+03', '2023-06-07 01:34:47.812+03', 9966);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99315, 'Доступные цвета', 'шоколад, кофе', '2023-06-07 01:34:47.812+03', '2023-06-07 01:34:47.812+03', 9966);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99316, 'Вес', '110г', '2023-06-07 01:34:47.812+03', '2023-06-07 01:34:47.812+03', 9966);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9915, 'Лицензия', 'Бесплатная', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9916, 'Версия', '1.72.1', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9917, 'ОС', 'Windows 11, 10, 8, 8.1', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9918, 'Разработчик', 'Microsoft Corporation', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9919, 'Категории', 'Редакторы кода', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9920, 'Размер', '78 Мб', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99317, 'Размер', '15*10,5 см', '2023-06-07 01:34:47.812+03', '2023-06-07 01:34:47.812+03', 9966);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99336, 'Об изделии', 'Клатч унисекс, подходит как мужскому, так и женскому полу. Имеет  2 отдела для купюр 12 отделов для карт отделение под мелочь на замочке и 2 больших отдела под паспорт\телефон и тд', '2023-06-07 01:59:37.797+03', '2023-06-07 01:59:37.797+03', 9970);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99337, 'Назначение', 'для него\для неё', '2023-06-07 01:59:37.797+03', '2023-06-07 01:59:37.797+03', 9970);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99338, 'Тип', 'клатч', '2023-06-07 01:59:37.797+03', '2023-06-07 01:59:37.797+03', 9970);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99339, 'Доступные цвета', 'изумруд, кофе', '2023-06-07 01:59:37.797+03', '2023-06-07 01:59:37.797+03', 9970);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99340, 'Вес', '350г', '2023-06-07 01:59:37.797+03', '2023-06-07 01:59:37.797+03', 9970);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99357, 'Об изделии', 'То, что нужно взять с собой в дорогу. В путешествиях или в длительных поездках незаменимая штука. Будет хранить ваши бритвенные принадлежности, либо заменит тканевую косметичку. Компактная версия версия Буханки', '2023-06-07 02:33:52.786+03', '2023-06-07 02:33:52.786+03', 9974);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99358, 'Назначение', 'для него\для неё', '2023-06-07 02:33:52.786+03', '2023-06-07 02:33:52.786+03', 9974);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99359, 'Тип', 'несессер', '2023-06-07 02:33:52.786+03', '2023-06-07 02:33:52.786+03', 9974);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99360, 'Доступные цвета', 'чёрный', '2023-06-07 02:33:52.786+03', '2023-06-07 02:33:52.786+03', 9974);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99361, 'Вес', '200г', '2023-06-07 02:33:52.786+03', '2023-06-07 02:33:52.786+03', 9974);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99362, 'Объём', '1.5л', '2023-06-07 02:33:52.786+03', '2023-06-07 02:33:52.786+03', 9974);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99363, 'Об изделии', 'це чемодан', '2023-06-07 15:19:39.419+03', '2023-06-07 15:19:39.419+03', 9975);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99364, 'цвет', 'синий, чёрный', '2023-06-07 15:19:39.419+03', '2023-06-07 15:19:39.419+03', 9975);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99365, 'Вес', '2кг', '2023-06-07 15:19:39.419+03', '2023-06-07 15:19:39.419+03', 9975);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99366, '', '', '2023-06-07 15:19:39.419+03', '2023-06-07 15:19:39.419+03', 9975);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99258, 'Коллекция', 'Геометрия', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99261, 'Тип', 'кошелёк', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99262, 'Цвет', 'чёрный', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99263, 'Полное наименование', 'кошелек сувенирный (натуральная кожа) с художественной вставкой', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99264, 'Вес', '95 г', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99265, 'Размер', '121*95*23 мм', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99275, 'ааа', '333', '2023-05-25 11:53:14.779+03', '2023-05-25 11:53:14.779+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99281, 'Об изделии', 'портмоне Traveler выполнен из итальянской кожи crazy horse с винтажным эффектом со временем покрывается патинами и царапинками, что делает его более благородным', '2023-06-06 23:37:32.705+03', '2023-06-06 23:37:32.705+03', 9957);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99129, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99130, 'Версия', '9.1.2', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99131, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99132, 'Интерфейс', 'Русский', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99133, 'Категория', 'Видео редакторы', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99134, 'Размер', '3 Гб', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99141, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99142, 'Версия', '17.1.2', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99143, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99144, 'Интерфейс', 'Русский', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99145, 'Категория', 'Видео редакторы', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99146, 'Размер', '3 Гб', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99123, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99124, 'Версия', '22.1.2', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99125, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99126, 'Интерфейс', 'Русский', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99127, 'Категория', 'Почта', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99128, 'Размер', '10 Мб', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99283, 'Тип', 'портмоне', '2023-06-06 23:37:32.705+03', '2023-06-06 23:37:32.705+03', 9957);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99284, 'Вес', '120г', '2023-06-06 23:37:32.705+03', '2023-06-06 23:37:32.705+03', 9957);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99297, 'Об изделии', 'Портмоне zipper выполнен из итальянской кожи crazy horse с винтажным эффектом со временем покрывается патинами и царапинками, что делает его более дорогим на вид', '2023-06-07 01:08:46.98+03', '2023-06-07 01:08:46.98+03', 9960);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99299, 'Тип', 'портмоне', '2023-06-07 01:08:46.98+03', '2023-06-07 01:08:46.98+03', 9960);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99300, 'Вес', '140г', '2023-06-07 01:08:46.98+03', '2023-06-07 01:08:46.98+03', 9960);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99301, 'Доступные цвета', 'табак, изумруд', '2023-06-07 01:08:46.98+03', '2023-06-07 01:08:46.98+03', 9960);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99282, 'Назначение', 'для него\для неё', '2023-06-06 23:37:32.705+03', '2023-06-07 01:15:12.18+03', 9957);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99298, 'Назначение', 'для него\для неё', '2023-06-07 01:08:46.98+03', '2023-06-07 01:15:28.14+03', 9960);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99318, 'Об изделии', 'бумажник button выполнен из итальянской кожи crazy horse', '2023-06-07 01:37:48.895+03', '2023-06-07 01:37:48.895+03', 9967);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99319, 'Назначение', 'для него', '2023-06-07 01:37:48.895+03', '2023-06-07 01:37:48.895+03', 9967);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99320, 'Тип', 'бумажник', '2023-06-07 01:37:48.895+03', '2023-06-07 01:37:48.895+03', 9967);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99321, 'Доступные цвета', 'чёрный', '2023-06-07 01:37:48.895+03', '2023-06-07 01:37:48.895+03', 9967);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99322, 'Вес', '100г', '2023-06-07 01:37:48.895+03', '2023-06-07 01:37:48.895+03', 9967);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9998, 'Размер', '350 Мб', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9999, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99100, 'Ограничение', '30 дней', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9999101, 'Версия', '2020.3.1', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9999102, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9999103, 'Категория', 'Редакторы кода', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99104, 'Размер', '500 Мб', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99105, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99106, 'Ограничение', '30 дней', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99107, 'Версия', '2021.3.1', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99108, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99109, 'Категория', 'Редакторы кода', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99110, 'Размер', '500 Мб', '2022-11-16 02:57:59.351+03', '2022-11-16 02:57:59.351+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99111, 'Лицензия', 'бесплатная', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99112, 'Версия', '22.7.2', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99113, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99114, 'Интерфейс', 'Русский', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99115, 'Категория', 'Браузеры', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99116, 'Размер', '5 Мб', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9999323, 'Размер', '15*8,5 см', '2023-06-07 01:37:48.895+03', '2023-06-07 01:37:48.895+03', 9967);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99341, 'Об изделии', 'клатч Gentle Max выполнен из итальянской кожи crazy horse с винтажным эффектом со временем покрывается патинами и царапинками, что делает его более дорогим на вид', '2023-06-07 02:01:20.694+03', '2023-06-07 02:01:20.694+03', 9971);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99342, 'Назначение', 'для него\для неё', '2023-06-07 02:01:20.694+03', '2023-06-07 02:01:20.694+03', 9971);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99343, 'Тип', 'клатч', '2023-06-07 02:01:20.694+03', '2023-06-07 02:01:20.694+03', 9971);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99344, 'Доступные цвета', 'изумруд, кофе', '2023-06-07 02:01:20.694+03', '2023-06-07 02:01:20.694+03', 9971);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99345, 'Вес', '300г', '2023-06-07 02:01:20.694+03', '2023-06-07 02:01:20.694+03', 9971);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99276, 'ff', 'f', '2023-05-25 11:59:25.099+03', '2023-05-25 11:59:25.099+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99277, 'ff', 'f', '2023-05-25 11:59:25.1+03', '2023-05-25 11:59:25.1+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99267, '2222', 'eded', '2023-04-29 09:59:37.931+03', '2023-06-06 00:14:23.243+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99285, 'Об изделии', 'сумка old school - это эксклюзивная сумка от Бренда Comrade. Выполнена из толстой и плотной ременной кожи в эксклюзивном цвете', '2023-06-06 23:49:17.22+03', '2023-06-06 23:49:17.22+03', 9958);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99286, 'Назначение', 'для него\для неё', '2023-06-06 23:49:17.22+03', '2023-06-06 23:49:17.22+03', 9958);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99287, 'Цвет', 'полуночный синий', '2023-06-06 23:49:17.22+03', '2023-06-06 23:49:17.22+03', 9958);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99288, 'Вес', '400г', '2023-06-06 23:49:17.22+03', '2023-06-06 23:49:17.22+03', 9958);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99289, 'Размеры', '23*12*11 см', '2023-06-06 23:49:17.22+03', '2023-06-06 23:49:17.22+03', 9958);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99302, 'Об изделии', 'Хранитель ваших документов и карточек. Вмещает рубли, доллары, евро, паспорт и 4 отдела под карты. Они, к слову, надежно сидят в кармашках', '2023-06-07 01:22:58.53+03', '2023-06-07 01:22:58.53+03', 9961);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99303, 'Назначение', 'для него\для неё', '2023-06-07 01:22:58.53+03', '2023-06-07 01:22:58.53+03', 9961);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99304, 'Тип', 'документница', '2023-06-07 01:22:58.53+03', '2023-06-07 01:22:58.53+03', 9961);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99305, 'Доступные цвета', 'табак, винный', '2023-06-07 01:22:58.53+03', '2023-06-07 01:22:58.53+03', 9961);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99306, 'Вес', '90г', '2023-06-07 01:22:58.53+03', '2023-06-07 01:22:58.53+03', 9961);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99324, 'Об изделии', 'документница Mini выполнена из итальянской кожи crazy horse с винтажным эффектом со временем покрывается патинами и царапинками, что делает его более дорогим на вид', '2023-06-07 01:41:34.761+03', '2023-06-07 01:41:34.761+03', 9968);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99325, 'Назначение', 'для него\для неё', '2023-06-07 01:41:34.761+03', '2023-06-07 01:41:34.761+03', 9968);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99326, 'Тип', 'документница ', '2023-06-07 01:41:34.761+03', '2023-06-07 01:41:34.761+03', 9968);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99327, 'Доступные цвета', 'рубин', '2023-06-07 01:41:34.762+03', '2023-06-07 01:41:34.762+03', 9968);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99328, 'Вес', '100г', '2023-06-07 01:41:34.762+03', '2023-06-07 01:41:34.762+03', 9968);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99329, 'Размер', '10*7,5 см', '2023-06-07 01:41:34.762+03', '2023-06-07 01:41:34.762+03', 9968);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99346, 'Об изделии', 'Имеет: Отдел под мелочь (вмещает паспорт и многое другое); Отдел для купюр; Отдел для телефона; 6 слотов для карт; Отдел свободного назначения', '2023-06-07 02:04:00.076+03', '2023-06-07 02:04:00.076+03', 9972);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99347, 'Назначение', 'для неё', '2023-06-07 02:04:00.076+03', '2023-06-07 02:04:00.076+03', 9972);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99348, 'Тип', 'клатч', '2023-06-07 02:04:00.076+03', '2023-06-07 02:04:00.076+03', 9972);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99349, 'Доступные цвета', 'рубин', '2023-06-07 02:04:00.076+03', '2023-06-07 02:04:00.076+03', 9972);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99350, 'Вес', '295г', '2023-06-07 02:04:00.076+03', '2023-06-07 02:04:00.076+03', 9972);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99211, 'Лицензия', 'Платная', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99212, 'Версия', '10.4', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99213, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99214, 'Категория', 'Графический редактор', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99215, 'Размер', '2 Гб', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99167, 'Версия', '15.1', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99168, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99169, 'Интерфейс', 'Английский', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99170, 'Категории', 'Антивирусные программы', '2022-11-16 04:13:39.851+03', '2022-11-16 04:13:39.851+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99171, 'Размер', '1 Мб', '2022-11-16 04:13:39.851+03', '2022-11-16 04:13:39.851+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9969, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9970, 'Ограничение', '30 дней', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9971, 'Версия', '9.7.5', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9972, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9973, 'Категория', 'Аудио редакторы', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9974, 'Размер', '2.6 Гб', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9975, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:53:27.676+03', '2022-11-16 02:53:27.676+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9976, 'Ограничение', '30 дней', '2022-11-16 02:53:27.676+03', '2022-11-16 02:53:27.676+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9977, 'Версия', '2021.2.1', '2022-11-16 02:53:27.676+03', '2022-11-16 02:53:27.676+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9978, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:53:27.677+03', '2022-11-16 02:53:27.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9979, 'Категория', 'Редакторы кода', '2022-11-16 02:53:27.677+03', '2022-11-16 02:53:27.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9980, 'Размер', '415 Мб', '2022-11-16 02:53:27.677+03', '2022-11-16 02:53:27.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9981, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9982, 'Ограничение', '30 дней', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9983, 'Версия', '2020.3.1', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9984, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9985, 'Категория', 'Редакторы кода', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9986, 'Размер', '400 Мб', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9987, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9988, 'Ограничение', '30 дней', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9989, 'Версия', '2020.3.1', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9990, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9991, 'Категория', 'Редакторы кода', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9992, 'Размер', '400 Мб', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9993, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9994, 'Ограничение', '30 дней', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9995, 'Версия', '2020.3.1', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9996, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9997, 'Категория', 'Редакторы кода', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99117, 'Лицензия', 'бесплатная', '2022-11-16 03:10:54.131+03', '2022-11-16 03:10:54.131+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99118, 'Версия', '22.1.2', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99119, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99120, 'Интерфейс', 'Русский', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99121, 'Категория', 'Почта', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99122, 'Размер', '10 Мб', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99135, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99136, 'Версия', '9.1.2', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99137, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99138, 'Интерфейс', 'Русский', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99139, 'Категория', 'Аудио редакторы', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99140, 'Размер', '3 Гб', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99147, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99148, 'Версия', '10.2.1', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99149, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99150, 'Интерфейс', 'Русский', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99151, 'Категория', 'Аудио редакторы', '2022-11-16 03:28:21.402+03', '2022-11-16 03:28:21.402+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99152, 'Размер', '2 Гб', '2022-11-16 03:28:21.402+03', '2022-11-16 03:28:21.402+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99153, 'Лицензия', 'Платная', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99154, 'Ограничение', 'Демо-версия 30 дней', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99155, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99156, 'Интерфейс', 'Английский', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99157, 'Категория', 'Видео редакторы', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99158, 'Размер', '800 Мб', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99159, 'Лицензия', 'Демо-версия', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99160, 'Ограничение', '30 дней, распознаёт 100 страниц', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99161, 'Версия', '11 pro', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99162, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99163, 'Интерфейс', 'Английский, Русский, Польский', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99164, 'Категории', 'Офис и текст', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99165, 'Размер', '350 Мб', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99166, 'Лицензия', 'Бесплатно', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99172, 'Лицензия', 'Бесплатно', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99173, 'Версия', '10.1', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99174, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99175, 'Интерфейс', 'Английский', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99176, 'Категории', 'Антивирусные программы', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99177, 'Размер', '2 Мб', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99178, 'Лицензия', 'Платно', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99179, 'Версия', '10.1', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99180, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99181, 'Интерфейс', 'Английский, Русский', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99182, 'Категории', 'Антивирусные программы', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99183, 'Размер', '50 Мб', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99196, 'Лицензия', 'Бесплатная', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99197, 'Версия', '11.1', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99198, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99199, 'Категория', 'Офис и текст', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99200, 'Размер', '1.5 Мб', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99201, 'Лицензия', 'Платная', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99202, 'Версия', '14.2', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99203, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99204, 'Категория', 'Графический редактор', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99205, 'Размер', '2 Мб', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99206, 'Лицензия', 'Платная', '2022-11-16 04:49:17.472+03', '2022-11-16 04:49:17.472+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99207, 'Версия', '14.2', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99208, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99209, 'Категория', 'Графический редактор', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99210, 'Размер', '2 Мб', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99216, 'Лицензия', 'Платная', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99217, 'Версия', '2017 14.2.198', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99218, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99278, 'errr', 'rr', '2023-05-25 12:17:30.844+03', '2023-05-25 12:17:30.844+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99290, 'Доступные цвета', 'Табак, винный', '2023-06-07 00:26:27.237+03', '2023-06-07 00:26:27.237+03', 9957);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99219, 'Категория', 'Графический редактор', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99220, 'Размер', '3 Гб', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99221, 'Лицензия', 'Платная', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99222, 'Версия', '2019 10.2.101', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99223, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99224, 'Категория', 'Графический редактор', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99225, 'Размер', '1.5 Гб', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9921, 'Лицензия', 'Бесплатная', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9922, 'Версия', '1.72.1', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9923, 'ОС', 'Windows 11, 10, 8.1, 8', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9924, 'Интерфейс', 'Английский, русский', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9925, 'Категории', 'Редакторы кода', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9926, 'Размер', '78 Мб', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9927, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9928, 'Версия', '2019.1.1', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9929, 'ОС', 'Windows 11, 10, 8.1, 8', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9930, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9931, 'Разработчик', 'Microsoft Corporation', '2022-11-16 02:03:30.525+03', '2022-11-16 02:03:30.525+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9932, 'Размер', '2.5 Гб', '2022-11-16 02:03:30.525+03', '2022-11-16 02:03:30.525+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9933, 'Лицензия', 'Бесплатная', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9934, 'Версия', '107.0.1381', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9935, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9936, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9937, 'Категория', 'Браузеры', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9938, 'Размер', '200 Мб', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9939, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:21:56.288+03', '2022-11-16 02:21:56.288+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9940, 'Версия', '2020.1.2', '2022-11-16 02:21:56.288+03', '2022-11-16 02:21:56.288+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9941, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9942, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9943, 'Категория', 'Офис и текст', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9944, 'Размер', '250 Мб', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9945, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9946, 'Версия', '2020.1.4', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9947, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9948, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9949, 'Категория', 'Офис и текст', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9950, 'Размер', '210 Мб', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9951, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9952, 'Версия', '2019.1.1', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9953, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9954, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9955, 'Категория', 'Офис и текст', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9956, 'Размер', '300 Мб', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9957, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9958, 'Версия', '2020.1.5', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9959, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9960, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9961, 'Категория', 'Офис и текст', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9962, 'Размер', '300 Мб', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9963, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9964, 'Версия', '2020.1.11', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9965, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9966, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9967, 'Категория', 'Офис и текст', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (9968, 'Размер', '320 Мб', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99241, 'Лицензия', 'Бесплатная', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99242, 'Версия', '10.2018.3', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99243, 'ОС', 'Windows  10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99244, 'Категория', 'Видео редакторы', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99245, 'Размер', '560 Мб', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99184, 'Лицензия', 'Бесплатно', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99185, 'Версия', '10.1', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99186, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99187, 'Интерфейс', 'Многонациональный', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99188, 'Категории', 'Почта', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99189, 'Размер', '150 Мб', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99190, 'Лицензия', 'Бесплатно', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99191, 'Версия', '20.2', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99192, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99193, 'Интерфейс', 'Многонациональный', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99194, 'Категории', 'Браузер', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99195, 'Размер', '300 Мб', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99226, 'Лицензия', 'Условно-бесплатная', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99227, 'Ограничение', '30 дней', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99228, 'ОС', 'Windows 10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99229, 'Категории', 'Графический редактор', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99230, 'Размер', '560 Мб', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99231, 'Лицензия', 'Условно-бесплатная', '2022-11-16 05:06:08.837+03', '2022-11-16 05:06:08.837+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99232, 'Ограничение', '30 дней', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99233, 'ОС', 'Windows 10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99234, 'Категории', 'Графический редактор', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99235, 'Размер', '360 Мб', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99236, 'Лицензия', 'Условно-бесплатная', '2022-11-16 05:07:05.865+03', '2022-11-16 05:07:05.865+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99237, 'Ограничение', '30 дней', '2022-11-16 05:07:05.865+03', '2022-11-16 05:07:05.865+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99238, 'ОС', 'Windows 10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:07:05.865+03', '2022-11-16 05:07:05.865+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99239, 'Категории', 'Графический редактор', '2022-11-16 05:07:05.866+03', '2022-11-16 05:07:05.866+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99240, 'Размер', '553 Мб', '2022-11-16 05:07:05.866+03', '2022-11-16 05:07:05.866+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99246, 'Лицензия', 'Платно', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99247, 'Версия', '10.2020.201', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99248, 'ОС', 'Windows  10, 8.1, 8', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99249, 'Категория', 'Видео редакторы', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99250, 'Размер', '2.5 Гб', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99268, 'Небольшой кошелёк из натуральной кожи с геометрическим объёмным тиснением имеет 2 отделения для купюр или бумаг, карман для мелочи, 3 секции для кредитных карт и 1 потайное отделение. Аксессуар распашной, без фиксации на кнопку', 'ред', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99269, 'хар ка', 'деп', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99270, 'хар ка', 'дпеп', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99271, 'хар ка', 'деп', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', NULL);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99291, 'Об изделии', 'портмоне Morse выполнен из итальянской кожи crazy horse с винтажным эффектом со временем покрывается патинами и царапинками, что делает его более дорогим на вид', '2023-06-07 00:30:23.17+03', '2023-06-07 00:30:23.17+03', 9959);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99293, 'Тип', 'портмоне', '2023-06-07 00:30:23.17+03', '2023-06-07 00:30:23.17+03', 9959);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99294, 'Вес', '125г', '2023-06-07 00:30:23.17+03', '2023-06-07 00:30:23.17+03', 9959);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99295, 'Доступные цвета', 'табак, чёрный', '2023-06-07 00:30:23.17+03', '2023-06-07 00:30:23.17+03', 9959);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99292, 'Назначение', 'для него\для неё', '2023-06-07 00:30:23.17+03', '2023-06-07 01:15:18.726+03', 9959);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99307, 'Об изделии', 'Бумажник Classic выполнен из итальянской кожи crazy horse с винтажным эффектом со временем покрывается патинами и царапинками, что делает его более дорогим на вид', '2023-06-07 01:29:55.988+03', '2023-06-07 01:29:55.988+03', 9965);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99308, 'Назначение', '', '2023-06-07 01:29:55.988+03', '2023-06-07 01:29:55.988+03', 9965);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99309, 'Тип', 'бумажник', '2023-06-07 01:29:55.989+03', '2023-06-07 01:29:55.989+03', 9965);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99310, 'Доступные цвета', 'чёрный', '2023-06-07 01:29:55.989+03', '2023-06-07 01:30:42.849+03', 9965);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99311, 'Вес', '105г', '2023-06-07 01:29:55.989+03', '2023-06-07 01:30:54.138+03', 9965);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99330, 'Об изделии', 'документница имеет Компактные размеры 8х10см 4 отедления (2 под карты, 2 под сложённые попалам купюры/карты) Закрывается на кнопку ykk ', '2023-06-07 01:44:00.447+03', '2023-06-07 01:44:00.447+03', 9969);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99331, 'Назначение', 'для него\для неё', '2023-06-07 01:44:00.447+03', '2023-06-07 01:44:00.447+03', 9969);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99332, 'Тип', 'документница ', '2023-06-07 01:44:00.447+03', '2023-06-07 01:44:00.447+03', 9969);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99333, 'Доступные цвета', 'рубин', '2023-06-07 01:44:00.447+03', '2023-06-07 01:44:00.447+03', 9969);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99334, 'Вес', '100г', '2023-06-07 01:44:00.447+03', '2023-06-07 01:44:00.447+03', 9969);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99335, 'Размер', '8*10 см', '2023-06-07 01:44:00.447+03', '2023-06-07 01:44:00.447+03', 9969);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99352, 'Назначение', 'для него\для неё', '2023-06-07 02:19:06.307+03', '2023-06-07 02:19:06.307+03', 9973);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99355, 'Вес', '200г', '2023-06-07 02:19:06.307+03', '2023-06-07 02:19:06.307+03', 9973);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99353, 'Тип', 'несессер', '2023-06-07 02:19:06.307+03', '2023-06-07 02:19:53.294+03', 9973);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99354, 'Доступные цвета', 'табак, кофе', '2023-06-07 02:19:06.307+03', '2023-06-07 02:20:09.832+03', 9973);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99351, 'Об изделии', 'То, что нужно взять с собой в дорогу. В путешествиях или в длительных поездках незаменимая штука. Будет хранить ваши бритвенные принадлежности, либо заменит тканевую косметичку', '2023-06-07 02:19:06.307+03', '2023-06-07 02:20:26.425+03', 9973);
INSERT INTO device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99356, 'Объём', '3л', '2023-06-07 02:19:06.307+03', '2023-06-07 02:20:49.703+03', 9973);


--
-- TOC entry 3482 (class 0 OID 16786)
-- Dependencies: 236
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3472 (class 0 OID 16684)
-- Dependencies: 226
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orders (id, price, email, product_id, "createdAt", "updatedAt") VALUES (9916, 499, 'marks@012mail.ru', 994, '2022-10-17 01:22:01.066+03', '2022-10-17 01:22:01.066+03');
INSERT INTO orders (id, price, email, product_id, "createdAt", "updatedAt") VALUES (9917, 499, 'marks@mail.ru', 994, '2022-10-17 10:43:05.787+03', '2022-10-17 10:43:05.787+03');
INSERT INTO orders (id, price, email, product_id, "createdAt", "updatedAt") VALUES (9918, 103, '', 9951, '2023-05-10 11:23:32.589+03', '2023-05-10 11:23:32.589+03');
