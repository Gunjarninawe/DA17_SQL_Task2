create table Shops (
    shop_id serial primary key,
    shop_name varchar,
    address varchar,
    city varchar,
    contact_number varchar
)

select * from Shops

insert into Shops (shop_name, address, city, contact_number) values
('TechZone Electronics', ' MIDC Road', 'pune', '9876543210'),
('Digital World', ' Park Street', 'mumbai', '8765432109'),
('Gadget Galaxy', ' Brigade Road', 'goa', '7654321098'),
('Electronix Hub', ' Anna Salai', 'nagpur','6543210987')



create table ElectronicsItems (
    item_id serial primary key,
    item_name varchar,
    item_description varchar,
    category varchar
)

select * from ElectronicsItems;

insert into ElectronicsItems (item_name, item_description, category) values
('Laptop - Model X', '15-inch, 16GB RAM, 512GB SSD', 'Laptops'),
('Smartphone - Model Y', '6.5-inch, 128GB Storage, Dual Camera', 'Smartphones'),
('Smart TV - Model Z', '55-inch, 4K UHD, Smart Features', 'Televisions'),
('Wireless Headphones - Model A', 'Noise Cancelling, Bluetooth 5.0', 'Audio'),
('Digital Camera - Model B', '24MP, 4K Video, Interchangeable Lens', 'Cameras');


create table Prices (
    price_id serial primary key,
    shop_id int ,
    item_id int ,
    price int,
    availability boolean,
	CONSTRAINT fk_Prices_Shops FOREIGN KEY (shop_id) REFERENCES Shops(shop_id) ,
	CONSTRAINT fk_Prices_ElectronicsItems FOREIGN KEY (item_id) REFERENCES ElectronicsItems(item_id)
)

select * from Prices

insert into Prices (shop_id, item_id, price, availability) values
(1, 1, 1200, TRUE),
(2, 1, 1250, TRUE),
(3, 2, 800, TRUE),
(4, 2, 820, FALSE),
(1, 3, 700, TRUE),
(2, 3, 710, TRUE),
(3, 4, 150, TRUE),
(4, 4, 155, TRUE),
(1, 5, 900, TRUE),
(2, 5, 920, FALSE);

