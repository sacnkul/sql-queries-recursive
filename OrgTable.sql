use world;
CREATE TABLE Org (
    orgId INT AUTO_INCREMENT PRIMARY KEY,
    orgName VARCHAR(255) NOT NULL,
    parentOrgId INT,
    propertyX VARCHAR(255),
    propertyY VARCHAR(255),
    FOREIGN KEY (parentOrgId) REFERENCES Org(orgId)
);

select * from org where parentOrgId=1;
Update org set propertyY =''  where parentOrgId IN (2,3,6,10,13,12);


-- Insert the root organization
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Company Corp', NULL, 'PropertyX_1', 'PropertyY_1');

-- Insert child organizations
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Tech Group', 1, 'PropertyX_2', 'PropertyY_2');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('ABC Solutions', 2, 'PropertyX_3', 'PropertyY_3');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Global Corp', 1, 'PropertyX_4', 'PropertyY_4');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('XYZ World', 4, 'PropertyX_5', 'PropertyY_5');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Tech Corp', 1, 'PropertyX_6', 'PropertyY_6');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Global Solutions', 6, 'PropertyX_7', 'PropertyY_7');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('ABC Inc', 7, 'PropertyX_8', 'PropertyY_8');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('XYZ Group', 7, 'PropertyX_9', 'PropertyY_9');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Company Solutions', 1, 'PropertyX_10', 'PropertyY_10');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Global World', 10, 'PropertyX_11', 'PropertyY_11');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Tech Group', 10, 'PropertyX_12', 'PropertyY_12');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('ABC Corp', 11, 'PropertyX_13', 'PropertyY_13');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('XYZ Inc', 13, 'PropertyX_14', 'PropertyY_14');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Company World', 11, 'PropertyX_15', 'PropertyY_15');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Global Solutions', 16, 'PropertyX_16', 'PropertyY_16');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Tech Inc', 17, 'PropertyX_17', 'PropertyY_17');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('ABC Group', 16, 'PropertyX_18', 'PropertyY_18');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('XYZ Corp', 18, 'PropertyX_19', 'PropertyY_19');
INSERT INTO Org (orgName, parentOrgId, propertyX, propertyY) VALUES ('Global Corp', 19, 'PropertyX_20', 'PropertyY_20');
