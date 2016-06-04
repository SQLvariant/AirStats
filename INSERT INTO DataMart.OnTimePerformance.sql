USE AirStats
GO

INSERT INTO DataMart.OnTimePerformance
           (FlightDate
           ,Carrier
           ,TailNumber
           ,FlightNumber
           ,Origin
           ,Destination
           ,CRSDepTime
           ,DepartureTime
           ,DepDelay
           ,DepDelayGroup
           ,DepTimeBlock
           ,TaxiOutTime
           ,CRSArrivalTime
           ,ArrivalTime
           ,ArrivalDelay
           ,ArrivalDelayGroup
           ,ArivalTimeBlock
           ,Cancelled
           ,CancellationCode
           ,Diverted
           ,ActualElapsedTime
           ,AirTime
           ,Flights
           ,Distance
           ,DistanceGroup
           ,CarrierDelay
           ,WeatherDelay
           ,NASDelay
           ,SecurityDelay
           ,LateAircraftDelay
           ,DepDel15
           ,ArrDel15)


SELECT CONVERT(DATE, FlightDate) AS 'FlightDate'
      ,UniqueCarrier AS 'Carrier'
      ,TailNum
      ,FlightNum
      ,Origin
      ,Dest
      ,CRSDepTime
      ,DepTime
      ,CASE WHEN NULLIF(DepDelay, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(DepDelay, 1, PATINDEX('%.%', DepDelay)-1)) ELSE NULL END AS 'DepDelay'
      ,DepartureDelayGroups
      ,DepTimeBlk
      ,CASE WHEN NULLIF(TaxiOut, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(TaxiOut, 1, PATINDEX('%.%', TaxiOut)-1)) ELSE NULL END AS 'TaxiOut'
      ,CRSArrTime
      ,ArrTime
      ,CASE WHEN NULLIF(ArrDelay, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(ArrDelay, 1, PATINDEX('%.%', ArrDelay)-1)) ELSE NULL END AS 'ArrDelay'
      ,ArrivalDelayGroups
      ,ArrTimeBlk
      ,CASE WHEN NULLIF(Cancelled, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(Cancelled, 1, PATINDEX('%.%', Cancelled)-1)) ELSE NULL END AS 'Cancelled'
      ,CancellationCode
      ,CASE WHEN NULLIF(Diverted, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(Diverted, 1, PATINDEX('%.%', Diverted)-1))			ELSE NULL END AS 'Diverted'
      ,CASE WHEN NULLIF(ActualElapsedTime, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(ActualElapsedTime, 1, PATINDEX('%.%', ActualElapsedTime)-1))	ELSE NULL END AS 'ActualElapsedTime'
      ,CASE WHEN NULLIF(AirTime, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(AirTime, 1, PATINDEX('%.%', AirTime)-1))				ELSE NULL END AS 'AirTime'
      ,CASE WHEN NULLIF(Flights, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(Flights, 1, PATINDEX('%.%', Flights)-1))				ELSE NULL END AS 'Flights'
      ,CASE WHEN NULLIF(Distance, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(Distance, 1, PATINDEX('%.%', Distance)-1))			ELSE NULL END AS 'Distance'
      ,DistanceGroup
      ,CASE WHEN NULLIF(CarrierDelay, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(CarrierDelay, 1, PATINDEX('%.%', CarrierDelay)-1))			ELSE NULL END AS 'CarrierDelay'
      ,CASE WHEN NULLIF(WeatherDelay, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(WeatherDelay, 1, PATINDEX('%.%', WeatherDelay)-1))			ELSE NULL END AS 'WeatherDelay'
      ,CASE WHEN NULLIF(NASDelay, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(NASDelay, 1, PATINDEX('%.%', NASDelay)-1))					ELSE NULL END AS 'NASDelay'
      ,CASE WHEN NULLIF(SecurityDelay, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(SecurityDelay, 1, PATINDEX('%.%', SecurityDelay)-1))			ELSE NULL END AS 'SecurityDelay'
      ,CASE WHEN NULLIF(LateAircraftDelay, '') IS NOT NULL THEN CONVERT(SMALLINT,SUBSTRING(LateAircraftDelay, 1, PATINDEX('%.%', LateAircraftDelay)-1))	ELSE NULL END AS 'LateAircraftDelay'
      ,CASE WHEN NULLIF(DepDel15, '') IS NOT NULL THEN CONVERT(TINYINT,SUBSTRING(DepDel15, 1, PATINDEX('%.%', DepDel15)-1))						ELSE NULL END AS 'DepDel15'
      ,CASE WHEN NULLIF(ArrDel15, '') IS NOT NULL THEN CONVERT(TINYINT,SUBSTRING(ArrDel15, 1, PATINDEX('%.%', ArrDel15)-1))						ELSE NULL END AS 'ArrDel15'
      --,[AirlineID]
      --,[Carrier]
      --,[OriginAirportID]
      --,[OriginAirportSeqID]
      --,[OriginCityMarketID]
      --,[OriginCityName]
      --,[OriginState]
      --,[OriginStateFips]
      --,[OriginStateName]
      --,[OriginWac]
      --,[DestAirportID]
      --,[DestAirportSeqID]
      --,[DestCityMarketID]
      --,[DestCityName]
      --,[DestState]
      --,[DestStateFips]
      --,[DestStateName]
      --,[DestWac]
      --,[DepDelayMinutes]
      --,[WheelsOff]
      --,[WheelsOn]
      --,[TaxiIn]
      --,[ArrDelayMinutes]
      --,[CRSElapsedTime]
      --,[FirstDepTime]
      --,[TotalAddGTime]
      --,[LongestAddGTime]
      --,[DivAirportLandings]
      --,[DivReachedDest]
      --,[DivActualElapsedTime]
      --,[DivArrDelay]
      --,[DivDistance]
      --,[Div1Airport]
      --,[Div1AirportID]
      --,[Div1AirportSeqID]
      --,[Div1WheelsOn]
      --,[Div1TotalGTime]
      --,[Div1LongestGTime]
      --,[Div1WheelsOff]
      --,[Div1TailNum]
      --,[Div2Airport]
      --,[Div2AirportID]
      --,[Div2AirportSeqID]
      --,[Div2WheelsOn]
      --,[Div2TotalGTime]
      --,[Div2LongestGTime]
      --,[Div2WheelsOff]
      --,[Div2TailNum]
      --,[Div3Airport]
      --,[Div3AirportID]
      --,[Div3AirportSeqID]
      --,[Div3WheelsOn]
      --,[Div3TotalGTime]
      --,[Div3LongestGTime]
      --,[Div3WheelsOff]
      --,[Div3TailNum]
      --,[Div4Airport]
      --,[Div4AirportID]
      --,[Div4AirportSeqID]
      --,[Div4WheelsOn]
      --,[Div4TotalGTime]
      --,[Div4LongestGTime]
      --,[Div4WheelsOff]
      --,[Div4TailNum]
      --,[Div5Airport]
      --,[Div5AirportID]
      --,[Div5AirportSeqID]
      --,[Div5WheelsOn]
      --,[Div5TotalGTime]
      --,[Div5LongestGTime]
      --,[Div5WheelsOff]
      --,[Div5TailNum]
      --,[Column 109]
  FROM AirStats.dbo.On_Time_Performance_CCI
 WHERE YEAR = 2013




