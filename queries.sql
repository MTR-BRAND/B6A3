-- quruy 1

select bookings_table.booking_id ,
  usre_table.name as customer_name, 
  vehicles_table.name as vehicle_name,
  bookings_table.start_date ,
  bookings_table.end_date , 
  bookings_table.status
  from bookings_table
 inner join usre_table 
  on bookings_table.user_id = usre_table.user_id 
 inner join vehicles_table 
  on bookings_table.vehicle_id = vehicles_table.vehicle_id;




-- quruy 2

SELECT *
FROM vehicles_table as v
WHERE NOT EXISTS (
SELECT *
FROM bookings_table as b
WHERE b.vehicle_id = v.vehicle_id) 
order by v.vehicle_id asc;


-- quruy 3

select * from
vehicles_table 
where 
vehicles_table.type = 'car' 
and
vehicles_table.status = 'available'



-- quruy 4

SELECT 
v.name as vehicle_name,
COUNT(b.booking_id) AS total_bookings
FROM vehicles_table v
JOIN bookings_table b 
ON v.vehicle_id = b.vehicle_id
GROUP BY v.name
HAVING COUNT(b.booking_id) > 2;





