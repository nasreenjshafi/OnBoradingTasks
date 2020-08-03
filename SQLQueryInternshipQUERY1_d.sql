USE Keys;
GO

SELECT j.JobDescription, js.Status
FROM [dbo].[Job] j
INNER JOIN [dbo].[JobStatus] js
ON  js.Id = j.JobStatusId
WHERE j.JobStatusId = 1;
GO