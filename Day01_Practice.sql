create table personel                                                                         
(                                                                                             
id serial primary key  ,                                                                      
isim varchar(20),                                                                             
yas int,                                                                                      
maas int,                                                                                     
email varchar(30)                                                                             
);                                                                                            
																							  
-- auto_increment kullandığımızda otomatik olarak id ler 1 den başlayacaktır.                 

insert into personel (isim, yas, maas, email) values ('Ali', 39, 12500, 'ali@gmail.com');
insert into personel (isim, yas, maas, email) values ('Derya', 28, 15000, 'derya@yahoo.com');
insert into personel (isim, yas, maas, email) values ('Sevim', 24, 25000, 'sevim@hotmail.com');
insert into personel (isim, yas, maas, email) values ('Yusuf', 32, 18000, 'yusuf@gmail.com');
insert into personel (isim, yas, maas, email) values ('Halil', 48, 22000, 'halil@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ece', 54, 21000, 'ece@gmail.com');
insert into personel (isim, yas, maas, email) values ('Can', 38, 19000, 'can@gmail.com');
insert into personel (isim, yas, maas, email) values ('Elif', 27, 14000, 'elif@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ezgi', 38, 21000, 'ezgi@gmail.com');
insert into personel (isim, yas, maas, email) values ('Sena', 25, 11000, NULL);

SELECT * FROM personel;

-- 2) isim, yaş ve maaş bilgilerini listeleyiniz
select isim,yas,maas from personel;

-- 3) id'si 8 olan personel bilgilerini listeleyiniz
select * from personel where id=8;

-- 4) id'si 5 olan personelin isim, yaş ve email bilgilerini listeleyiniz
select isim,yas,email from personel where id=5;

-- 5) 30 yaşından büyük personel bilgilerini listeleyiniz.
select * from personel where yas>30;

-- 6) maası 21000 olmayan personel bilgilerini listeleyiniz.
select * from personel where maas != 21000;
select * from personel where maas <> 21000;

-- 7) ismi a harfi ile başlayan personel bilgilerini listeleyiniz.
select * from personel where isim ~~*'a%';

-- 8)ismi n harfi ile biten personel bilgilerini listeleyiniz.
select * from personel where isim ~~*'%n';

-- 9) email adresi gmail olan personel bilgilerini listeleyiniz.
select * from personel where email ~~*'%gmail%';
select * from personel where email ilike '%gmail%';

-- 10) email adresi gmail olmayan personel bilgilerini listeleyiniz.
select * from personel where email not like '%gmail%'; --> % ile arama yptiğimiz için null gelmez.

-- 11) id'si 3,5,7 ve 9 olan personel bilgilerini listeleyiniz.
select * from personel where id in (3,5,7,9);
select * from personel where id= 3 or id=5 or id=7 or id=9;

-- 12) yaşı 39,48 ve 54 olmayan personel bilgilerini listeleyiniz.
SELECT * from personel where yas not in (39,48,54);

-- 13) yaşı 30 ve 40 arasında olan personel bilgilerini listeleyiniz.
select * from personel where yas between 30 and 40;

-- 14) yaşı 30 ve 40 arasında olmyan personel bilgilerini listeleyiniz.
select * from personel where yas not between 30 and 40;
select * from personel where 30>yas or yas>40

-- 15) emaili null olan personel bilgilerini listeleyiniz.
SELECT*from personel where email is null;

-- 16) personel bilgilerini yaşa göre sıralayınız.
select * from personel order by yas;

-- 17) personel bilgilerini maaşa göre sıralayınız.
select * from personel order by maas;

-- 18) personelin yaşlarını büyükten küçüğe doğru sıralayınız.
select * from personel order by yas desc;

-- 19) personelin maaşlarını büyükten küçüğe doğru sıralayınız.
select * from personel order by maas desc;

-- 20) En yüksek maaş olan ilk 3 personel bilgilerini sıralayınız
select * from personel order by maas desc limit 3 ;


CREATE TABLE workers
(
  id int,
  name varchar(20),
  title varchar(60),
  manager_id int
);

INSERT INTO workers VALUES(1, 'Ali Can', 'Dev', 2);
INSERT INTO workers VALUES(2, 'John Davis', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'Dev Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5);

select * from workers;

-- Tabloya company_industry isminde sütun ekleyiniz
alter table workers add column company_industry varchar(20);

-- TABLOYA worker_address sütunu ve defaullt olarakta 'Miami, FL, USA' adresini ekleyiniz.
alter table workers add column worker_address varchar(20) default 'Miami, FL, USA';

-- tablodaki worker_address sütununu siliniz
alter table workers drop column worker_address;

-- Tablodaki company_industry sütununu, company_profession olarak değiştiriniz.
alter TABLE workers RENAME company_industry to company_profession;

-- Tablonun ismini employees olarak değişitiriniz.
alter table workers rename to employees;

select * from employees;

-- Tablodaki title sütununa data tipini VARCHAR(50) olarak değiştiriniz.
alter table employees alter column title type VARCHAR(50);

-- Tablodaki title sütununa "UNIQUE" kıstlaması ekleyiniz.
alter table employees add UNIQUE (title);









