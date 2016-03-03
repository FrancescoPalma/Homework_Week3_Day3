CREATE TABLE orders (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  size INT2,
  quantity INT2
);