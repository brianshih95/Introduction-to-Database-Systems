with difference(data_id, diff) as(
select d1.data_id, p1.confirmedCases - p2.confirmedCases
from "data" d1, "data" d2, people p1, people p2
where (d1."Date" = '20200601' and d2."Date" = '20200525' or d1."Date" = '20210601' and d2."Date" = '20210525' or d1."Date" = '20220601' and d2."Date" = '20220525') 
and d1.data_id = d2.data_id + 7 and p1.data_id = d1.data_id and p2.data_id = d2.data_id
),
processed(data_id, diff) as(
select data_id, (case
				 when diff <> 0 then diff
				 else 0.5
				 end
				)
from difference
),
a(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20200601' and c.Continent_name = 'Asia' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
b(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20210601' and c.Continent_name = 'Asia' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
e(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20220601' and c.Continent_name = 'Asia' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
f(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20200601' and c.Continent_name = 'Europe' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
g(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20210601' and c.Continent_name = 'Europe' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
h(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20220601' and c.Continent_name = 'Europe' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
j(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20200601' and c.Continent_name = 'Antarctica' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
k(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20210601' and c.Continent_name = 'Antarctica' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
l(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20220601' and c.Continent_name = 'Antarctica' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
m(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20200601' and c.Continent_name = 'Africa' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
n(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20210601' and c.Continent_name = 'Africa' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
o(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20220601' and c.Continent_name = 'Africa' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
p(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20200601' and c.Continent_name = 'Oceania' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
q(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20210601' and c.Continent_name = 'Oceania' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
r(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20220601' and c.Continent_name = 'Oceania' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
t(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20200601' and c.Continent_name = 'North America' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
u(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20210601' and c.Continent_name = 'North America' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
v(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20220601' and c.Continent_name = 'North America' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
w(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20200601' and c.Continent_name = 'South America' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
x(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20210601' and c.Continent_name = 'South America' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
y(overstr) as(
select max(StringencyIndex_Average_ForDisplay * 7 / diff)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed
where "Date" = '20220601' and c.Continent_name = 'South America' and processed.data_id = d.data_id and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
)
select country_name, continent_name, StringencyIndex_Average_ForDisplay * 7 / diff as over_Stringency_index, "Date"
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, processed, a, b, e, f, g, h, j, k, l, m, n, o, p, q, r, t, u, v, w, x, y
where Continent_name = 'Asia' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = a.overstr or 
Continent_name = 'Asia' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = b.overstr or 
Continent_name = 'Asia' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = e.overstr or 
Continent_name = 'Europe' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = f.overstr or 
Continent_name = 'Europe' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = g.overstr or 
Continent_name = 'Europe' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = h.overstr or 
Continent_name = 'Antarctica' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = j.overstr or 
Continent_name = 'Antarctica' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = k.overstr or 
Continent_name = 'Antarctica' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff =l.overstr or 
Continent_name = 'Africa' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = m.overstr or 
Continent_name = 'Africa' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = n.overstr or 
Continent_name = 'Africa' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = o.overstr or 
Continent_name = 'Oceania' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = p.overstr or 
Continent_name = 'Oceania' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = q.overstr or 
Continent_name = 'Oceania' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = r.overstr or 
Continent_name = 'North America' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = t.overstr or 
Continent_name = 'North America' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = u.overstr or 
Continent_name = 'North America' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = v.overstr or 
Continent_name = 'South America' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = w.overstr or 
Continent_name = 'South America' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = x.overstr or 
Continent_name = 'South America' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and processed.data_id = d.data_id and StringencyIndex_Average_ForDisplay * 7 / diff = y.overstr 