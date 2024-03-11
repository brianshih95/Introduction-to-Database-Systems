with a(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Asia' and "Date" = '20200601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),

b(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Asia' and "Date" = '20210601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
e(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Asia' and "Date" = '20220601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
f(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Europe' and "Date" = '20200601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
g(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Europe' and "Date" = '20210601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
h(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Europe' and "Date" = '20220601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
j(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Antarctica' and "Date" = '20200601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
k(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Antarctica' and "Date" = '20210601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
l(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Antarctica' and "Date" = '20220601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
m(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Africa' and "Date" = '20200601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
n(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Africa' and "Date" = '20210601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
o(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Africa' and "Date" = '20220601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
p(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Oceania' and "Date" = '20200601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
q(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Oceania' and "Date" = '20210601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
r(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'Oceania' and "Date" = '20220601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
t(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'North America' and "Date" = '20200601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
u(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'North America' and "Date" = '20210601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
v(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'North America' and "Date" = '20220601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
w(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'South America' and "Date" = '20200601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
x(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'South America' and "Date" = '20210601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
),
y(str) as(
select max(StringencyIndex_Average_ForDisplay)
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i
where Continent_name = 'South America' and "Date" = '20220601'
and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id
)

select country_name, continent_name, "Date"
from stringency s, continent c, "data" d, country ct, country_continent cc, "index" i, a, b, e, f, g, h, j, k, l, m, n, o, p, q, r, t, u, v, w, x, y
where Continent_name = 'Asia' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and a.str = s.StringencyIndex_Average or 
Continent_name = 'Asia' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and b.str = s.StringencyIndex_Average or 
Continent_name = 'Asia' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and e.str = s.StringencyIndex_Average or 
Continent_name = 'Europe' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and f.str = s.StringencyIndex_Average or 
Continent_name = 'Europe' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and g.str = s.StringencyIndex_Average or 
Continent_name = 'Europe' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and h.str = s.StringencyIndex_Average or 
Continent_name = 'Antarctica' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and j.str = s.StringencyIndex_Average or 
Continent_name = 'Antarctica' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and k.str = s.StringencyIndex_Average or 
Continent_name = 'Antarctica' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and l.str = s.StringencyIndex_Average or 
Continent_name = 'Africa' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and m.str = s.StringencyIndex_Average or 
Continent_name = 'Africa' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and n.str = s.StringencyIndex_Average or 
Continent_name = 'Africa' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and o.str = s.StringencyIndex_Average or 
Continent_name = 'Oceania' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and p.str = s.StringencyIndex_Average or 
Continent_name = 'Oceania' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and q.str = s.StringencyIndex_Average or 
Continent_name = 'Oceania' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and r.str = s.StringencyIndex_Average or 
Continent_name = 'North America' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and t.str = s.StringencyIndex_Average or 
Continent_name = 'North America' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and u.str = s.StringencyIndex_Average or 
Continent_name = 'North America' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and v.str = s.StringencyIndex_Average or 
Continent_name = 'South America' and "Date" = '20200601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and w.str = s.StringencyIndex_Average or 
Continent_name = 'South America' and "Date" = '20210601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and x.str = s.StringencyIndex_Average or 
Continent_name = 'South America' and "Date" = '20220601' and s.StringencyIndex_Average = i.StringencyIndex_Average and i.data_id = d.data_id and d.country_id = ct.country_id and ct.country_id = cc.country_id and cc.continent_id = c.continent_id and y.str = s.StringencyIndex_Average 