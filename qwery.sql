SELECT c.name,
       COUNT(o.id) FILTER (WHERE o.price < 1000) AS count1, COUNT(o.id) FILTER (WHERE o.price >= 1000) AS count2
FROM clients c
         LEFT JOIN
     orders o ON c.id = o.client_id
GROUP BY c.id, c.name;