1. Display a list of all property names and their property id’s for Owner Id: 1426.
2. Display the current home value for the property in (1)


USE Keys;
GO

SELECT pro.Name AS PropertyName, own.PropertyId AS PropertyId,  own.OwnerId As OwnerID, phv.Value AS HomeValue
FROM [dbo].[Property] pro
INNER JOIN [dbo].[OwnerProperty] own
ON pro.Id = own.PropertyId
INNER JOIN [dbo].PropertyHomeValue phv
ON phv.PropertyId = own.PropertyId
WHERE own.OwnerId = 1426;
GO
