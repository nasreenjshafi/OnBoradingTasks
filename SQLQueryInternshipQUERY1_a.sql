Display a list of all property names and their property id’s for Owner Id: 1426.


USE Keys;
GO

SELECT pro.Name AS PropertyName, own.PropertyId AS PropertyId,  own.OwnerId As OwnerID
FROM [dbo].[Property] pro
INNER JOIN [dbo].[OwnerProperty] own
ON pro.Id = own.PropertyId
WHERE own.OwnerId = 1426;
GO
