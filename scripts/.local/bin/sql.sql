INSERT INTO ark_site_news 
("site_id", "type", "title", "mini_text", "teaser_text", "content", "preview_image_url", "image_url", "is_active", "start_at", "end_at", "status") VALUES
(1, 'website', 'title 1', 'mini text 1', 'teaser text 1', 'content 1', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 2', 'mini text 2', 'teaser text 2', 'content 2', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 3', 'mini text 3', 'teaser text 3', 'content 3', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 4', 'mini text 4', 'teaser text 4', 'content 4', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 5', 'mini text 5', 'teaser text 5', 'content 5', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 6', 'mini text 6', 'teaser text 6', 'content 6', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 7', 'mini text 7', 'teaser text 7', 'content 7', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 8', 'mini text 8', 'teaser text 8', 'content 8', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 9', 'mini text 9', 'teaser text 9', 'content 9', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'), 
(1, 'website', 'title 10', 'mini text 10', 'teaser text 10', 'content 10', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'),
(1, 'website', 'title 11', 'mini text 11', 'teaser text 11', 'content 11', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE'),
(1, 'website', 'title 12', 'mini text 12', 'teaser text 12', 'content 12', 'url', 'url', true, 'NOW()', 'NOW()', 'ACTIVE');

INSERT INTO ark_site_news_categories ("name", "description", "status", "site_id") VALUES
('news categories 1',  'description 1',  'ACTIVE', 1),
('news categories 2',  'description 2',  'ACTIVE', 1),
('news categories 3',  'description 3',  'ACTIVE', 1),
('news categories 4',  'description 4',  'ACTIVE', 1),
('news categories 5',  'description 5',  'ACTIVE', 1),
('news categories 6',  'description 6',  'ACTIVE', 1),
('news categories 7',  'description 7',  'ACTIVE', 1),
('news categories 8',  'description 8',  'ACTIVE', 1),
('news categories 9',  'description 9',  'ACTIVE', 1),
('news categories 10', 'description 10', 'ACTIVE', 1),
('news categories 11', 'description 11', 'ACTIVE', 1),
('news categories 12', 'description 12', 'ACTIVE', 1),
('news categories 13', 'description 13', 'ACTIVE', 1);

INSERT INTO ark_site_news_news_categories VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 4),
(4, 4),
(4, 5),
(5, 5),
(5, 6),
(6, 6),
(6, 7),
(7, 7),
(7, 8);

/* INSERT INTO ms_clients */
/* ("company_name", "salutation", "first_name", "last_name", "email", "house_number", "street", "postcode", "city", "state", "country", "phone_number", "fax_number", "status") VALUES */
/* ('company 1', 'saluation 1', 'first name 1', 'last name 1', 'email_1@gmail.com', '111', 'Street 1', '11111', 'City 1', 'State 1', 'Country 1 ', '111111111', '1111111', 'ACTIVE'), */
/* ('company 2', 'saluation 2', 'first name 2', 'last name 2', 'email_2@gmail.com', '222', 'Street 2', '22222', 'City 2', 'State 2', 'Country 2 ', '222222222', '2222222', 'ACTIVE'), */
/* ('company 3', 'saluation 3', 'first name 3', 'last name 3', 'email_3@gmail.com', '333', 'Street 3', '33333', 'City 3', 'State 3', 'Country 3 ', '333333333', '3333333', 'ACTIVE'), */
/* ('company 4', 'saluation 4', 'first name 4', 'last name 4', 'email_4@gmail.com', '444', 'Street 4', '44444', 'City 4', 'State 4', 'Country 4 ', '444444444', '4444444', 'ACTIVE'), */
/* ('company 5', 'saluation 5', 'first name 5', 'last name 5', 'email_5@gmail.com', '555', 'Street 5', '55555', 'City 5', 'State 5', 'Country 5 ', '555555555', '5555555', 'ACTIVE'), */
/* ('company 6', 'saluation 6', 'first name 6', 'last name 6', 'email_6@gmail.com', '666', 'Street 6', '66666', 'City 6', 'State 6', 'Country 6 ', '666666666', '6666666', 'ACTIVE'), */
/* ('company 7', 'saluation 7', 'first name 7', 'last name 7', 'email_7@gmail.com', '777', 'Street 7', '77777', 'City 7', 'State 7', 'Country 7 ', '777777777', '7777777', 'ACTIVE'), */
/* ('company 8', 'saluation 8', 'first name 8', 'last name 8', 'email_8@gmail.com', '888', 'Street 8', '88888', 'City 8', 'State 8', 'Country 8 ', '888888888', '8888888', 'ACTIVE'), */
/* ('company 9', 'saluation 9', 'first name 9', 'last name 9', 'email_9@gmail.com', '999', 'Street 9', '99999', 'City 9', 'State 9', 'Country 9 ', '999999999', '9999999', 'ACTIVE'), */
/* ('company A', 'saluation A', 'first name A', 'last name A', 'email_A@gmail.com', 'AAA', 'Street A', '10101', 'City A', 'State A', 'Country A ', '101010101', '1010101', 'ACTIVE'), */
/* ('company B', 'saluation B', 'first name B', 'last name B', 'email_B@gmail.com', 'BBB', 'Street B', '11011', 'City B', 'State B', 'Country B ', '110110110', '1101101', 'ACTIVE'), */
/* ('company C', 'saluation C', 'first name C', 'last name C', 'email_C@gmail.com', 'CCC', 'Street C', '12012', 'City C', 'State C', 'Country C ', '120120120', '1201201', 'ACTIVE'), */
/* ('company D', 'saluation D', 'first name D', 'last name D', 'email_D@gmail.com', 'DDD', 'Street D', '13013', 'City D', 'State D', 'Country D ', '130130130', '1301301', 'ACTIVE'); */

/* INSERT INTO ms_center_groups */
/* ("name", "slug", "description", "status") VALUES */
/* ('center groups 1',  'slug 1',  'description 1',  'ACTIVE'), */
/* ('center groups 2',  'slug 2',  'description 2',  'ACTIVE'), */
/* ('center groups 3',  'slug 3',  'description 3',  'ACTIVE'), */
/* ('center groups 4',  'slug 4',  'description 4',  'ACTIVE'), */
/* ('center groups 5',  'slug 5',  'description 5',  'ACTIVE'), */
/* ('center groups 6',  'slug 6',  'description 6',  'ACTIVE'), */
/* ('center groups 7',  'slug 7',  'description 7',  'ACTIVE'), */
/* ('center groups 8',  'slug 8',  'description 8',  'ACTIVE'), */
/* ('center groups 9',  'slug 9',  'description 9',  'ACTIVE'), */
/* ('center groups 10', 'slug 10', 'description 10', 'ACTIVE'), */
/* ('center groups 11', 'slug 11', 'description 11', 'INACTIVE'), */
/* ('center groups 12', 'slug 12', 'description 12', 'INACTIVE'), */
/* ('center groups 13', 'slug 13', 'description 13', 'INACTIVE'), */
/* ('center groups 14', 'slug 14', 'description 14', 'INACTIVE'), */
/* ('center groups 15', 'slug 15', 'description 15', 'INACTIVE'); */

/* INSERT INTO ms_centers */
/* ("client_id", "consultant_id", "salutation", "first_name", "last_name", "center_name", "client_number", "ext_field_1", "ext_field_2", "house_number", "street", "postcode", "city", "state", "country", "phone_number", "email", "manager", "fax_number", "language", "site_domain", "is_female_center", "status", "opening_time") VALUES */
/* (19,3,'salutaion 2', 'first name 2', 'last name 2', 'center name 2', 'client name 2', 'ext field 1 2', 'ext field 2 2', '222', 'street 2', '22222', 'city 2', 'state 2', 'country 2', '222222222', '222@gmail.com', 'manager 2', '2222222222', 'language 2', 'site domain 2', true, 'ACTIVE', 'opening time 2'), */
/* (18,2,'salutaion 1', 'first name 1', 'last name 1', 'center name 1', 'client name 1', 'ext field 1 1', 'ext field 2 1', '111', 'street 1', '11111', 'city 1', 'state 1', 'country 1', '111111111', '111@gmail.com', 'manager 1', '1111111111', 'language 1', 'site domain 1', true, 'ACTIVE', 'opening time 1'); */
/* (20,4,'salutaion 3', 'first name 3', 'last name 3', 'center name 3', 'client name 3', 'ext field 1 3', 'ext field 2 3', '333', 'street 3', '33333', 'city 3', 'state 3', 'country 3', '333333333', '333@gmail.com', 'manager 3', '3333333333', 'language 3', 'site domain 3', true, 'ACTIVE', 'opening time 3'), */
/* (21,5,'salutaion 4', 'first name 4', 'last name 4', 'center name 4', 'client name 4', 'ext field 1 4', 'ext field 2 4', '444', 'street 4', '44444', 'city 4', 'state 4', 'country 4', '444444444', '444@gmail.com', 'manager 4', '4444444444', 'language 4', 'site domain 4', true, 'ACTIVE', 'opening time 4'), */
/* (22,6,'salutaion 5', 'first name 5', 'last name 5', 'center name 5', 'client name 5', 'ext field 1 5', 'ext field 2 5', '555', 'street 5', '55555', 'city 5', 'state 5', 'country 5', '555555555', '555@gmail.com', 'manager 5', '5555555555', 'language 5', 'site domain 5', true, 'ACTIVE', 'opening time 5'); */

/* INSERT INTO ms_centers_center_groups */
/* ("center_id", "center_group_id") VALUES */
/* (4, 30), */
/* (4, 31), */
/* (4, 32), */
/* (5, 31), */
/* (5, 32), */
/* (5, 33), */
/* (6, 32), */
/* (6, 33), */
/* (6, 34), */
/* (7, 33), */
/* (7, 34), */
/* (7, 35), */
/* (8, 34), */
/* (8, 35), */
/* (8, 36); */
