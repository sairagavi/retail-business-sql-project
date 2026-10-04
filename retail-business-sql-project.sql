create database retailbusinessdb;

use retailbusinessdb;

create table customers (
    customer_id int primary key,
    customer_name varchar(100) not null,
    gender varchar(10),
    age int,
    city varchar(50),
    state varchar(50)
);

create table products (
    product_id int primary key,
    product_name varchar(100) not null,
    category varchar(50),
    unit_price decimal(10,2) not null
);

create table orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    payment_method varchar(30),
    foreign key (customer_id) references customers(customer_id)
);

create table orderdetails (
    order_detail_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);

insert into customers
(customer_id, customer_name, gender, age, city, state)
values
(1,'ravi','male',25,'chennai','tamil nadu'),
(2,'priya','female',28,'madurai','tamil nadu'),
(3,'arun','male',32,'coimbatore','tamil nadu'),
(4,'divya','female',24,'salem','tamil nadu'),
(5,'karthik','male',30,'trichy','tamil nadu'),
(6,'anitha','female',27,'mumbai','maharashtra'),
(7,'suresh','male',29,'pune','maharashtra'),
(8,'meena','female',26,'nagpur','maharashtra'),
(9,'vijay','male',31,'nashik','maharashtra'),
(10,'kavya','female',23,'thane','maharashtra'),
(11,'prakash','male',35,'hyderabad','telangana'),
(12,'swetha','female',29,'warangal','telangana'),
(13,'manoj','male',27,'karimnagar','telangana'),
(14,'harini','female',25,'nizamabad','telangana'),
(15,'dinesh','male',33,'khammam','telangana'),
(16,'pooja','female',24,'kochi','kerala'),
(17,'ramesh','male',38,'kozhikode','kerala'),
(18,'keerthana','female',28,'kollam','kerala'),
(19,'sanjay','male',26,'thrissur','kerala'),
(20,'deepa','female',30,'alappuzha','kerala'),
(21,'ashok','male',34,'bengaluru','karnataka'),
(22,'nandhini','female',22,'mysuru','karnataka'),
(23,'mohan','male',29,'mangaluru','karnataka'),
(24,'aishwarya','female',27,'hubballi','karnataka'),
(25,'gokul','male',25,'belagavi','karnataka'),
(26,'lavanya','female',31,'vijayawada','andhra pradesh'),
(27,'surya','male',28,'visakhapatnam','andhra pradesh'),
(28,'ramya','female',26,'guntur','andhra pradesh'),
(29,'kiran','male',32,'tirupati','andhra pradesh'),
(30,'sangeetha','female',29,'nellore','andhra pradesh'),
(31,'hari','male',24,'ahmedabad','gujarat'),
(32,'monisha','female',25,'surat','gujarat'),
(33,'ajay','male',30,'vadodara','gujarat'),
(34,'bhavya','female',28,'rajkot','gujarat'),
(35,'naveen','male',36,'gandhinagar','gujarat'),
(36,'sowmya','female',23,'jaipur','rajasthan'),
(37,'vignesh','male',27,'jodhpur','rajasthan'),
(38,'janani','female',30,'udaipur','rajasthan'),
(39,'bala','male',33,'kota','rajasthan'),
(40,'karthika','female',26,'ajmer','rajasthan');

insert into products
(product_id, product_name, category, unit_price)
values
(1,'laptop','electronics',55000),
(2,'smartphone','electronics',25000),
(3,'tablet','electronics',18000),
(4,'headphones','electronics',2500),
(5,'smart watch','electronics',4500),
(6,'keyboard','accessories',1200),
(7,'mouse','accessories',800),
(8,'monitor','electronics',12000),
(9,'printer','electronics',15000),
(10,'power bank','accessories',1800),
(11,'t-shirt','clothing',700),
(12,'jeans','clothing',1600),
(13,'shirt','clothing',1200),
(14,'jacket','clothing',2500),
(15,'shoes','footwear',2200),
(16,'sandals','footwear',900),
(17,'backpack','accessories',1400),
(18,'wallet','accessories',700),
(19,'handbag','accessories',1800),
(20,'sunglasses','accessories',1200),
(21,'rice cooker','home appliances',3000),
(22,'mixer grinder','home appliances',4500),
(23,'electric kettle','home appliances',1800),
(24,'iron box','home appliances',1600),
(25,'air cooler','home appliances',8500),
(26,'bedsheet','home & living',1200),
(27,'pillow','home & living',600),
(28,'curtains','home & living',1500),
(29,'water bottle','home & living',500),
(30,'lunch box','home & living',700);

insert into orders
(order_id, customer_id, order_date, payment_method)
values
(1,1,'2026-01-05','upi'),
(2,2,'2026-01-08','credit card'),
(3,3,'2026-01-12','cash'),
(4,4,'2026-01-15','upi'),
(5,5,'2026-01-20','debit card'),
(6,6,'2026-02-03','upi'),
(7,7,'2026-02-07','credit card'),
(8,8,'2026-02-12','cash'),
(9,9,'2026-02-18','upi'),
(10,10,'2026-02-25','debit card'),
(11,11,'2026-03-02','upi'),
(12,12,'2026-03-06','credit card'),
(13,13,'2026-03-10','cash'),
(14,14,'2026-03-15','upi'),
(15,15,'2026-03-20','debit card'),
(16,16,'2026-04-02','upi'),
(17,17,'2026-04-07','credit card'),
(18,18,'2026-04-12','cash'),
(19,19,'2026-04-18','upi'),
(20,20,'2026-04-25','debit card'),
(21,21,'2026-05-03','upi'),
(22,22,'2026-05-08','credit card'),
(23,23,'2026-05-13','cash'),
(24,24,'2026-05-18','upi'),
(25,25,'2026-05-25','debit card'),
(26,26,'2026-06-02','upi'),
(27,27,'2026-06-08','credit card'),
(28,28,'2026-06-14','cash'),
(29,29,'2026-06-20','upi'),
(30,30,'2026-06-27','debit card'),
(31,31,'2026-07-03','upi'),
(32,32,'2026-07-09','credit card'),
(33,33,'2026-07-15','cash'),
(34,34,'2026-07-21','upi'),
(35,35,'2026-07-28','debit card'),
(36,36,'2026-08-04','upi'),
(37,37,'2026-08-10','credit card'),
(38,38,'2026-08-17','cash'),
(39,39,'2026-08-23','upi'),
(40,40,'2026-08-30','debit card');

