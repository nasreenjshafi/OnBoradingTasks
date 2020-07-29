USE Keys;
GO

SELECT pro.Name AS PropertyName, own.PropertyId AS PropertyId,  own.OwnerId As OwnerID
FROM [dbo].[Property] pro
INNER JOIN [dbo].[OwnerProperty] own
ON pro.Id = own.PropertyId
WHERE own.OwnerId = 1426;
GO