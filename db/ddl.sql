SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS trip_port;
DROP TABLE IF EXISTS msl_entertainment_trip;
DROP TABLE IF EXISTS msl_restaurant_trip;
DROP TABLE IF EXISTS msl_stateroom_trip;
DROP TABLE IF EXISTS msl_grouppackage;
DROP TABLE IF EXISTS msl_passenger;
DROP TABLE IF EXISTS msl_payment;
DROP TABLE IF EXISTS msl_user;
DROP TABLE IF EXISTS msl_booking;
DROP TABLE IF EXISTS msl_group;
DROP TABLE IF EXISTS msl_entertainment;
DROP TABLE IF EXISTS msl_restaurant;
DROP TABLE IF EXISTS msl_stateroom;
DROP TABLE IF EXISTS msl_package;
DROP TABLE IF EXISTS msl_port;
DROP TABLE IF EXISTS msl_trip;
DROP TABLE IF EXISTS msl_invoice;
DROP TABLE IF EXISTS msl_ship;
DROP TABLE IF EXISTS msl_address;

SET FOREIGN_KEY_CHECKS=1;



CREATE TABLE msl_address (
    addressid     INT NOT NULL COMMENT 'ADDRESSID',
    address_type  VARCHAR(30) NOT NULL COMMENT 'ADDRESS_TYPE',
    address_line1 VARCHAR(30) NOT NULL COMMENT 'ADDRESS_LINE1',
    address_line2 VARCHAR(30) COMMENT 'ADDRESS_LINE2',
    city          VARCHAR(30) NOT NULL COMMENT 'CITY',
    state         VARCHAR(30) NOT NULL COMMENT 'STATE',
    country       VARCHAR(30) NOT NULL COMMENT 'COUNTRY',
    zipcode       VARCHAR(5) NOT NULL COMMENT 'ZIPCODE',
    PRIMARY KEY (addressid)
) ENGINE=InnoDB;

CREATE TABLE msl_invoice (
    invoiceid   INT NOT NULL COMMENT 'INVOICEID',
    issue_date  DATE NOT NULL COMMENT 'ISSUE_DATE',
    totalamount DECIMAL(10,2) NOT NULL COMMENT 'TOTAL AMOUNT',
    due_date    DATE NOT NULL COMMENT 'DUE_DATE',
    PRIMARY KEY (invoiceid)
) ENGINE=InnoDB;

CREATE TABLE msl_trip (
    tripid           INT NOT NULL COMMENT 'TRIPID',
    startdate        DATE NOT NULL COMMENT 'STARTDATE',
    enddate          DATE NOT NULL COMMENT 'ENDDATE TIME',
    passenger_number INT NOT NULL COMMENT 'PASSENGER_NUMBER',
    shipid           INT NOT NULL,
    PRIMARY KEY (tripid)
) ENGINE=InnoDB;

CREATE TABLE msl_booking (
    bookingid   INT NOT NULL COMMENT 'BookingID',
    bookingdate DATE NOT NULL COMMENT 'BOOKINGDATE',
    bookingtime time NOT NULL COMMENT 'BOOKINGTIME',
    invoiceid   INT NOT NULL,
    tripid      INT NOT NULL,
    PRIMARY KEY (bookingid),
    UNIQUE INDEX msl_booking__idx (invoiceid)
) ENGINE=InnoDB;

CREATE TABLE msl_user (
    user_id      VARCHAR(25) NOT NULL COMMENT 'The ID of that USER',
    user_name    VARCHAR(25) NOT NULL COMMENT 'USER NAME for login',
    password     VARCHAR(128) NOT NULL COMMENT 'PASSWORD for login',
    account_type VARCHAR(12) NOT NULL COMMENT 'Customer or staff.',
    PRIMARY KEY (user_id)
) ENGINE=InnoDB;

CREATE TABLE msl_package (
    packageid       INT NOT NULL COMMENT 'PACKAGEID',
    pack_name       VARCHAR(100) NOT NULL COMMENT 'Examples: ''Water and Non-Alcoholic'', ''Unlimited Bar'', etc.',
    price_pernight  DECIMAL(10,2) NOT NULL COMMENT 'PricePerPersonPerNight',
    price_person    DECIMAL(10,2) NOT NULL COMMENT 'PricePerPersonPerTrip',
    agelimit        VARCHAR(100) NOT NULL COMMENT 'Examples: ''Over 5'', ''Over 21''',
    pack_price_type VARCHAR(100) NOT NULL COMMENT 'PACKAGE_PRICE_TYPE',
    PRIMARY KEY (packageid)
) ENGINE=InnoDB;

CREATE TABLE msl_group (
    groupid   INT NOT NULL COMMENT 'GROUPID',
    groupname VARCHAR(50) NOT NULL COMMENT 'Group name',
    bookingid INT NOT NULL,
    PRIMARY KEY (groupid)
) ENGINE=InnoDB;

