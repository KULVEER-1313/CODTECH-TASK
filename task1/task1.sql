create database Medical;
use Medical;
create table Medicines(ID int primary Key,name varchar(30),Price decimal,Available boolean,Quantity int); 
select * from Medicines;
insert into Medicines(ID,name,Price,Available,Quantity) values
(01, "Paracetamol", 22.50, true, 120),
(02, "Dolo 650", 60, true, 230),
(03, "Crocin Advance", 33.40, true, 44),
(04, "Vicks Action 500", 20.00, true, 12),
(05, "Intagesic", 12, true, 560);
select name from Medicines;


create table customers(CustID int primary key, custname varchar(30), age int, phoneno varchar(15), need varchar(20));
select * from customers;
insert into customers(custID, custname, age, phoneno, need) values
(1,"Mohammed adil",19,'9123423455',"Paracetamol"),
(2,"Kulveer singh",21,'2434567234',"Dolo 650"),
(3,"Rahul Sinha" ,21,'1232324560',"Crocin Advance"),
(4,"Om patil",20,'5452967264',"Vicks Action 500"),
(5,"Mika Badmash",20,'6582745273',"Intagesic");

SHOW VARIABLES LIKE 'sql_mode';
SET sql_mode = '';

/*Performing inner join*/
select customers.custname, Medicines.name from customers inner join Medicines ON CustID=ID;

/*Performing left join*/
select Medicines.name, customers.Custname from Medicines left join customers ON ID=CustID;

/*Performing right join*/
select Medicines.price, customers.Custname, customers.need from Medicines right join customers ON CustID=ID;

/*Performing full join*/
SELECT m.name, c.need
FROM medicines AS m
LEFT JOIN customers AS c ON m.ID = c.CustID

UNION

SELECT m.name, c.need
FROM customers AS c
LEFT JOIN medicines AS m ON m.ID = c.CustID = m.ID;



































