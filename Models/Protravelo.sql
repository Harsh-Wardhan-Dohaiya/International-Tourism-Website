-- Database Creation:
CREATE DATABASE protravelo;
use protravelo;

-- Tables:
create table Register(
ID int auto_increment,
Name varchar(255) ,
Username varchar(255) ,
Password varchar(255),
Mobile_number varchar(255),
primary key(ID)
);

create table Customer(
ID int ,
Name varchar(255) ,
DOB varchar(255),
Gender varchar(255) ,
Country varchar(255) ,
Address varchar(255) ,
Email varchar(255) ,
Mobile_number bigint,
Alternate_mobile_number bigint,
Language varchar(255) ,
Currency varchar(255) ,
Passport_number varchar(255),
Primary key(ID),
foreign key(ID) references Register(ID)
);

create table Travel_agent(
ID int ,
Name varchar(255) ,
Rating int,
Price int,
primary key(ID)
);

insert into Travel_agent
values (0,"None",0,0),
 (1,"David",9,19000),
 (2, "Steve", 8, 19000),
 (3, "Ashley", 9, 21000),
 (4, "Ellyse", 9, 20000),
 (9, "Paul", 8, 19000),
 (10, "Xavi", 8, 19000),
 (11, "Sofia", 9, 21000),
 (12, "Scarlet", 9, 20000),
 (13, "Henry", 9, 20000),
 (14, "Jack", 9, 21000),
 (15, "Michail", 8, 20000),
 (16, "Jerome", 8, 19000),
 (17, "Varane", 8, 19000),
 (18, "Louis", 9, 21000),
 (19, "Laura", 9, 21000),
 (20, "Sarah", 9, 20000),
 (21, "Alexander", 9, 18000),
 (22, "dimitri", 8, 17000),
 (23, "christos", 8, 17000),
 (24, "petros", 9, 17000),
 (5, "Federico", 8, 18000),
 (6, "Lorenzo", 7, 17000),
 (7, "Isabella", 8, 18000),
 (8, "Gabriella", 9, 19000),
 (25, "Xiong", 7, 15000),
 (26, "Leia", 8, 16000),
 (27, "William", 9, 17000),
 (28, "Weaton", 9, 16000),
 (29, "Mansour", 7, 17000),
 (30, "Norryis", 8, 18000),
 (31, "Betsy", 8, 18000),
 (32, "Anna", 9, 19000);

create table Hotels(
ID int,
Name varchar(255) ,
Price int,
primary key (ID)
);
Insert into Hotels
values  (0,"None", 0),
		(1,"QT Sydney", 16118),
		(2,"Fraser Suites Sydney",8841),
        (3,"Park Hyatt Melbourne",6564),
        (4,"The Langham Melbourne",20235),
        (5,"Crystalbrook Vincent",23923),
        (6,"Hyatt Regency Brisbane",31456),
        (7,"Midnight Hotel",6345),
        (8,"Hotel Realm",18459),
        (9,"Hotel Artemide",19657),
        (10,"Albergo del Senato",32741),
        (11,"Hotel Ai Reali",4576),
        (12,"Rosa Salva Hotel",23677),
        (13,"Lancaster Hotel",9569),
        (14,"43 Station Hotel",13853),
        (15,"Hotel Franchi",7987),
        (16,"Diplomat Hotel",12978),
        (17,"Hyperion Hotel Basel",10534 ),
		(18, "ibis budget Basel City",5888 ),
        (19,"Nash Suites Airport Hotel",8751),
        (20,"Warwick Geneva",11813),
        (21,"ibis budget Hotel Luzern",6461),
        (22,"AMERON Luzern Hotel Flora",12550),
        (23,"Crowne Plaza Zurich",9201),
        (24,"Central Plaza",17584),
        (25,"Hennessy Park Hotel",12117),
        (26,"Le Suffren Hotel & Marina",13871),
        (27,"Seastar Hotel",12563),
        (28,"Sofitel L'Imperial Resort and Spa",29227),
        (29,"Hôtel 20 Degrés Sud",39969),
        (30,"Mauricia Beachcomber Resort & Spa",20823),
        (31,"Cocotiers Hotel",5967),
        (32,"Labourdonnais Waterfront Hotel",16975),
        (33,"Hotel Malte- Astotel",19790),
		(34,"Hotel 34B- Astotel",11616),
        (35,"Hotel de Provence",7765),
        (36,"Hotel Martinez",5851),
        (37,"Hotel Cardinal Bordeaux",18964),
        (38,"Hotel Gambetta",11774),
        (39,"Hotel Tettola",6711),
        (40,"Hotel Bartaccia",5937),
        (41,"Sofitet Athens Hotel",14212),
        (42,"Plaka Hotel",8464),
        (43,"Hyatt Regency Thessaloniki",16606),
        (44,"Electra Hotel",6217),
        (45,"Hyperion City Hotel",6767),
        (46,"Enetiko Rooms",4753),
        (47,"Elites Hotel",10876),
        (48,"Esperia City Hotel",6539),
        (49,"Disney Explorers Lodge", 17178),
		(50,"Hong Kong Disneyland Hotel",16354),
        (51,"Sheraton Hong Kong Hotel & Towers",7278),
        (52,"InterContinental Grand Stanford",7789),
        (53,"The Mira Hong Kong",7071),
        (54,"Regal Kowloon Hotel",5521),
        (55,"Ocean Park Marriott Hotel",9483),
        (56, "The Fleming Hong Kong",8897),
        (57,"Traders Hotel, Abu Dhabi",8887),
        (58,"Southern Sun Abu Dhabi",6615),
        (59,"Atana Hotel",7318),
        (60,"Citymax Hotel Bur Dubai",3789),
        (61,"The White villa",99969),
        (62,"Ibis Fujairah",6421),
        (63,"Golden Sands Hotel",3847),
        (64, "Citymax Sharjah",2992);

