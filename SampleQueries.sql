-- 

SELECT reservation.reservation_id, customer.name, room.room_number
FROM ((reservation
INNER JOIN customer ON reservation.customer_id = customer.customer_id)
INNER JOIN room ON reservation.room_id = room.room_id);

-- 

SELECT DISTINCT customer.name
FROM (((reservation 
INNER JOIN customer ON reservation.customer_id = customer.customer_id)
INNER JOIN payment ON reservation.reservation_id  = payment.reservation_id)
INNER JOIN payment_type ON payment_type.payment_type_id = payment.payment_type_id)
WHERE payment_type.payment_type = 'credit card';

-- 

SELECT DISTINCT hotel.hotel_name
FROM (hotel INNER JOIN hotel_type ON hotel.hotel_type_id = hotel_type.hotel_type_id)
WHERE hotel.location = 'Texas' AND hotel_type.stars = 5;

--
SELECT DISTINCT customer.name FROM customer
INNER JOIN reservation
ON customer.customer_id = reservation.customer_id
WHERE reservation.smoking = 0;
--

select distinct expected_checkout_date,expected_checkin_date,num_guests,room_id,address,phone
from reservation,customer
where reservation.customer_id=customer.customer_id and customer.name='Tom m. Erichsen'