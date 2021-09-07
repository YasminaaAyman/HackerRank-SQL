SELECT round(long_w,4) FROM STATION 
WHERE lat_n = (SELECT min(lat_n) FROM STATION WHERE lat_n > 38.7780);