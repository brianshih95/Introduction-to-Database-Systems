"SELECT longitude, latitude 
FROM data1
WHERE longitude > ", minx - 0.01, " and 
longitude < ", maxx + 0.01, " and 
latitude > ", miny - 0.01, " and 
latitude < ",maxy + 0.01

"SELECT longitude, latitude 
 FROM other, accident
 WHERE longitude > ", minx - 0.01, " and 
 longitude < ", maxx + 0.01, " and 
 latitude > ", miny - 0.01, " and 
 latitude < ",maxy + 0.01 and
 "\"accident type (all)\" = \"人與汽(機)車\" and
 other.\"date\" = accident.\"date\" and
 other.\"location\" = accident.\"location\""
 
"SELECT longitude, latitude 
 FROM other, parties_involved
 WHERE longitude > ", minx - 0.01, " and 
 longitude < ", maxx + 0.01, " and 
 latitude > ", miny - 0.01, " and 
 latitude < ",maxy + 0.01 and
 "\"cause judgement\" = \"右轉彎未依規定\" and
 other.\"date\" = parties_involved.\"date\"" and
 other.\"location\" = parties_involved.\"location\""