CREATE TABLE msl_grouppackage (
    gp_id         VARCHAR(10) NOT NULL COMMENT 'GroupPackageID',
    purchase_date DATE NOT NULL COMMENT 'PURCHASE DATE',
    gp_price      DECIMAL(10,2) NOT NULL COMMENT 'TOTAL PRICE',
    gp_stardate   DATE NOT NULL COMMENT 'START DATETIME',
    gp_enddate    DATE NOT NULL COMMENT 'ENDDATE',
    groupid       INT NOT NULL,
    packageid     INT NOT NULL,
    PRIMARY KEY (gp_id)
) ENGINE=InnoDB;

CREATE TABLE msl_passenger (
    pid          VARCHAR(10) NOT NULL COMMENT 'PASSENGER ID',
    p_fname      VARCHAR(20) NOT NULL COMMENT 'PASSENGER FIRST NAME',
    p_lname      VARCHAR(10) NOT NULL COMMENT 'LAST NAME',
    pdob         DATE NOT NULL COMMENT 'PASSENGER date of birth',
    pgender      VARCHAR(2) NOT NULL COMMENT 'PASSENGER GENDER',
    pnationality VARCHAR(50) NOT NULL COMMENT 'PASSENGER NATIONALITY',
    pemail       VARCHAR(100) NOT NULL COMMENT 'PASSENGER EMAIL',
    phone        VARCHAR(20) NOT NULL COMMENT 'PHONE NUMBER',
    addressid    INT NOT NULL,
    bookingid    INT NOT NULL,
    stateroomid  INT NOT NULL,
    packageid    INT,
    groupid      INT NOT NULL,
    user_id      VARCHAR(25) NOT NULL,
    PRIMARY KEY (pid),
    UNIQUE INDEX msl_passenger__idx (user_id)
) ENGINE=InnoDB;

CREATE TABLE msl_payment (
    paymentid      INT NOT NULL COMMENT 'PAYMENTID',
    paydate        DATE NOT NULL COMMENT 'PAYMENTDATE',
    payment_amount DECIMAL(10,2) NOT NULL COMMENT 'PAYMENT AMOUNT USD',
    payment_method VARCHAR(50) NOT NULL COMMENT 'PAYMENT METHOD',
    tripid         INT NOT NULL,
    invoiceid      INT NOT NULL,
    PRIMARY KEY (paymentid)
) ENGINE=InnoDB;

CREATE TABLE msl_ship (
    shipid        INT NOT NULL COMMENT 'SHIPID',
    shipname      VARCHAR(30) NOT NULL COMMENT 'SHIPNAME',
    ship_capacity INT NOT NULL COMMENT 'SHIP''S  CAPACITY',
    PRIMARY KEY (shipid)
) ENGINE=InnoDB;

CREATE TABLE msl_stateroom (
    stateroomid    INT NOT NULL,
    room_number    VARCHAR(10) NOT NULL COMMENT 'ROOM_NUMBER',
    roomtype       VARCHAR(50) NOT NULL COMMENT 'ROOM TYPE',
    roomprice      DECIMAL(10,2) NOT NULL COMMENT 'SALE PRICE',
    roomsize       VARCHAR(50) NOT NULL COMMENT 'ROOMSIZE',
    bed_number     INT NOT NULL COMMENT 'ROOM_BEDNUMBER',
    bath_number    INT NOT NULL COMMENT 'BATH_NUMBER',
    room_loca      VARCHAR(20) NOT NULL COMMENT 'ROOM_LOCATION',
    balcony_number INT NOT NULL COMMENT 'BALCONY_NUMBER',
    PRIMARY KEY (stateroomid)
) ENGINE=InnoDB;

CREATE TABLE msl_restaurant (
    restaurantid INT NOT NULL COMMENT 'RESTAURANT ID',
    res_name     VARCHAR(100) NOT NULL COMMENT 'RESTAURANT NAME',
    res_type     VARCHAR(50) NOT NULL COMMENT 'RESTAURANT TYPE',
    res_opent    TIME NOT NULL COMMENT 'OPEN TIME',
    res_closet   TIME NOT NULL COMMENT 'CLOSING TIME',
    res_floor    INT NOT NULL COMMENT 'RESTAURANT FLOORNUMBER',
    res_des      VARCHAR(99) NOT NULL COMMENT 'INTRODUCE THE RESTAURANT',
    PRIMARY KEY (restaurantid)
) ENGINE=InnoDB;

