--interviewquery_firsttouchattribution.sql

WITH joined_sessions AS (
  SELECT
    us.user_id,
    us.created_at,
    a.channel,
    a.conversion
  FROM user_sessions us
  JOIN attribution a ON us.session_id = a.session_id
),
converted_users AS (
  SELECT DISTINCT user_id
  FROM joined_sessions
  WHERE conversion = true
),
first_touch AS (
  SELECT
    js.user_id,
    js.channel,
    js.created_at,
    ROW_NUMBER() OVER (PARTITION BY js.user_id ORDER BY js.created_at) AS rn
  FROM joined_sessions js
  JOIN converted_users cu ON js.user_id = cu.user_id
)
SELECT user_id, channel
FROM first_touch
WHERE rn = 1;


