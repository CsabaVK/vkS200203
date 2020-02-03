 Create table S_PARTNER(
 p_id  int primary key auto_increment,
 nev varchar(40) not null,
 rszam  varchar(40)not null,
 varos varchar(40) not null,
 utca varchar (40) not null,
 tel varchar (20),
 email varchar (40) not null
 );

Create table S_SZALL_CIM(
 sz_id int auto_increment primary key,
 irsz varchar(40) not null,
 varos  varchar(40)not null,
 utca varchar(40) not null,
 tel varchar (20),
 email varchar (40) not null,
 p_id int not null
);

Create table S_FIZMOD(
f_id int auto_increment primary key,
nev varchar(10) not null
);

Create table S_IKKEK(
 c_id int auto_increment primary key,
 near double (8,2) not null,
 afa  tinyint(100)not null,
 keszlet double(8,2) not null,
 mennymegy varchar (6) not null,
);

Create table S_RENDELES_TETEL(
t_id int auto_increment primary key not null,
c_id integer not null,
menny double (10,2) not null,
kedv tinyint (100) not null default 0,
r_id int not null
);

Create table S_RENDELES_TORZS(
r_id integer auto_increment not null primary key,
datum date not null,
f_id int not null,
sz_id int not null
);
