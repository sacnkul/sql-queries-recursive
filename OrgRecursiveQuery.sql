use world;
WITH RECURSIVE OrgHierarchy AS (
  SELECT orgId, orgName, parentOrgId, propertyX, propertyY, orgId AS inheritedOrgIdX, orgId AS inheritedOrgIdY
  FROM Org
  WHERE orgId = 1  -- Start with the root organization (you can specify the orgId you want to start with)
  
  UNION ALL
  
  SELECT o.orgId, o.orgName, o.parentOrgId,
         CASE
            WHEN o.propertyX = '' THEN oh.propertyX
            ELSE o.propertyX
         END AS propertyX,
         CASE
            WHEN o.propertyY = '' THEN oh.propertyY
            ELSE o.propertyY
         END AS propertyY,
         CASE
            WHEN o.propertyX = '' THEN oh.inheritedOrgIdX
            ELSE o.orgId
         END AS inheritedOrgIdX,
         CASE
            WHEN o.propertyY = '' THEN oh.inheritedOrgIdY
            ELSE o.orgId
         END AS inheritedOrgIdY
  FROM Org o
  JOIN OrgHierarchy oh ON o.parentOrgId = oh.orgId
)
SELECT orgId, orgName, propertyX, propertyY, inheritedOrgIdX, inheritedOrgIdY
FROM OrgHierarchy;
