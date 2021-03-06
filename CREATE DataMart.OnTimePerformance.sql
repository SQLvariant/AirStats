USE AirStats
GO
/****** Object:  Table [DataMart].[OnTimePerformance]    Script Date: 6/3/2016 5:16:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE DataMart.OnTimePerformance(
	FlightDate date NOT NULL,
	Carrier char(2) NOT NULL,
	TailNumber varchar(10) NULL,
	FlightNumber char(4) NOT NULL,
	Origin char(3) NOT NULL,
	Destination char(3) NOT NULL,
	CRSDepTime varchar(20) NULL,
	DepartureTime varchar(20) NULL,
	DepDelay smallint NULL,
	DepDelayGroup varchar(50) NULL,
	DepTimeBlock varchar(50) NULL,
	TaxiOutTime decimal(18, 0) NULL,
	CRSArrivalTime varchar(20) NULL,
	ArrivalTime varchar(20) NULL,
	ArrivalDelay decimal(18, 0) NULL,
	ArrivalDelayGroup varchar(50) NULL,
	ArivalTimeBlock varchar(50) NULL,
	Cancelled decimal(18, 0) NULL,
	CancellationCode varchar(50) NULL,
	Diverted decimal(18, 0) NULL,
	ActualElapsedTime decimal(18, 0) NULL,
	AirTime smallint NULL,
	Flights decimal(18, 0) NULL,
	Distance decimal(18, 0) NULL,
	DistanceGroup varchar(50) NULL,
	CarrierDelay decimal(18, 0) NULL,
	WeatherDelay decimal(7, 0) NULL,
	NASDelay decimal(7, 0) NULL,
	SecurityDelay decimal(18, 0) NULL,
	LateAircraftDelay decimal(18, 0) NULL,
	DepDel15 tinyint NULL,
	ArrDel15 tinyint NULL,
 CONSTRAINT PK_DM_OnTimePerformance PRIMARY KEY NONCLUSTERED 
(
	FlightDate ASC,
	Carrier ASC,
	FlightNumber ASC,
	Origin ASC,
	Destination ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON DATA01
) ON DATA01

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [CCI_DM_OnTimePerformance]    Script Date: 6/3/2016 5:16:53 PM ******/
CREATE CLUSTERED COLUMNSTORE INDEX CCI_DM_OnTimePerformance ON DataMart.OnTimePerformance WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0, DATA_COMPRESSION = COLUMNSTORE) ON [DATA01]
GO
