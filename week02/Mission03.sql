SELECT *
FROM member as u join (SELECT * as missions
                       FROM member_mission as mm join mission as m on mm.mission_id = m.id) on missions.member_id = u.id
                 join (SELECT * as stores
                       From store as s join region as r on s.region_id = r.id) on stores.id = missions.store_id
WHERE u.id = member_id and missions.status = '진행중'
ORDER BY missions.created_at DESC
LIMIT 5;