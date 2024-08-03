-- some test for learning how to migrate
-- database queries from MySQL to PostgreSQL 


-- Create new table to set level access user
CREATE TABLE lvl_st(
    id_lvl SERIAL PRIMARY KEY,
    type_usr VARCHAR(50) NOT NULL,
);
INSERT INTO lvl_st (type_usr)
VALUES 
('Administrator'),
('Developer'),
('Employer'),
('Guest');

-- Show all level access user
SELECT * FROM lvl_st;

-- Create a new table to add users
CREATE TABLE user_st(
    id_usr SERIAL PRIMARY KEY,
    name_usr VARCHAR(50),
    pwd_usr VARCHAR(50),
    lvl_usr INTEGER,
    FOREIGN KEY(lvl_usr)
    REFERENCES lvl_st(lvl_id)
);

-- Insert data into the user_st table
INSERT INTO user_st (name_usr, pwd_usr, lvl_usr)
VALUES ('Alias_1', 'password_1', 1),
       ('Alias_2', 'password_2', 2),
       ('Alias_3', 'password_3', 3);

-- Show all users
SELECT * FROM user_st;