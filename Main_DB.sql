create table customer(
    customer_id int not NULL,
    name varchar(50), 
    address varchar(100),
    phone varchar(20),
    email varchar(50),
    last_visited date,
    primary key (customer_id),

);

INSERT INTO customer (customer_id, name, address, phone, email,last_visited)
VALUES  (1,'Ali Ahmadi','Skagen 21','+12194328722','sdgsffdg@gmail.com','2022-1-15'),
        (2,'Ahmad mosavi','Skagen 21','+12194324742','fegafefag6@gmail.com','2022-1-14'),
        (3,'mehdi karimi','Skagen 21','+12194325742','sgf@gmail.com','2022-1-13'),
        (4,'hosssein safavi','Skagen 21','+12196328742','fegafefasdag6@gmail.com','2022-1-12'),
        (5,'navab ebrahimi','Skagen 21','+12194728742','fegfadsgefasdgeag6@gmail.com','2022-1-11'),
        (6,'ali karimi','Skagen 21','+12194328782','fegaffsdgefag6@gmail.com','2022-1-9'),
        (7,'ali motahari','Skagen 21','+12194328742','fegagfffefag6@gmail.com','2022-1-8'),
        (8,'hasan rohani','Skagen 21','+12194329742','fegafefaeeg6@gmail.com','2022-1-7'),
        (9,'ebrahim raessie','Skagen 21','+12191328742','feg3ffsg2aefag6@gmail.com','2022-1-6'),
        (10,'mahmood ahmadinejad','Skagen 21','+14194328742','sdgffsdg@gmail.com','2022-1-5'),
        (11,'tom course','Skagen 21','+12194328762','sdgsffdg@gmail.com','2022-1-4'),
        (12,'Tom m. Erichsen','Skagen 21','+12197328742','dffsg@gma[Hotel Management]il.com','2022-1-3'),
        (13,'androw Ng','Skagen 21','+12194328742','3ff2@gsgmail.com','2022-1-2'),
        (15,'jamshid yazidian','Skagen 21','+12195328742','sffdg@gmail.com','2022-1-1');


create table payment_type(
    payment_type_id int not NULL,
    payment_type varchar(20) not NULL,
    payment_type_desc varchar(100),
    primary key (payment_type_id),
);

INSERT INTO payment_type (payment_type_id, payment_type, payment_type_desc)
VALUES (2,'Master 2022','type one'),
        (12,'paypal','type 2'),
        (13,'credit card','type three');


create table discount(
    discount_id int not NULL,
    discount_name varchar(40),
    discount_percent int not NULL,
    discount_exp date,
    discount_amount int not NULL,
    description varchar(200),
    primary key (discount_id),
);

INSERT INTO discount (discount_id, discount_name, discount_percent, discount_exp,discount_amount  )
VALUES (2,'welcome20',15,'2021-1-1',22),
        (3,'welcome2033',15,'2021-1-1',22),
        (12,'welcome20er',15,'2021-1-1',22),
        (13,'welcome2wer0',15,'2021-1-1',22);

create table role(
    role_id int not NULL,
    role_name varchar(50) not NULL,
    role_desc varchar(200),
    primary key (role_id),
);

INSERT INTO role (role_id, role_name, role_desc)
VALUES (1,'headchief','this is a test'),
        (2,'worker','this is a test'),
        (3,'waiter','this is a test'),
        (4,'priest','this is a test'),
        (12,'chief','this is a test');


create table billitem_type (
    bill_item_type_id int not NULL,
    bill_item_type varchar(50) not NULL,
    description varchar(500),
    primary key (bill_item_type_id),
);

INSERT INTO billitem_type (bill_item_type_id, bill_item_type, description)
VALUES (2,'room','special room'),
        (3,'chair','golden chair'),
        (4,'door','wooden door'),
        (5,'smoking','smoke here'),
        (6,'shower','take it'),
        (7,'towel','dry yourself'),
        (8,'soda','drink it'),
        (9,'breakfast','enjoy it'),
        (10,'bathroom','this a car'),
        (11,'massage','have good day'),
        (12,'blanket','do it your self'),
        (13,'pillow','just for fun');

