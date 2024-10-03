select *
from mission m
    join store s on m.store_id = s.id
where s.region_id = region_id
order by created_at desc;
limit 3 offset 0;