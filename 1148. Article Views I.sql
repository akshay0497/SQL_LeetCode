#Write your MySQL query statement below
SELECT DISTINCT author_id AS id
FROM views
WHERE author_id = viewer_id order by author_id asc;
