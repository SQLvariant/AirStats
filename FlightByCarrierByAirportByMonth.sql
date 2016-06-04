SELECT COUNT(*) AS 'Number of Flights', DATEPART(YEAR, [FlightDate]) AS 'Year', DATEPART(MONTH, [FlightDate]) AS 'Month', [Carrier], [Origin]--, [Destination]
  FROM On_Time_Performance_CCI
 WHERE DATEPART(YEAR, [FlightDate]) = 2016
 GROUP BY DATEPART(YEAR, [FlightDate]), DATEPART(MONTH, [FlightDate]), [Carrier], [Origin]--, [Destination]
 ORDER BY DATEPART(YEAR, [FlightDate]) DESC, DATEPART(MONTH, [FlightDate]), [Number of Flights] DESC
