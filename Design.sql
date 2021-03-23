CREATE DATABASE store_management COLLATE 'utf8mb4_unicode_ci'

CREATE TABLE product(
  product_id integer 	UNSIGNED NOT NULL AUTO_INCREMENT,
  product_name varchar(150) not null ,
  product_code varchar(255) not null UNIQUE,
  product_price double UNSIGNED not null,
  productdescrption text ,
    PRIMARY KEY (product_id)
);

CREATE TABLE supplier(
  id integer 	UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(150) not null ,
  email varchar(255) not null UNIQUE,
  phone int(11) not null,
   brief_data text ,
    product_id integer 	UNSIGNED NOT NULL ,
    PRIMARY KEY (id),
    FOREIGN KEY(product_id) REFERENCES product(id)
);



CREATE TABLE suppliers(
  id integer UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(150) not null ,
  email varchar(255) not null UNIQUE,
  phone int(11) not null,
  brief_data text ,
  product_id integer UNSIGNED NOT NULL ,
  PRIMARY KEY (id),
  FOREIGN KEY(product_id) REFERENCES product(product_id )
);



CREATE TABLE stores(
  id integer UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(255) not null ,
  address text not null,
  product_id integer UNSIGNED NOT NULL ,
  PRIMARY KEY (id),
  FOREIGN KEY(product_id) REFERENCES product(product_id)
);