create table room_type(
    room_type_id int not NULL,
    room_type varchar(40) not NULL,
    description varchar(200),
    room_rate int not NULL,
    num_beds int not NULL,
    primary key (room_type_id),
);

INSERT INTO room_type (room_type_id, room_type, description, room_rate,num_beds)
VALUES (2,'type 1','type 1',3,1),
        (12,'type 2','type 2',3,2),
        (13,'type 3','type 3',3,3);


create table permission(
    permission_id int not NULL,
    name varchar(40) not NULL,
    primary key (permission_id),

);

INSERT INTO permission (permission_id, name)
VALUES (12,'one'),
        (13,'two');



create table hotel_type(
    hotel_type_id int not NULL,
    hotel_type varchar(40) not NULL,
    stars int not NULL,
    primary key (hotel_type_id),
);

INSERT INTO hotel_type (hotel_type_id, hotel_type, stars)
VALUES (12,'type 1',5),
        (13,'type 2',5);


create table employee(
    employee_id int not NULL,
    employee_name varchar(50) not NULL,
    phone varchar(20) not NULL,
    email varchar(30) not NULL,
    supervisor_id int,
    role_id int not NULL,
    permission_id int not NULL,
    primary key (employee_id),
    FOREIGN KEY (supervisor_id) REFERENCES employee(employee_id),
    FOREIGN KEY (role_id) REFERENCES role(role_id),
    FOREIGN KEY (permission_id) REFERENCES permission(permission_id),
);

INSERT INTO employee (employee_id, employee_name, phone, email, supervisor_id,role_id,permission_id)
VALUES (2,'mohsen rezaiee', '+989134592147','gewrg24hj@yahoo.com',12,12,12),
        (3,'hasan hamedani', '+989143452147','gewr13ghj@yahoo.com',12,12,12),
        (4,'hossein refipour','+989134592147','ge11rgwghj@yahoo.com',12,12,12),
        (5,'mohsen hojaji', '+989133434521','gew23ghj@yahoo.com',12,12,12),
        (12,'navab safavi', '+989139434521','gewr2323wghj@yahoo.com',NULL,12,12);


create table hotel(
    hotel_id int not NULL,
    hotel_name varchar(50) not NULL,
    hotel_type_id int not NULL,
    location varchar(100) not NULL,
    manager_id int not NULL,
    primary key (hotel_id),
    FOREIGN KEY (manager_id) REFERENCES employee(employee_id),
    FOREIGN KEY (hotel_type_id) REFERENCES hotel_type(hotel_type_id)
);

INSERT INTO hotel (hotel_id, hotel_name, hotel_type_id, location,manager_id  )
VALUES (2,'alborz',12,'New York',12),
        (3,'tehran',12,'Ottawa',12),
        (4,'fars',12,'Barnabi',12),
        (5,'asafe',12,'Alberta',12),
        (6,'boshehr',12,'Wateloo',12),
        (7,'arak',12,'Berlin',12),
        (8,'mashhad',12,'Nuvemberg',12),
        (9,'ghenaveh',12,'Frankfort',12),
        (10,'ahvaz',12,'Moscow',12),
        (12,'esfahan',12,'Manitoba',12),
        (14,'torento',12,'Winipeck',12),
        (15,'texas',12,'Mashhad',12),
        (16,'quebec',12,'Texas',12),
        (17,'brittishNg',12,'Arak',12),
        (18,'France021',12,'Tehran',12),
        (19,'paris02',12,'Arizona',12),
        (20,'Eramprk',12,'Kingeston',12),
        (21,'hell01',12,'Calgari',12),
        (22,'nicheh',12,'Vancouver',12),
        (23,'chequara',12,'Paris',12),
        (24,'nicehouse',12,'WashingtonDC',12),
        (25,'westt2',12,'West_Virginia',12),
		(13,'nich02',12,'Vangog',12);


