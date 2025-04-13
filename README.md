# Hotel-chain-database-sql
A hotel management system includes various operations such as room reservations, finance, human resources and etc. In this system, we have a number of hotel branches, each of which has employees and rooms. Each room also has different types, based on which they can have different prices.
Each branch has a number of employees. Each employee can have different roles. Also, each employee has a supervisor and each branch has a manager.
Each customer can reserve a number of rooms. The customer can pay the bill in different ways. The customer can reduce the amount of his bill by using a discount code.

# Tables and Attributes:
**Payment**
1. Payment_id: A unique identifier for the payment record.
2. Payment_type_id: A unique identifier for the payment type.
3. Payment_amount: The amount of the payment made.
4. Reservation_id: A unique identifier for the reservation associated with the payment.
**Payment_type**
1. Payment_type_id: A unique identifier for the payment type.
2. Payment_type: The name of the payment type.
3. Payment_type_desc: A description of the payment type.

**Customer**
1. Customer_id: A unique identifier for the customer.
2. Name: The name of the customer.
3. Address: The address of the customer.
4. Phone: The phone number of the customer.
5. Email: The email address of the customer.
6. Last_visited: The date when the customer last visited.

**Reservation**
1. Reservation_id: A unique identifier for the reservation.
2. Customer_id: The identifier for the customer who made the reservation.
3. Expected_checkin_date: The date when the customer is expected to check in.
4. Expected_checkout_date: The date when the customer is expected to check out.
5. Anticipated_arrival_time: The anticipated arrival time of the customer.
6. Num_guests: The number of guests is specified in the room.
7. Room_id: The room information is specified in the room.
8. Smoking: Smoking is allowed in the room.
9. Checkindate: The check-in date is specified.

**Bill:** The bill information is specified in the reservation table.
1. Bill_id: The bill information is specified.
2. Reservation_id: The reservation information is specified.

**Bill item:** The item information is specified in the reservation.
1. Bill_item_id: The bill item information is specified.
2. Room_id: The room information is specified.
3. Bill_item_type_id: The bill item type information is specified.
4. Bill_item_amount: The amount of the bill item is specified.
5. Description: The description of the bill item is specified.
6. Discount_id: The discount information is specified.
7. Bill_id: The bill information is specified.

**Bill item type:** The type of the bill item is specified.
1. Bill_item_type_id: The bill item type information is specified.
2. Description: The description of the bill item type is specified.

**Discount**: The discount information is specified.

1. Discount_id: The discount information is specified.
2. Discount_name: The name of the discount is specified.
3. Discount_percent: The percentage of the discount is specified.
4. Discount_exp: The expiration date of the discount is specified.
5. Discount_amount: The amount of the discount is specified.
6. Description: The description of the discount is specified.

**Checkout**: The checkout information is specified.

1. Checkout_id: The checkout information is specified.
2. Reservation_id: The reservation information is specified.
3. Checkout_date: The checkout date is specified.

**Room**: The room information is specified.
1. Room_id: The room information is specified.
2. Room_number: The room number is specified.
3. Room_type_id: The room type information is specified.
4. Room_available: The room availability is specified.
5. Description: The description of the room is specified.
6. Smoking: Smoking is allowed in the room.

**Room_type**: The types of rooms that we can define are stored in this table. 
1. Room_type_id: Room type ID:
2. Room_type: Room type name.
3. Description: Description related to the room type.
4. Room_rate: Room type rating. 
5. Num_beds: Number of beds related to the room type. 

**Hotel**: Information related to branches is stored in this table.
1. Hotel_id: Hotel branch ID 
2. Hotel_name: Branch name
3. Hotel_type_id: hotel_type Branch type ID related to the table 
4. Location: hotel branch address 
5. Manager_id: employee branch manager ID related to the table

**Hotel Type**: Types of hotels are stored in this table.
1. Hotel_type_id: hotel type ID 
2. Hotel_type: hotel type name 
3. Stars: sar rating for the hotel type 

**Employee**: Information related to employees of all branches is stored in this table.
1. Employee_id: employee ID 
2. Employee_name: employee name 
3. PhoneEmployee: phone number 
4. EmailEmployee email address: 
5. Supervisor_id Employee supervisor ID(This column can be empty for an employee) 
6. Role_id: role Employee role ID for the table 
7. Permission_id: permission ID for the table permission

**Role**: Employee role types are stored in this table.
1. Role_id: role ID 
2. Role_name: role name
3. Role_desc: role description

**Permission**: Employee permission types
1. Permission_id: permission ID access level 
2. Name: permission name
