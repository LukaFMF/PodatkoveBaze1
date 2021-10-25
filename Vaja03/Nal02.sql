-- Za vsak ID osebe vrnite število različnih filmov, pri katerih je sodelovala ta oseba (bodisi kot igralec ali režiser). Ne izpisujte imen oseb.
SELECT oseba,COUNT(DISTINCT film)
FROM vloga
GROUP BY oseba;