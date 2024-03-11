SELECT SUM(covid.Confirmed) - SUM(covid2.Confirmed) as difference
FROM covid join covid2
USING (combined_key)
WHERE covid.Province_State = 'California' AND covid.Country_Region = 'US'
	AND covid2.Province_State = 'California' AND covid2.Country_Region = 'US'