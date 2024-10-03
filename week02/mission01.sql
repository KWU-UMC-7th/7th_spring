select s.name, m.reward
from mission as m
         join member_mission as mm on m.mission_id = mm.mission_id
         join store as s
where mm.status = '진행완료'
order by mm.updated_at desc;
limit 3 offset 0;