create table room(
    room_id int not NULL,
    room_number integer not NULL,
    room_type_id int not NULL,
    room_available bit not NULL,
    description varchar(200),
    smoking bit,
    hotel_id int,
    primary key (room_id),
    FOREIGN KEY (room_type_id) REFERENCES room_type(room_type_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id),
);

INSERT INTO room (room_id, room_number, room_type_id, room_available,description,smoking,hotel_id  )
VALUES (2,2,12,1,'this is description',0,2), 
        (3,3,12,1,'this is description',0,3), 
        (4,4,12,1,'this is description',0,4), 
        (5,5,12,1,'this is description',0,5), 
        (6,6,12,1,'this is description',0,6), 
        (7,7,12,1,'this is description',0,7), 
        (8,8,12,1,'this is description',0,8), 
        (9,9,12,1,'this is description',0,9),
        (10,10,12,1,'this is description',0,10),
        (12,12,12,1,'this is description',0,12),
        (14,14,12,1,'this is description',0,14),
        (15,15,12,1,'this is description',0,15),
        (16,16,12,1,'this is description',0,16),
        (17,17,12,1,'this is description',0,17),
        (18,18,12,1,'this is description',0,18),
        (19,19,12,1,'this is description',0,19),
        (20,20,12,1,'this is description',0,20),
        (21,21,12,1,'this is description',0,21),
        (22,22,12,1,'this is description',0,22),
        (23,23,12,1,'this is description',0,23),
        (24,24,12,1,'this is description',0,24),
        (25,25,12,1,'this is description',0,12);


create table reservation(
    reservation_id int not NULL,
    customer_id int not NULL,
    expected_checkin_date date not NULL,
    expected_checkout_date date not NULL,
    anticipated_arrival_time date not NULL,
    num_guests int,
    room_id int not NULL,
    smoking bit,
    checkindate date not NULL,
    primary key (reservation_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
);

INSERT INTO reservation (reservation_id, customer_id, expected_checkin_date, expected_checkout_date ,anticipated_arrival_time ,num_guests ,room_id,smoking, checkindate  )
VALUES (2,12,'2023-03-01','2023-01-01','2023-01-05',6,12,0,'2023-02-02'),
        (3,11,'2023-03-01','2023-01-01','2023-01-05',6,12,0,'2023-02-02'),
        (4,10,'2023-03-01','2023-01-01','2023-01-05',6,12,0,'2023-02-02'),
        (5,9,'2023-03-01','2023-01-01','2023-01-05',6,12,0,'2023-02-02'),
        (6,8,'2023-03-01','2023-01-01','2023-01-05',6,12,0,'2023-02-02'),
        (13,7,'2023-03-01','2023-01-01','2023-01-05',6,12,0,'2023-02-02'),
        (12,12,'2023-03-01','2023-01-01','2023-01-05',6,12,0,'2023-02-02');


create table checkout(
    checkout_id int not NULL,
    reservation_id int not NULL,
    checkout_date date not NULL,
    primary key (checkout_id),
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id)

);

INSERT INTO checkout (checkout_id, reservation_id, checkout_date)
VALUES (2,12,'2023-01-05'),
        (3,12,'2023-01-05'),
        (4,12,'2023-01-05'),
        (5,12,'2023-01-05'),
        (6,12,'2023-01-05'),
        (7,12,'2023-01-05'),
        (8,12,'2023-01-05'),
        (9,12,'2023-01-05'),
        (10,12,'2023-01-05'),
        (12,12,'2023-01-05'),
        (14,12,'2023-01-05'),
        (15,12,'2023-01-05'),
        (16,12,'2023-01-05'),
        (17,12,'2023-01-05'),
        (18,12,'2023-01-05'),
        (19,12,'2023-01-05'),
        (20,12,'2023-01-05'),
        (21,12,'2023-01-05'),
        (22,12,'2023-01-05'),
        (23,12,'2023-01-05'),
        (24,12,'2023-01-05'),
        (25,12,'2023-01-05');


