create database furama_management_system;
use furama_management_system;
create table `position`(
  id int primary key, 
  `name` varchar(45)
);
create table education_degree(
  id int primary key, 
  `name` varchar(45)
);
create table divition(
  id int primary key, 
  `name` varchar(45)
);

create table `role`(
role_id int primary key,
role_name varchar(255)
);

create table `user`(
username varchar(255) primary key,
`password` varchar(255)
);

create table user_role(
role_id int,
username varchar(255),
primary key(role_id,username),
foreign key(role_id) references `role`(role_id),
foreign key(username) references `user`(username)
);

create table employee(
  id int primary key, 
  `name` varchar(45) not null, 
  date_of_birth date not null, 
  id_card varchar(45) not null, 
  salary double not null, 
  phone_number varchar(45) not null, 
  email varchar(45), 
  address varchar(45), 
  position_id int, 
  education_degree_id int, 
  divition_id int, 
  username varchar(255),
  foreign key (position_id) references `position`(id), 
  foreign key (education_degree_id) references education_degree(id), 
  foreign key (divition_id) references divition(id),
  foreign key (username) references `user`(username)
);

create table customer_type(
  id int primary key, 
  `name` varchar(45)
);
create table customer(
  id int primary key, 
  customer_type_id int, 
  `name` varchar(45) not null, 
  date_of_birth date not null, 
  gender bit(1) not null, 
  id_card varchar(45) not null, 
  phone_number varchar(45) not null, 
  email varchar(45), 
  address varchar(45), 
  foreign key (customer_type_id) references customer_type(id)
);

create table facility_type(
  id int primary key, 
  `name` varchar(45)
);
create table rent_type (
  id int primary key, 
  `name` varchar(45)
);
create table facility(
  id int primary key, 
  `name` varchar(45) not null, 
  area int, 
  cost double not null, 
  max_people int, 
  rent_type_id int, 
  facility_type_id int, 
  foreign key (rent_type_id) references rent_type(id), 
  foreign key (facility_type_id) references facility_type(id), 
  standard_room varchar(45), 
  description_other_convenience varchar(45), 
  pool_area double, 
  number_of_floors int, 
  falicity_free text
);
create table attach_facility(
  id int primary key, 
  `name` varchar(45) not null, 
  cost double not null, 
  unit varchar(10) not null, 
  `status` varchar(45)
);
create table contract(
  id int primary key, 
  start_date datetime not null, 
  end_date datetime not null, 
  deposit double not null, 
  employee_id int, 
  customer_id int, 
  facility_id int, 
  foreign key (employee_id) references employee(id), 
  foreign key (customer_id) references customer(id), 
  foreign key (facility_id) references facility(id)
);
create table contract_detail(
  id int primary key, 
  contract_id int, 
  attach_facility_id int, 
  quanlity int not null, 
  foreign key (contract_id) references contract(id), 
  foreign key (attach_facility_id) references attach_facility(id)
);