SELECT ABS(ROUND((min(lat_n) - max(lat_n)),4)) + ABS(ROUND((min(long_W) - max(long_w)),4)) FROM station;