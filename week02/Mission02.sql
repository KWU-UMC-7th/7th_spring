SELECT m.name, r.score, r.body
FROM store as s join review as r on s.id = r.store_id
                join member as m on r.member_id = m.id
WHERE m.id = member_id
ORDER BY r.updated_at DESC