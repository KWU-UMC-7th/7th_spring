### 1번
```mysql
SELECT m.name, m.target_amount, m.reward_point, um.status
FROM mission m
JOIN user_mission um ON m.mission_id = um.mission_id AND um.user_id = :user_id
ORDER BY um.completed_at DESC, um.user_mission_id DESC
LIMIT :limit OFFSET :offset;
```

### 2번
```mysql
INSERT INTO review (review_id, user_id, store_id, rating, content, created_at, updated_at)
VALUES (리뷰 아이디 작성하는 곳, 유저 아이디 작성하는 곳, 가게 아이디 작성하는 곳, 별점 작성하는 곳, 리뷰 내용 작성하는 곳, NOW(), NOW());
```

### 3번
```mysql
SELECT m.name, m.target_amount, m.reward_point, s.type_id
FROM mission m
JOIN store_type s ON m.store_id = s.store_id
JOIN store st ON m.store_id = st.store_id
LEFT JOIN user_mission um ON m.mission_id = um.mission_id AND um.user_id = :user_id AND um.status != '진행완료'
WHERE st.address LIKE :address
ORDER BY m.created_at DESC
LIMIT :limit OFFSET :offset;
```

### 4번
```mysql
SELECT name, email, phone_num
FROM user
WHERE user_id = :user_id;
```