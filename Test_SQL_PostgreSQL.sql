--some test for learning how to migrate
--data from MySQL to PostgreSQL 

CREATE TABLE lvl_st(
    id_lvl SERIAL PRIMARY KEY,
    type_usr VARCHAR(50),
);
INSERT INTO lvl_st (type_usr)
VALUES (),(),();


-- Create a new table
CREATE TABLE user_st(
    id_usr SERIAL PRIMARY KEY,
    name_usr VARCHAR(50),
    pwd_usr VARCHAR(50),
    lvl_usr INTEGER
);

-- Insert data into the user_st table
INSERT INTO user_st (name_usr, pwd_usr, lvl_usr)
VALUES ('Alias_1', 'password_1', 1),
       ('Alias_2', 'password_2', 2),
       ('Alias_3', 'password_3', 3);

-- Retrieve all users
SELECT * FROM user_st;