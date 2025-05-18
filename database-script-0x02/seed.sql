INSERT INTO user (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
-- Host user
('b8f2d6d5-1e25-44d0-a881-5b20e05c6121', 'Alice', 'Ngugi', 'alice.host@example.com', 'hashed_pw1', '+254712345678', 'host', CURRENT_TIMESTAMP),

-- Guest user
('c3eeb74b-7dc9-47b8-b8c6-fcc4fa8933cd', 'Brian', 'Otieno', 'brian.guest@example.com', 'hashed_pw2', '+254700987654', 'guest', CURRENT_TIMESTAMP),

-- Admin user
('d1a5cfe1-9e55-4c2f-92f3-74bd87ed014e', 'Carol', 'Kariuki', 'carol.admin@example.com', 'hashed_pw3', NULL, 'admin', CURRENT_TIMESTAMP),

-- Another host
('e34b7112-91e4-4adf-b812-0bb4ef762223', 'David', 'Mwangi', 'david.host@example.com', 'hashed_pw4', '+254713333333', 'host', CURRENT_TIMESTAMP),

-- Another guest
('f92374d1-d0f1-4e6a-9b4f-f9e2f6f6de22', 'Emily', 'Mutiso', 'emily.guest@example.com', 'hashed_pw5', NULL, 'guest', CURRENT_TIMESTAMP);




INSERT INTO property (property_id, host_id, name, description, location, price_pernight, created_at, updated_at)
VALUES
-- Property by host Alice
('a1f5b123-3c7d-49f6-a879-51d315e7c111', 'b8f2d6d5-1e25-44d0-a881-5b20e05c6121',
 'Cozy Studio in Westlands',
 'A modern, fully-furnished studio apartment with Wi-Fi and a balcony view, perfect for short stays.',
 'Nairobi, Kenya',
 45.00,
 CURRENT_TIMESTAMP,
 CURRENT_TIMESTAMP),

-- Property by host Alice
('b2e6f234-4d9e-42aa-bb4d-3b3b522ae222', 'b8f2d6d5-1e25-44d0-a881-5b20e05c6121',
 'Luxury Apartment with Rooftop Pool',
 'Enjoy upscale living in this 2-bedroom apartment featuring a rooftop pool, gym, and fast internet.',
 'Kilimani, Nairobi',
 95.00,
 CURRENT_TIMESTAMP,
 CURRENT_TIMESTAMP),

-- Property by host David
('c3d7f345-5eaf-4766-a91c-4c4c633be333', 'e34b7112-91e4-4adf-b812-0bb4ef762223',
 'Beachfront Villa in Diani',
 'Spacious 3-bedroom beachfront villa with private pool and sea view. Ideal for families or groups.',
 'Diani Beach, Kenya',
 180.00,
 CURRENT_TIMESTAMP,
 CURRENT_TIMESTAMP),

-- Property by host David
('d4f8g456-6fcf-4ab2-bb78-5d5d744cf444', 'e34b7112-91e4-4adf-b812-0bb4ef762223',
 'Rustic Cottage Near Mt. Kenya',
 'Charming wooden cottage nestled in nature. Great for hikers, with easy access to Mt. Kenya trails.',
 'Nanyuki, Kenya',
 60.00,
 CURRENT_TIMESTAMP,
 CURRENT_TIMESTAMP);



INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
-- Booking by guest Brian for Alice's Cozy Studio
('bkg-1001-aaaa-bbbb-cccc-000000000001', 'a1f5b123-3c7d-49f6-a879-51d315e7c111', 'c3eeb74b-7dc9-47b8-b8c6-fcc4fa8933cd',
 '2025-06-10', '2025-06-12',
 90.00,
 'confirmed',
 CURRENT_TIMESTAMP),

-- Booking by guest Emily for David's Beachfront Villa
('bkg-1002-aaaa-bbbb-cccc-000000000002', 'c3d7f345-5eaf-4766-a91c-4c4c633be333', 'f92374d1-d0f1-4e6a-9b4f-f9e2f6f6de22',
 '2025-07-01', '2025-07-05',
 720.00,
 'pending'
 CURRENT_TIMESTAMP),

-- Booking by guest Emily for Alice’s Rooftop Apartment
('bkg-1003-aaaa-bbbb-cccc-000000000003', 'b2e6f234-4d9e-42aa-bb4d-3b3b522ae222', 'f92374d1-d0f1-4e6a-9b4f-f9e2f6f6de22',
 '2025-06-15', '2025-06-18',
 285.00,
 'confirmed',
 CURRENT_TIMESTAMP),

-- Booking by guest Brian for David's Cottage in Nanyuki
('bkg-1004-aaaa-bbbb-cccc-000000000004', 'd4f8g456-6fcf-4ab2-bb78-5d5d744cf444', 'c3eeb74b-7dc9-47b8-b8c6-fcc4fa8933cd',
 '2025-06-20', '2025-06-22',
 120.00,
 'canceled',
 CURRENT_TIMESTAMP);



INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
-- Payment for confirmed booking by Brian (Cozy Studio)
('pay-2001-aaaa-bbbb-cccc-000000000001', 'bkg-1001-aaaa-bbbb-cccc-000000000001', 90.00, CURRENT_TIMESTAMP, 'credit_card'),

-- Payment for confirmed booking by Emily (Rooftop Apartment)
('pay-2002-aaaa-bbbb-cccc-000000000002', 'bkg-1003-aaaa-bbbb-cccc-000000000003', 285.00, CURRENT_TIMESTAMP, 'paypal'),

-- Partial payment for pending booking by Emily (Beachfront Villa)
('pay-2003-aaaa-bbbb-cccc-000000000003', 'bkg-1002-aaaa-bbbb-cccc-000000000002', 360.00, CURRENT_TIMESTAMP, 'stripe');





INSERT INTO review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
-- Brian's review for Cozy Studio
('rev-3001-aaaa-bbbb-cccc-000000000001', 'a1f5b123-3c7d-49f6-a879-51d315e7c111', 'c3eeb74b-7dc9-47b8-b8c6-fcc4fa8933cd',
 4,
 'The studio was clean and well-furnished. Great value for money and convenient location.',
 CURRENT_TIMESTAMP),

-- Emily's review for Rooftop Apartment
('rev-3002-aaaa-bbbb-cccc-000000000002', 'b2e6f234-4d9e-42aa-bb4d-3b3b522ae222', 'f92374d1-d0f1-4e6a-9b4f-f9e2f6f6de22',
 5,
 'Absolutely loved it! Beautiful view, strong Wi-Fi, and super responsive host.',
 CURRENT_TIMESTAMP),

-- Emily's review for Beachfront Villa
('rev-3003-aaaa-bbbb-cccc-000000000003', 'c3d7f345-5eaf-4766-a91c-4c4c633be333', 'f92374d1-d0f1-4e6a-9b4f-f9e2f6f6de22',
 4,
 'Amazing location right on the beach. The villa was spacious and private.',
 CURRENT_TIMESTAMP),

-- Brian's review for Rustic Cottage
('rev-3004-aaaa-bbbb-cccc-000000000004', 'd4f8g456-6fcf-4ab2-bb78-5d5d744cf444', 'c3eeb74b-7dc9-47b8-b8c6-fcc4fa8933cd',
 3,
 'Quiet and peaceful, but it was a bit hard to find at night. Still a nice getaway.',
 CURRENT_TIMESTAMP);





INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
-- Brian sends message to Alice (host of Cozy Studio)
('msg-4001-aaaa-bbbb-cccc-000000000001', 'c3eeb74b-7dc9-47b8-b8c6-fcc4fa8933cd', 'b8f2d6d5-1e25-44d0-a881-5b20e05c6121',
 'Hi Alice, I had a great stay at your studio! Just wanted to thank you again.',
 CURRENT_TIMESTAMP),

-- Alice replies to Brian
('msg-4002-aaaa-bbbb-cccc-000000000002', 'b8f2d6d5-1e25-44d0-a881-5b20e05c6121', 'c3eeb74b-7dc9-47b8-b8c6-fcc4fa8933cd',
 'Hi Brian, you’re very welcome! Glad to hear you enjoyed it 😊',
 CURRENT_TIMESTAMP),

-- Emily asks Carol (host of Beachfront Villa) about early check-in
('msg-4003-aaaa-bbbb-cccc-000000000003', 'f92374d1-d0f1-4e6a-9b4f-f9e2f6f6de22', 'd1a5cfe1-9e55-4c2f-92f3-74bd87ed014e',
 'Hi Carol, is it possible to check in a bit earlier on Friday?',
 CURRENT_TIMESTAMP),

-- Carol responds to Emily
('msg-4004-aaaa-bbbb-cccc-000000000004', 'd1a5cfe1-9e55-4c2f-92f3-74bd87ed014e', 'f92374d1-d0f1-4e6a-9b4f-f9e2f6f6de22',
 'Hi Emily, yes — early check-in is fine. I’ll have everything ready by noon.',
 CURRENT_TIMESTAMP);




























































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

