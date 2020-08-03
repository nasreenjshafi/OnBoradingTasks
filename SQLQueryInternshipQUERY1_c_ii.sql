Display a list of all property names and their property id’s for Owner Id: 1426 and Display the yield for the same. 


USE Keys;
GO

SELECT pro.Name AS PropertyName, own.PropertyId AS PropertyId,  own.OwnerId As OwnerID, pf.Yield
FROM [dbo].[Property] pro
INNER JOIN [dbo].[OwnerProperty] own
ON pro.Id = own.PropertyId
INNER JOIN [dbo].[PropertyFinance] pf
ON pf.PropertyId = pro.Id
WHERE own.OwnerId = 1426;
GO
