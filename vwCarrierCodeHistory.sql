USE [AirStats]
GO

CREATE VIEW vwCarrierCodeHistory
AS

SELECT [Code]
      ,SUBSTRING([Description], 1, PATINDEX('%(_____-%',[Description])-2 ) 'CarrierName'
      ,[Description]
      ,SUBSTRING([Description], PATINDEX('%(_____-%',[Description]), 20 ) 'Range'
      ,SUBSTRING([Description], PATINDEX('%(_____-%',[Description])+1, 4 ) 'Starting'
      ,NULLIF(REPLACE(SUBSTRING([Description], PATINDEX('%(_____-%',[Description])+7, 7 ), ')', ''), '') 'Ending'
	  --INTO [DataMart].CarrierCodeHistory
  FROM [AirStats].[dbo].[L_CARRIER_HISTORY$]
 WHERE description like '%(_____-%)'
GO
