CREATE TABLE IF NOT EXISTS CUSTOMER (
    ID UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    NAME VARCHAR(200) NOT NULL,
    PHONE VARCHAR(200) NOT NULL,
    EMAIL VARCHAR(200) NOT NULL UNIQUE,
    PASSWORD VARCHAR(200) NOT NULL,
    DOCUMENT VARCHAR(200) NOT NULL,
    TYPE VARCHAR(10) NOT NULL CHECK (TYPE IN ('ADMIN', 'CLIENTE'))
    );

MERGE INTO CUSTOMER (ID, NAME, PHONE, EMAIL, PASSWORD, DOCUMENT, TYPE)
    KEY (EMAIL)
    VALUES (RANDOM_UUID(), 'admin', '11000000000', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '00000000000', 'ADMIN');


CREATE TABLE IF NOT EXISTS DESTINATION (
    ID UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    COUNTRY VARCHAR(100) NOT NULL,
    CITY VARCHAR(100) NOT NULL
    );

CREATE TABLE IF NOT EXISTS FLIGHT (
    ID UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    FLIGHT_NUMBER VARCHAR(7) NOT NULL,
    DEPARTURE_DATE_TIME TIMESTAMP NOT NULL,
    ARRIVAL_DATE_TIME TIMESTAMP NOT NULL,
    ORIGIN VARCHAR(200) NOT NULL,
    PRICE DECIMAL(10, 2) NOT NULL,
    DESTINATION_ID UUID,
    FOREIGN KEY (DESTINATION_ID) REFERENCES DESTINATION(ID)
    );

CREATE TABLE IF NOT EXISTS SEATS (
    ID UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    SEAT_NUMBER INTEGER NOT NULL,
    AVAILABLE BOOLEAN NOT NULL,
    FLIGHT_ID UUID,
    FOREIGN KEY (FLIGHT_ID) REFERENCES FLIGHT(ID)
    );

CREATE TABLE IF NOT EXISTS BOOKING (
    ID UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    RESERVATION_DATE DATE NOT NULL,
    CUSTOMER_ID UUID,
    FLIGHT_ID UUID,
    SEAT_ID UUID,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(ID),
    FOREIGN KEY (FLIGHT_ID) REFERENCES FLIGHT(ID),
    FOREIGN KEY (SEAT_ID) REFERENCES SEATS(ID)
    );
