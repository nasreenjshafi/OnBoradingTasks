USE Keys;
GO

SELECT  pro.name AS 'PropertyName' , tp.PaymentAmount, tp.StartDate, tp.EndDate,
CASE
	WHEN tp.PaymentFrequencyId =1 THEN DATEDIFF(WW, '2018-01-01 00:00:00.000','2018-12-31 00:00:00.000')* sum(tp.PaymentAmount)
	WHEN tp.PaymentFrequencyId =2 THEN DATEDIFF(WW, '2018-01-01 00:00:00.000','2018-12-31 00:00:00.000')/2 * sum(tp.PaymentAmount)
	WHEN tp.PaymentFrequencyId =3 THEN DATEDIFF(MM, '2018-01-01 00:00:00.000','2018-12-31 00:00:00.000')* sum(tp.PaymentAmount)
END 'Sum of All Payments',
CASE
 WHEN tp.PaymentFrequencyId = 1 THEN 'Weekly'
 WHEN tp.PaymentFrequencyId = 2 THEN 'Fortnightly'
 WHEN tp.PaymentFrequencyId = 3 THEN 'Monthly'
 END 'Rental Payments'
FROM [dbo].[TenantProperty] tp
INNER JOIN [dbo].[Property] pro
ON tp.PropertyId = pro.Id
INNER JOIN [dbo].[OwnerProperty] own
ON pro.Id = own.PropertyId
WHERE own.OwnerId = 1426
GROUP BY pro.Name,tp.PaymentAmount,tp.StartDate,tp.EndDate,tp.PaymentFrequencyId;
GO