insert into orderdetails
(order_detail_id, order_id, product_id, quantity)
values
(1,1,1,1),
(2,2,2,2),
(3,3,3,1),
(4,4,4,2),
(5,5,5,1),
(6,6,6,3),
(7,7,7,2),
(8,8,8,1),
(9,9,9,1),
(10,10,10,2),
(11,11,11,3),
(12,12,12,2),
(13,13,13,1),
(14,14,14,2),
(15,15,15,1),
(16,16,16,3),
(17,17,17,2),
(18,18,18,1),
(19,19,19,2),
(20,20,20,1),
(21,21,21,1),
(22,22,22,2),
(23,23,23,2),
(24,24,24,1),
(25,25,25,1),
(26,26,26,2),
(27,27,27,3),
(28,28,28,1),
(29,29,29,2),
(30,30,30,2),
(31,31,1,1),
(32,32,2,1),
(33,33,11,2),
(34,34,15,1),
(35,35,21,1),
(36,36,22,2),
(37,37,8,1),
(38,38,12,2),
(39,39,5,1),
(40,40,25,1);

select * from customers;

select * from products;

select * from orders;

select * from orderdetails;

select count(*) as total_customers
from customers;

select count(*) as total_products
from products;

select count(*) as total_orders
from orders;

select sum(od.quantity * p.unit_price) as total_sales
from orderdetails od
join products p
on od.product_id = p.product_id;

select avg(od.quantity * p.unit_price) as average_order_value
from orderdetails od
join products p
on od.product_id = p.product_id;

select
    p.product_name,
    sum(od.quantity) as total_quantity,
    sum(od.quantity * p.unit_price) as total_sales
from products p
join orderdetails od
on p.product_id = od.product_id
group by p.product_id, p.product_name
order by total_sales desc;

select
    p.category,
    sum(od.quantity) as total_quantity,
    sum(od.quantity * p.unit_price) as total_sales
from products p
join orderdetails od
on p.product_id = od.product_id
group by p.category
order by total_sales desc;

select
    c.customer_name,
    c.city,
    sum(od.quantity * p.unit_price) as total_spent
from customers c
join orders o
on c.customer_id = o.customer_id
join orderdetails od
on o.order_id = od.order_id
join products p
on od.product_id = p.product_id
group by c.customer_id, c.customer_name, c.city
order by total_spent desc;

select
    c.customer_name,
    sum(od.quantity * p.unit_price) as total_spent
from customers c
join orders o
on c.customer_id = o.customer_id
join orderdetails od
on o.order_id = od.order_id
join products p
on od.product_id = p.product_id
group by c.customer_id, c.customer_name
order by total_spent desc
limit 1;

select
    p.product_name,
    sum(od.quantity) as total_quantity
from products p
join orderdetails od
on p.product_id = od.product_id
group by p.product_id, p.product_name
order by total_quantity desc
limit 1;

select
    o.payment_method,
    count(*) as total_orders
from orders o
group by o.payment_method
order by total_orders desc;

select
    state,
    count(*) as total_customers
from customers
group by state
order by total_customers desc;

select
    gender,
    count(*) as total_customers
from customers
group by gender;

select
    case
        when age < 25 then 'below 25'
        when age between 25 and 30 then '25-30'
        else 'above 30'
    end as age_group,
    count(*) as total_customers
from customers
group by age_group;

select
    month(o.order_date) as month_number,
    monthname(o.order_date) as month_name,
    sum(od.quantity * p.unit_price) as total_sales
from orders o
join orderdetails od
on o.order_id = od.order_id
join products p
on od.product_id = p.product_id
group by month(o.order_date), monthname(o.order_date)
order by month_number;

select
    c.customer_name,
    sum(od.quantity * p.unit_price) as total_spent
from customers c
join orders o
on c.customer_id = o.customer_id
join orderdetails od
on o.order_id = od.order_id
join products p
on od.product_id = p.product_id
group by c.customer_id, c.customer_name
having total_spent > 10000
order by total_spent desc;

create view salessummary as
select
    o.order_id,
    o.order_date,
    c.customer_name,
    p.product_name,
    p.category,
    od.quantity,
    p.unit_price,
    (od.quantity * p.unit_price) as total_sales
from orders o
join customers c
on o.customer_id = c.customer_id
join orderdetails od
on o.order_id = od.order_id
join products p
on od.product_id = p.product_id;

select * from salessummary;

select
    p.category,
    count(distinct o.order_id) as total_orders,
    sum(od.quantity) as total_quantity,
    sum(od.quantity * p.unit_price) as total_revenue
from products p
join orderdetails od
on p.product_id = od.product_id
join orders o
on od.order_id = o.order_id
group by p.category
order by total_revenue desc;