Display a list of all property names and their property id’s for Owner Id: 1426 and Display all property names, current tenants first and last names and 
rental payments per week/ fortnight/month for the same.


USE Keys;
GO

SELECT pro.Name AS PropertyNames, pr.FirstName AS [Tenant's FirstName], pr.LastName AS [Tenant's LastName], 
CASE
 WHEN tp.PaymentFrequencyId = 1 THEN 'Weekly'
 WHEN tp.PaymentFrequencyId = 2 THEN 'Fortnightly'
 WHEN tp.PaymentFrequencyId = 3 THEN 'Monthly'
 END 'Rental Payments'
FROM [dbo].[Property] pro
INNER JOIN [dbo].[OwnerProperty] own
ON pro.Id = own.PropertyId
INNER JOIN [dbo].[Person] pr
ON pr.Id = own.Id
INNER JOIN [dbo].[TenantProperty] tp
ON own.PropertyId = tp.PropertyId
WHERE own.OwnerId = 1426;
GO
