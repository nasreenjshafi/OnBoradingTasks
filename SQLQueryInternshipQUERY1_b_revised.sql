USE Keys;
GO

SELECT pro.Name AS PropertyName, own.PropertyId AS PropertyId,  own.OwnerId As OwnerID, phv.Value AS HomeValue
FROM [dbo].[Property] pro
INNER JOIN [dbo].[OwnerProperty] own
ON pro.Id = own.PropertyId
INNER JOIN [dbo].PropertyHomeValue phv
ON phv.PropertyId = own.PropertyId
WHERE own.OwnerId = 1426 AND phv.IsActive = 1;
GO