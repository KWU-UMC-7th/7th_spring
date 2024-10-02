SELECT store.name, mission.mission_spec, mission.reward
FROM member as u left join member_mission as mm on u.id = member_id
                 left join mission as m on mm.mission_id = m.id 
WHERE mm.status = '진행 완료'
ORDER BY updated_at DESC 
LIMIT 5;