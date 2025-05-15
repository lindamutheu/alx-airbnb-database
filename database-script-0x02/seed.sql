INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('u1', 'Linda', 'Musyoki', 'musyoki@gmail.com', 'hashed_pw1', '0712345678', 'host'),
  ('u2', 'Mercy', 'Kamau', 'kamma@gmail.com', 'hashed_pw2', '0723456789', 'guest'),
  ('u3', 'Derick', 'Omondi', 'omondi@gmail.com', 'hashed_pw3', NULL, 'admin'),
  ('u4', 'Kennedy', 'kitrotich', 'kennedy@gmail.com', 'hashed_pw4', '0734567890', 'guest');


INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('p1', 'u1', 'Palace Karen', 'Quiet studio apartment in Nairobi Westlands', 'Nairobi', 45.00),
  ('p2', 'u1', 'Green Space', 'Spacious villa with pool in Karen', 'Nairobi', 150.00);


INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1', 'p1', 'u2', '2025-06-01', '2025-06-05', 180.00, 'confirmed'),
  ('b2', 'p2', 'u4', '2025-07-10', '2025-07-15', 750.00, 'pending');

INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1', 'b1', 180.00, 'credit_card'),
  ('pay2', 'b2', 750.00, 'paypal');


INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1', 'p1', 'u2', 5, 'Great stay! Clean and peaceful.'),
  ('r2', 'p2', 'u4', 4, 'Beautiful home, but pool was a bit cold.');


INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1', 'u2', 'u1', 'Hi Alice, can I check in early on June 1st?'),
  ('m2', 'u1', 'u2', 'Hi Bob, yes, early check-in is fine.');