create table Feedback(
ID int auto_increment,
Travel_agent_feedback varchar(255) ,
Hotel_feedback varchar(255) ,
Journey_feedback varchar(255) ,
Suggestions varchar(500) ,
primary key(ID)
);

create table Booking(
Booking_ID int auto_increment primary key,
ID int ,
Travel_agent_ID int,
Number_of_people int,
Start_date varchar(255),
Number_of_days int,
Country varchar(255) ,
City1 varchar(255),
City2 varchar(255),
City3 varchar(255),
City4 varchar(255),
Hotel1 varchar(255),
Hotel2 varchar(255),
Hotel3 varchar(255),
Hotel4 varchar(255),
Final_price int,
Progress varchar(255),
foreign key (Travel_agent_ID) references Travel_agent(ID),
foreign key (ID) references Register(ID)
);

create table Group_details(
ID int,
Name varchar(255),
DOB varchar(255),
Gender varchar(255),
Email varchar(255),
Mobile_number bigint,
Alternate_mobile_number bigint,
Address varchar(255),
Passport_number varchar(255),
primary key(Passport_number),
foreign key(ID) references Register(ID)
);

create table Packages(
Package_ID int auto_increment,
Package_name varchar(255),
Individual_price int,
primary key(Package_ID));

insert into Packages
values (1,"Australia Package",129799),
		(2,"Italy Package",89699),
        (3,"Switzerland Package",96799),
        (4,"Mauritius Package",77399),
        (5,"France Package",85599),
        (6,"Greece Package",72199),
        (7,"Hong-Kong Package",66699),
        (8,"U.A.E Package",55999),
        (9,"Italy and Switzerland Package",169899),
        (10,"Greece and Italy Package",135699),
        (11,"Classical Europe Package",179799),
        (12,"Fantastic Four Package",199999);

Create table Travel_agent_register ( 
Name varchar(255), 
DOB varchar(255), 
Gender varchar(255), 
Email varchar(255), 
Address varchar(255), 
Mobile_number varchar(255), 
Country varchar(255), 
Passport_number varchar(255), 
Languages_known varchar(255), 
primary key(Passport_number) );

create table Selected_package(
Booking_ID int auto_increment,
ID int,
name varchar(255),
package_name varchar(255),
number_of_people int,
departing_date varchar(255),
Progress varchar(255),
Final_price bigint,
number_of_days int,
primary key (Booking_ID),
foreign key(ID) references Register(ID)
);
