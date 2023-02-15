-- UC1
create database AddressbookService;
show databases;
use AddressbookService;

-- UC2
create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(30),
							city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(40));

desc addressBook;

-- UC3
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values 
('jitain','singh','mahveer','aligarh','Uttar Pradesh','202001','7982468895','jitainsingh@gmail.com' ),
('rahul','sharma','state bank','aligarh','Uttar Pradesh','202001','7979797979','sharma@gmail.com' ),
('sourav','agrawal','mp nagar','bhopal','madhya pradesh','oooooo','9876767676','agrawal@gmail.com' );

select * from addressBook;

-- UC4
use AddressbookService;
update addressBook set phone = '8888888888' where firstname = 'sourav';
select * from addressBook;

-- UC5
delete from addressBook where firstname = 'sourav';
select * from addressBook;

-- UC6
select * from addressBook where city = 'madhya pradesh';

-- UC7
select count(*) from addressBook where state = 'bhopal' && city='madhya pradesh';

-- UC8
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values 
('Raman','Singh','Marathalli','Bangalore','Karnataka','123456','9988722655','raman@gmail.com' );
select * from addressBook where city = 'Bangalore' order by firstname desc;

-- UC9
alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
desc addressBook;
select * from addressBook;
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Raman';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'sourav';
select * from addressBook;

-- UC10
select count(*) from addressBook where booktype='Family';

-- UC11
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email,bookname,booktype) values 
('Ankit','kapoor','Sector 86','Gurugram','UP','123654','8013559160','kapoor786@gmail.com','Book2','Friend' ),
('abhinav','mishra','Whitefield','Bangalore','Karnataka','123456','9482849500','abhinav@gmail.com','Book1','Family' );