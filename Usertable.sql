use world;
-- Create User table
CREATE TABLE User (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    orgId INT,
    propertyX VARCHAR(255),
    propertyY VARCHAR(255),
    FOREIGN KEY (orgId) REFERENCES Org(orgId)
);

-- Insert users into the User table
INSERT INTO User (name, orgId, propertyX, propertyY) VALUES ('John Doe', 1, 'UserPropertyX_1', 'UserPropertyY_1');
INSERT INTO User (name, orgId, propertyX, propertyY) VALUES ('Jane Smith', 2, 'UserPropertyX_2', 'UserPropertyY_2');
INSERT INTO User (name, orgId, propertyX, propertyY) VALUES ('Bob Johnson', 3, 'UserPropertyX_3', 'UserPropertyY_3');
INSERT INTO User (name, orgId, propertyX, propertyY) VALUES ('Alice Williams', 4, 'UserPropertyX_4', 'UserPropertyY_4');
INSERT INTO User (name, orgId, propertyX, propertyY) VALUES ('Charlie Brown', 5, 'UserPropertyX_5', 'UserPropertyY_5');

select * from user;

update user set propertyX= '' where userId IN (5);
update user set propertyY= '' where userId IN (1,2,3);

