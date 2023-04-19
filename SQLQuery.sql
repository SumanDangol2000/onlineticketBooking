


CREATE TABLE flights (
  flight_id INT PRIMARY KEY IDENTITY(1,1),
  flight_number VARCHAR(10) NOT NULL,
  departure_airport VARCHAR(100) NOT NULL,
  arrival_airport VARCHAR(100) NOT NULL,
  departure_time VARCHAR(100) NOT NULL,
  arrival_time VARCHAR(100) NOT NULL,
  duration INT NOT NULL,
  airline_id INT,
  FOREIGN KEY (airline_id) REFERENCES airlines(airline_id),
);


CREATE TABLE users (
  user_id INT NOT NULL PRIMARY KEY IDENTITY(100,1),
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone_number CHAR(10) NOT NULL,
  password VARCHAR(50) NOT NULL,
  role varchar(50) NOT NULL,
);

CREATE TABLE bookings (
  booking_id INT NOT NULL PRIMARY KEY IDENTITY(1000,1),
  user_id INT NOT NULL,
  flight_id INT NOT NULL,
  booking_date VARCHAR(100) NOT NULL,
  number_of_booking INT NOT NULL,
  total_cost DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (flight_id) REFERENCES flights(flight_id),
);

CREATE TABLE payments (
  payment_id INT PRIMARY KEY IDENTITY(10,1),
  booking_id INT NOT NULL,
  payment_amount DECIMAL(10,2) NOT NULL,
  payment_date VARCHAR(100) NOT NULL,
  FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

CREATE TABLE airlines (
  airline_id INT PRIMARY KEY IDENTITY(100,1),
  airline_name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
);

CREATE TABLE reviews (
  review_id INT PRIMARY KEY IDENTITY(1000,1),
  user_id int,
  email VARCHAR(50) NOT NULL,
  message VARCHAR(100) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id)

);