create table bill (
    bill_id int not NULL,
    reservation_id int not NULL,
    primary key (bill_id),
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id),
);
INSERT INTO bill (bill_id, reservation_id)
VALUES (2,12),
        (3,12),
        (4,12),
        (5,12),
        (6,12),
        (7,12),
        (8,12),
        (9,12),
        (10,12),
        (12,12),
        (14,12),
        (15,12),
        (16,12),
        (17,12),
        (18,12),
        (19,12),
        (20,12),
        (21,12),
        (22,12),
        (23,12),
        (24,12),
        (25,12);




create table billitem (
    bill_item_id int not NULL, 
    room_id int not NULL,
    bill_item_type_id int not NULL,
    bill_item_amount int not NULL, 
    description  varchar(500),
    discount_id int not NULL,
    bill_id int not NULL,
    primary key (bill_item_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id),
    FOREIGN KEY (bill_item_type_id) REFERENCES billitem_type(bill_item_type_id),
    FOREIGN KEY (discount_id) REFERENCES discount(discount_id),
    FOREIGN KEY (bill_id) REFERENCES bill(bill_id)
    
);

INSERT INTO billitem (bill_item_id, room_id, bill_item_type_id , bill_item_amount,description,discount_id,bill_id  )
VALUES (2,12,12,3214421, 'nothing lasts',12,12),
        (3,12,12,3214421, 'nothing lasts',12,12),
        (4,12,12,3214421, 'nothing lasts',12,12),
        (5,12,12,3214421, 'nothing lasts',12,12),
        (6,12,12,3214421, 'nothing lasts',12,12),
        (7,12,12,3214421, 'nothing lasts',12,12),
        (8,12,12,3214421, 'nothing lasts',12,12),
        (9,12,12,3214421, 'nothing lasts',12,12),
        (10,12,12,3214421, 'nothing lasts',12,12),
        (12,12,12,3214421, 'nothing lasts',12,12),
        (14,12,12,3214421, 'nothing lasts',12,12),
        (15,12,12,3214421, 'nothing lasts',12,12),
        (16,12,12,3214421, 'nothing lasts',12,12),
        (17,12,12,3214421, 'nothing lasts',12,12),
        (18,12,12,3214421, 'nothing lasts',12,12),
        (19,12,12,3214421, 'nothing lasts',12,12),
        (20,12,12,3214421, 'nothing lasts',12,12),
        (21,12,12,3214421, 'nothing lasts',12,12),
        (22,12,12,3214421, 'nothing lasts',12,12),
        (23,12,12,3214421, 'nothing lasts',12,12),
        (24,12,12,3214421, 'nothing lasts',12,12),
        (25,12,12,3214421, 'nothing lasts',12,12);


create table payment(
    payment_id int not NULL,
    payment_type_id int not NULL,
    payment_amount int not NULL,
    reservation_id int not NULL,
    primary key (payment_id),
    FOREIGN KEY (payment_type_id) REFERENCES payment_type(payment_type_id),
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id),
);


INSERT INTO payment (payment_id, payment_type_id, payment_amount, reservation_id)
VALUES (2,13,25,12),
        (3,13,25,12),
        (4,13,25,12),
        (5,13,25,13),
        (6,13,25,13),
        (7,13,25,13),
        (8,13,25,13),
        (9,13,25,13),
        (10,13,25,13),
        (13,13,25,13),
        (14,13,25,13),
        (15,13,25,13),
        (16,13,25,13),
        (17,13,25,13),
        (18,13,25,13),
        (19,13,25,13),
        (20,13,25,13),
        (21,13,25,13),
        (22,13,25,13),
        (23,13,25,13),
        (24,13,25,13),
        (25,13,25,13);
