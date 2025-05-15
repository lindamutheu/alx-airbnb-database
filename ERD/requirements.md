User Relationships
User ↔ Property

One-to-Many: A user (with role host) can own multiple properties.

Relationship: User.user_id → Property.host_id

User ↔ Booking

One-to-Many: A user (with role guest) can make multiple bookings.

Relationship: User.user_id → Booking.user_id

User ↔ Review

One-to-Many: A user (guest) can write multiple reviews.

Relationship: User.user_id → Review.user_id

User ↔ Message

One-to-Many (Self-referencing): A user can send and receive many messages.

Relationships:

User.user_id → Message.sender_id

User.user_id → Message.recipient_id

🏡 Property Relationships
Property ↔ Booking

One-to-Many: A property can have multiple bookings.

Relationship: Property.property_id → Booking.property_id

Property ↔ Review

One-to-Many: A property can have multiple reviews.

Relationship: Property.property_id → Review.property_id

📅 Booking Relationships
Booking ↔ User

Many-to-One: Each booking is made by one user.

Relationship: Booking.user_id → User.user_id

Booking ↔ Property

Many-to-One: Each booking is for one property.

Relationship: Booking.property_id → Property.property_id

Booking ↔ Payment

One-to-One (or One-to-Many if supporting split payments):

Relationship: Booking.booking_id → Payment.booking_id

💳 Payment Relationships
Payment ↔ Booking

Many-to-One: Each payment belongs to a booking.

Relationship: Payment.booking_id → Booking.booking_id

⭐ Review Relationships
Review ↔ Property

Many-to-One: A review is written for one property.

Relationship: Review.property_id → Property.property_id

Review ↔ User

Many-to-One: A review is written by one user.

Relationship: Review.user_id → User.user_id

💬 Message Relationships
Message ↔ User

Many-to-One: Each message has one sender and one recipient.

Relationships:

Message.sender_id → User.user_id

Message.recipient_id → User.user_id![Entity Relationship Diagram](Entity_diagram.drawio.png)

