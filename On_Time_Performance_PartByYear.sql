USE [AirStats]
GO
/****** Object:  Table [dbo].[On_Time_Performance_PartByYear]    Script Date: 6/4/2016 4:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[On_Time_Performance_PartByYear](
	[Year] [varchar](50) NULL,
	[Quarter] [varchar](50) NULL,
	[Month] [varchar](50) NULL,
	[DayofMonth] [varchar](50) NULL,
	[DayOfWeek] [varchar](50) NULL,
	[FlightDate] [varchar](50) NOT NULL,
	[UniqueCarrier] [varchar](50) NULL,
	[AirlineID] [varchar](50) NULL,
	[Carrier] [varchar](50) NOT NULL,
	[TailNum] [varchar](50) NULL,
	[FlightNum] [varchar](50) NOT NULL,
	[OriginAirportID] [varchar](50) NULL,
	[OriginAirportSeqID] [varchar](50) NULL,
	[OriginCityMarketID] [varchar](50) NULL,
	[Origin] [varchar](50) NOT NULL,
	[OriginCityName] [varchar](50) NULL,
	[OriginState] [varchar](50) NULL,
	[OriginStateFips] [varchar](50) NULL,
	[OriginStateName] [varchar](50) NULL,
	[OriginWac] [varchar](50) NULL,
	[DestAirportID] [varchar](50) NULL,
	[DestAirportSeqID] [varchar](50) NULL,
	[DestCityMarketID] [varchar](50) NULL,
	[Dest] [varchar](50) NOT NULL,
	[DestCityName] [varchar](50) NULL,
	[DestState] [varchar](50) NULL,
	[DestStateFips] [varchar](50) NULL,
	[DestStateName] [varchar](50) NULL,
	[DestWac] [varchar](50) NULL,
	[CRSDepTime] [varchar](50) NULL,
	[DepTime] [varchar](50) NULL,
	[DepDelay] [varchar](50) NULL,
	[DepDelayMinutes] [varchar](50) NULL,
	[DepDel15] [varchar](50) NULL,
	[DepartureDelayGroups] [varchar](50) NULL,
	[DepTimeBlk] [varchar](50) NULL,
	[TaxiOut] [varchar](50) NULL,
	[WheelsOff] [varchar](50) NULL,
	[WheelsOn] [varchar](50) NULL,
	[TaxiIn] [varchar](50) NULL,
	[CRSArrTime] [varchar](50) NULL,
	[ArrTime] [varchar](50) NULL,
	[ArrDelay] [varchar](50) NULL,
	[ArrDelayMinutes] [varchar](50) NULL,
	[ArrDel15] [varchar](50) NULL,
	[ArrivalDelayGroups] [varchar](50) NULL,
	[ArrTimeBlk] [varchar](50) NULL,
	[Cancelled] [varchar](50) NULL,
	[CancellationCode] [varchar](50) NULL,
	[Diverted] [varchar](50) NULL,
	[CRSElapsedTime] [varchar](50) NULL,
	[ActualElapsedTime] [varchar](50) NULL,
	[AirTime] [varchar](50) NULL,
	[Flights] [varchar](50) NULL,
	[Distance] [varchar](50) NULL,
	[DistanceGroup] [varchar](50) NULL,
	[CarrierDelay] [varchar](50) NULL,
	[WeatherDelay] [varchar](50) NULL,
	[NASDelay] [varchar](50) NULL,
	[SecurityDelay] [varchar](50) NULL,
	[LateAircraftDelay] [varchar](50) NULL,
	[FirstDepTime] [varchar](50) NULL,
	[TotalAddGTime] [varchar](50) NULL,
	[LongestAddGTime] [varchar](50) NULL,
	[DivAirportLandings] [varchar](50) NULL,
	[DivReachedDest] [varchar](50) NULL,
	[DivActualElapsedTime] [varchar](50) NULL,
	[DivArrDelay] [varchar](50) NULL,
	[DivDistance] [varchar](50) NULL,
	[Div1Airport] [varchar](50) NULL,
	[Div1AirportID] [varchar](50) NULL,
	[Div1AirportSeqID] [varchar](50) NULL,
	[Div1WheelsOn] [varchar](50) NULL,
	[Div1TotalGTime] [varchar](50) NULL,
	[Div1LongestGTime] [varchar](50) NULL,
	[Div1WheelsOff] [varchar](50) NULL,
	[Div1TailNum] [varchar](50) NULL,
	[Div2Airport] [varchar](50) NULL,
	[Div2AirportID] [varchar](50) NULL,
	[Div2AirportSeqID] [varchar](50) NULL,
	[Div2WheelsOn] [varchar](50) NULL,
	[Div2TotalGTime] [varchar](50) NULL,
	[Div2LongestGTime] [varchar](50) NULL,
	[Div2WheelsOff] [varchar](50) NULL,
	[Div2TailNum] [varchar](50) NULL,
	[Div3Airport] [varchar](50) NULL,
	[Div3AirportID] [varchar](50) NULL,
	[Div3AirportSeqID] [varchar](50) NULL,
	[Div3WheelsOn] [varchar](50) NULL,
	[Div3TotalGTime] [varchar](50) NULL,
	[Div3LongestGTime] [varchar](50) NULL,
	[Div3WheelsOff] [varchar](50) NULL,
	[Div3TailNum] [varchar](50) NULL,
	[Div4Airport] [varchar](50) NULL,
	[Div4AirportID] [varchar](50) NULL,
	[Div4AirportSeqID] [varchar](50) NULL,
	[Div4WheelsOn] [varchar](50) NULL,
	[Div4TotalGTime] [varchar](50) NULL,
	[Div4LongestGTime] [varchar](50) NULL,
	[Div4WheelsOff] [varchar](50) NULL,
	[Div4TailNum] [varchar](50) NULL,
	[Div5Airport] [varchar](50) NULL,
	[Div5AirportID] [varchar](50) NULL,
	[Div5AirportSeqID] [varchar](50) NULL,
	[Div5WheelsOn] [varchar](50) NULL,
	[Div5TotalGTime] [varchar](50) NULL,
	[Div5LongestGTime] [varchar](50) NULL,
	[Div5WheelsOff] [varchar](50) NULL,
	[Div5TailNum] [varchar](50) NULL,
	[Column 109] [varchar](50) NULL
) ON [PartByYearScheme]([Year])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CCI_dbo_On_Time_Performance_PartByYear]    Script Date: 6/4/2016 4:15:01 PM ******/
CREATE CLUSTERED INDEX [CCI_dbo_On_Time_Performance_PartByYear] ON [dbo].[On_Time_Performance_PartByYear]
(
	[Year] ASC,
	[Month] ASC,
	[FlightDate] ASC,
	[FlightNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PartByYearScheme]([Year])
GO