CREATE TABLE msl_entertainment (
    entertainmentid INT NOT NULL COMMENT 'ACTIVITYID',
    e_name          VARCHAR(100) NOT NULL COMMENT 'ACTIVITY NAME',
    e_type          VARCHAR(50) NOT NULL COMMENT 'e.g., Show, Workshop, Fitness Class',
    e_schedule      VARCHAR(50) NOT NULL COMMENT 'e.g., Daily, Weekly',
    e_floor         VARCHAR(30),
    start_time      TIME NOT NULL COMMENT 'DURATION',
    e_agelimit      INT NOT NULL COMMENT 'E_AGELIMIT',
    end_time        TIME,
    PRIMARY KEY (entertainmentid)
) ENGINE=InnoDB;

CREATE TABLE msl_entertainment_trip (
    entertainmentid      INT NOT NULL,
    tripid               INT NOT NULL,
    entertainment_tripid VARCHAR(20) NOT NULL COMMENT 'ENTEERTAINMENT TRIP ID combine',
    PRIMARY KEY (entertainment_tripid)
) ENGINE=InnoDB;

CREATE TABLE msl_restaurant_trip (
    tripid       INT NOT NULL,
    restaurantid INT NOT NULL,
    res_tripid   VARCHAR(20) NOT NULL COMMENT 'Restaurant trip id combine',
    PRIMARY KEY (res_tripid)
) ENGINE=InnoDB;

CREATE TABLE msl_stateroom_trip (
    stateroomid      INT NOT NULL,
    tripid           INT NOT NULL,
    stateroomtrip_id VARCHAR(20) NOT NULL COMMENT 'ID for each room for each trip',
    PRIMARY KEY (stateroomtrip_id)
) ENGINE=InnoDB;

CREATE TABLE msl_port (
    portid       INT NOT NULL COMMENT 'PortID',
    portname     VARCHAR(100) NOT NULL COMMENT 'PORTNAME',
    airport      VARCHAR(50) NOT NULL COMMENT 'NEARESR AIRPORT NAME',
    parking_spot VARCHAR(50) NOT NULL COMMENT 'PARKING_SPOT',
    addressid    INT NOT NULL,
    PRIMARY KEY (portid),
    UNIQUE INDEX msl_port__idx (addressid)
) ENGINE=InnoDB;

CREATE TABLE trip_port (
    tripport_id     VARCHAR(9) NOT NULL,
    port_role       VARCHAR(20) NOT NULL COMMENT 'port role for that trip, it can be START PORT, END PORT, ITINERARY PORT.',
    stops_number    INT NOT NULL COMMENT 'from start port to end port, each stops'' numbe. START from 1',
    trip_tripid INT NOT NULL,
    port_portid INT NOT NULL,
    startt          DATETIME NOT NULL COMMENT 'Start time of that port',
    endt            DATETIME NOT NULL COMMENT 'END time of that port',
    PRIMARY KEY (tripport_id)
) ENGINE=InnoDB;

-- Foreign Keys
ALTER TABLE msl_booking
    ADD CONSTRAINT msl_booking_msl_invoice_fk FOREIGN KEY (invoiceid)
        REFERENCES msl_invoice (invoiceid) ON DELETE CASCADE;

ALTER TABLE msl_booking
    ADD CONSTRAINT msl_booking_msl_trip_fk FOREIGN KEY (tripid)
        REFERENCES msl_trip (tripid) ON DELETE CASCADE;

ALTER TABLE msl_grouppackage
    ADD CONSTRAINT msl_group_fk FOREIGN KEY (groupid)
        REFERENCES msl_group (groupid) ON DELETE CASCADE;

ALTER TABLE msl_group
    ADD CONSTRAINT msl_group_msl_booking_fk FOREIGN KEY (bookingid)
        REFERENCES msl_booking (bookingid) ON DELETE CASCADE;

ALTER TABLE msl_payment
    ADD CONSTRAINT msl_invoice_fk FOREIGN KEY (invoiceid)
        REFERENCES msl_invoice (invoiceid) ON DELETE CASCADE;

ALTER TABLE msl_grouppackage
    ADD CONSTRAINT msl_package_fk FOREIGN KEY (packageid)
        REFERENCES msl_package (packageid) ON DELETE CASCADE;

ALTER TABLE msl_passenger
    ADD CONSTRAINT msl_passenger_msl_address_fk FOREIGN KEY (addressid)
        REFERENCES msl_address (addressid) ON DELETE CASCADE;

ALTER TABLE msl_passenger
    ADD CONSTRAINT msl_passenger_msl_booking_fk FOREIGN KEY (bookingid)
        REFERENCES msl_booking (bookingid) ON DELETE CASCADE;

ALTER TABLE msl_passenger
    ADD CONSTRAINT msl_passenger_msl_group_fk FOREIGN KEY (groupid)
        REFERENCES msl_group (groupid) ON DELETE CASCADE;

