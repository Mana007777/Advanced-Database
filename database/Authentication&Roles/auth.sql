-- Step one ( Create Roles)
CREATE ROLE admin_role;
CREATE ROLE manager_role;
CREATE ROLE guest_role;

-- Create users with passwords
CREATE USER mana_admin IDENTIFIED BY 123123;
CREATE USER mana_manager IDENTIFIED BY 345345;
CREATE USER mana_guest IDENTIFIED BY 676767;


-- Grant basic privileges
GRANT CONNECT, RESOURCE TO mana_admin;
GRANT CONNECT, RESOURCE TO mana_manager;
GRANT CONNECT, RESOURCE TO mana_guest;


-- Assign roles to users
GRANT admin_role TO mana_admin;
GRANT manager_role TO mana_manager;
GRANT guest_role TO mana_guest;


GRANT ALL PRIVILEGES ON Hotels TO admin_role;
GRANT ALL PRIVILEGES ON Rooms_RoomType TO admin_role;
GRANT ALL PRIVILEGES ON Rooms TO admin_role;
GRANT ALL PRIVILEGES ON Hotels_Guests TO admin_role;
GRANT ALL PRIVILEGES ON Bookings_Booking TO admin_role;
GRANT ALL PRIVILEGES ON Bookings_Payments TO admin_role;
GRANT ALL PRIVILEGES ON Bookings_Discount TO admin_role;
GRANT ALL PRIVILEGES ON HotelService_Services TO admin_role;
GRANT ALL PRIVILEGES ON HotelService_Requests TO admin_role;
GRANT ALL PRIVILEGES ON HotelService_Hotel TO admin_role;
GRANT ALL PRIVILEGES ON Users TO admin_role;
GRANT ALL PRIVILEGES ON Hotels_Employees TO admin_role;
GRANT ALL PRIVILEGES ON Hotels_Departments TO admin_role;


GRANT SELECT, INSERT, UPDATE ON Hotels_Guests TO manager_role;
GRANT SELECT, INSERT, UPDATE ON Bookings_Booking TO manager_role;
GRANT SELECT, INSERT, UPDATE ON Bookings_Payments TO manager_role;
GRANT SELECT ON Hotels_Employees TO manager_role;


GRANT SELECT ON Hotels TO guest_role;
GRANT SELECT ON Rooms TO guest_role;
GRANT SELECT ON Rooms_RoomType TO guest_role;
GRANT SELECT ON Hotels_Guests TO guest_role;


-- Check created users
SELECT username FROM all_users;

-- Check roles and granted privileges
SELECT * FROM dba_role_privs WHERE grantee IN ('ADMIN_USER', 'MANAGER_USER', 'GUEST_USER');