ALTER TABLE msl_passenger
    ADD CONSTRAINT msl_passenger_msl_package_fk FOREIGN KEY (packageid)
        REFERENCES msl_package (packageid) ON DELETE CASCADE;

ALTER TABLE msl_passenger
    ADD CONSTRAINT msl_passenger_msl_user_fk FOREIGN KEY (user_id)
        REFERENCES msl_user (user_id) ON DELETE CASCADE;

ALTER TABLE msl_payment
    ADD CONSTRAINT msl_payment_msl_trip_fk FOREIGN KEY (tripid)
        REFERENCES msl_trip (tripid) ON DELETE CASCADE;

ALTER TABLE msl_port
    ADD CONSTRAINT msl_port_msl_address_fk FOREIGN KEY (addressid)
        REFERENCES msl_address (addressid) ON DELETE CASCADE;

ALTER TABLE msl_restaurant_trip
    ADD CONSTRAINT msl_restaurant_fk FOREIGN KEY (restaurantid)
        REFERENCES msl_restaurant (restaurantid) ON DELETE CASCADE;

ALTER TABLE msl_passenger
    ADD CONSTRAINT msl_stateroom_fk FOREIGN KEY (stateroomid)
        REFERENCES msl_stateroom (stateroomid) ON DELETE CASCADE;

ALTER TABLE msl_stateroom_trip
    ADD CONSTRAINT msl_stateroom_fkv2 FOREIGN KEY (stateroomid)
        REFERENCES msl_stateroom (stateroomid) ON DELETE CASCADE;

ALTER TABLE msl_entertainment_trip
    ADD CONSTRAINT msl_trip_fk FOREIGN KEY (tripid)
        REFERENCES msl_trip (tripid) ON DELETE CASCADE;

ALTER TABLE msl_stateroom_trip
    ADD CONSTRAINT msl_trip_fkv2 FOREIGN KEY (tripid)
        REFERENCES msl_trip (tripid) ON DELETE CASCADE;

ALTER TABLE msl_restaurant_trip
    ADD CONSTRAINT msl_trip_fkv3 FOREIGN KEY (tripid)
        REFERENCES msl_trip (tripid) ON DELETE CASCADE;

ALTER TABLE msl_trip
    ADD CONSTRAINT msl_trip_msl_ship_fk FOREIGN KEY (shipid)
        REFERENCES msl_ship (shipid) ON DELETE CASCADE;

ALTER TABLE trip_port
    ADD CONSTRAINT trip_port_msl_port_fk FOREIGN KEY (port_portid)
        REFERENCES msl_port (portid) ON DELETE CASCADE;

ALTER TABLE trip_port
    ADD CONSTRAINT trip_port_msl_trip_fk FOREIGN KEY (trip_tripid)
        REFERENCES msl_trip (tripid) ON DELETE CASCADE;

ALTER TABLE msl_entertainment_trip
    ADD CONSTRAINT entertainment FOREIGN KEY (entertainmentid)
        REFERENCES msl_entertainment (entertainmentid) ON DELETE CASCADE;

-- CHECK Constraints
-- Ensure payment_amount > 0
ALTER TABLE msl_payment 
ADD CONSTRAINT chk_payment_amount CHECK (payment_amount > 0);

-- Ensure roomtype is one of the allowed values
ALTER TABLE msl_stateroom 
ADD CONSTRAINT chk_roomtype CHECK (roomtype IN (
    'The Haven Suite', 
    'Club Balcony Suite', 
    'Family Large Balcony', 
    'Family Balcony', 
    'Oceanview window', 
    'Inside stateroom', 
    'Studio stateroom'
));

-- Ensure room_loca is one of the allowed values
ALTER TABLE msl_stateroom 
ADD CONSTRAINT chk_room_loca CHECK (room_loca IN (
    'Bow', 
    'Stern', 
    'Port Side', 
    'Starboard Side'
));

-- Ensure port_role is one of the allowed values
ALTER TABLE trip_port 
ADD CONSTRAINT chk_port_role CHECK (port_role IN ('start', 'end', 'itinerary'));

-- Ensure bath_number >= 1
ALTER TABLE msl_stateroom 
ADD CONSTRAINT chk_bath_number CHECK (bath_number >= 1);

-- Ensure account_type is either 'Customer' or 'staff'
ALTER TABLE msl_user
ADD CONSTRAINT chk_account_type CHECK (account_type IN ('Customer','staff'));


-- This procedure takes an invoice id and returns the total payment amount for that invoice.
DELIMITER $$
CREATE PROCEDURE GetTotalPaymentsForInvoice(IN input_invoiceid INT, OUT total DECIMAL(10,2))
BEGIN
    SELECT SUM(payment_amount) INTO total 
    FROM msl_payment 
    WHERE invoiceid = input_invoiceid;
END$$
DELIMITER ;

