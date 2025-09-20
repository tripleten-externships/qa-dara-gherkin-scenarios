Feature: Buy Tickets page

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the <ticket> tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is <price>
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

|ticket|price|
|Adult Day Pass|29.95|
|Child Day Pass|25.95|
|Military/Police Admission|28.95|
|Senior Admission|28.95|
|College Student Admission|28.95|
|$50 Gift Card|50.00|
|$25 Gift Card|25.00|
|$100 Gift Card|100.00|
|Turtle Patrol Donation|5.00|

Scenario: Add Several Items to Cart
Given I am on the buy tickets page
When I click Add to Cart on the <ticket> tile
And I click Add to Cart <number> time(s)
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates <number> item(s)
And the sidebar heading is Products (<number>)
And the sidebar value is <price> * <number>
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables

|ticket|price|number|
|Adult Day Pass|29.95|3|
|Child Day Pass|25.95|5|
|Military/Police Admission|28.95|7|
|Senior Admission|28.95|8|
|College Student Admission|28.95|4|
|$50 Gift Card|50.00|6|
|$25 Gift Card|25.00|7|
|$100 Gift Card|100.00|5|
|Turtle Patrol Donation|5.00|9|

Scenario: Add One Item to Cart and Clear Cart
Given I am on the buy tickets page
And I click have <ticket> tile in the Cart
And the navigation header My Cart indicates 1 item(s)
And the sidebar heading is Products (1)
And the sidebar value is <price>
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables
When I click Clear Cart
Then I should see Cart is now empty toast
And the navigation header My Cart indicates 0 item(s)
And the sidebar heading is Products (0)
And the sidebar value is 0
And the transaction fee is 0
And the total tax is 0
And the total is 0
And the Checkout button disables

||ticket|price|
|Adult Day Pass|29.95|
|Child Day Pass|25.95|
|Military/Police Admission|28.95|
|Senior Admission|28.95|
|College Student Admission|28.95|
|$50 Gift Card|50.00|
|$25 Gift Card|25.00|
|$100 Gift Card|100.00|
|Turtle Patrol Donation|5.00|

Scenario: Add Several Items to Cart and Clear Cart
Given I am on the buy tickets page
And I click Add to Cart on the <ticket> tile
And I click Add to Cart <number> time(s)
And I see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates <number> item(s)
And the sidebar heading is Products (<number>)
And the sidebar value is <price> * <number>
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables
When I click Clear Cart 
Then I should see Cart is now empty toast
And the navigation header My Cart indicates 0 item(s)
And the sidebar heading is Products (0)
And the sidebar value is 0
And the transaction fee is 0
And the total tax is 0
And the total is 0
And the Checkout button disables

|ticket|price|number|
|Adult Day Pass|29.95|3|
|Child Day Pass|25.95|5|
|Military/Police Admission|28.95|7|
|Senior Admission|28.95|8|
|College Student Admission|28.95|4|
|$50 Gift Card|50.00|6|
|$25 Gift Card|25.00|7|
|$100 Gift Card|100.00|5|
|Turtle Patrol Donation|5.00|9|

Scenario: View an Item
Given I am on the buy tickets page
When I click View on the <ticket> tile
Then the page should open to the <ticket> tile information

|ticket|
|Adult Membership|
|Child Membership|

Scenario: View an Item and Add it to Cart
Given I am on the buy tickets page
And I have clicked View on <ticket> tile
And the page has opened to the <ticket> tile information
And the quantity counter reads 1
When I click Add to Cart
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is <price>
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables

|ticket|price|
|Adult Membership|100.00|
|Child Membership|80.00|

Scenario: View an Item and Add Several to the Cart
Given I am on the buy tickets page
And I have clicked View on <ticket> tile
And the page has opened to the <ticket> tile information
And the quantity counter reads 1
When I click the quantity counter until it reads <number>
And I click Add to Cart
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates <number> item(s)
And the sidebar heading is Products (<number>)
And the sidebar value is <price> * <number>
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables

|ticket|price|number|
|Adult Membership|100.00|8|
|Child Membership|80.00|10|

Scenario: View multiple items and add them to the cart from the individual item screen
Given I am on the buy tickets page
When I click on <ticket> tile
And it takes me to the <ticket> page
And the quantity counter reads 1
And I click Add to Cart
And I click Tickets & Memberships
And I click on <secondticket> tile
And it takes me to the <secondticket> page
And the quantity counter reads 1
And I click Add to Cart
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation head My cart indicates 2 item(s)
And the sidebar heading is Products (2)
And the sidebar value is <price> + <secondprice>
And the transaction fee is calculated
And the total tax is calculated 
And the total is calculated
And the Checkout button enables 

|ticket|secondticket|price|secondprice|
|Adult Day Pass|Child Day Pass|29.95|25.95|
|Child Day Pass|Miltary/Police Admission|25.95|28.95|
|Military/Police Admission|Senior Admission|28.95|28.95|
|Senior Admission|College Student Admission|28.95|28.95|
|College Student Admission|Child Membership|28.95|80.00|
|Child Membership|Adult Membership|80.00|100.00|
|Adult Membership|$50 Gift Card|100.00|50.00|
|$50 Gift Card|$25 Gift Card|50.00|25.00|
|$25 Gift Card|$100 Gift Card|25.00|100.00|
|$100 Gift Card|Turtle Patrol Donation|100.00|5.00|
|Turtle Patrol Donation|Adult Day Pass|5.00|29.95|

Scenario: Add items to the cart from the tickets storefront and from the individual items screens
Given I am on the buy tickets page
When I click on <ticket> tile
And it takes me to the <ticket> page
And the quantity counter reads 1
And I click Add to Cart
And I click Tickets & Memberships
And I click on Add to Cart under <secondticket> tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation head My cart indicates 2 item(s)
And the sidebar heading is Products (2)
And the sidebar value is <price> + <secondprice>
And the transaction fee is calculated
And the total tax is calculated 
And the total is calculated
And the Checkout button enables 

|ticket|secondticket|price|secondprice|
|Adult Day Pass|Child Day Pass|29.95|25.95|
|Child Day Pass|Miltary/Police Admission|25.95|28.95|
|Military/Police Admission|Senior Admission|28.95|28.95|
|Senior Admission|College Student Admission|28.95|28.95|
|College Student Admission|$50.00 Gift Card|28.95|50.00|
|Child Membership|Adult Day Pass|80.00|29.95|
|Adult Membership|$50 Gift Card|100.00|50.00|
|$50 Gift Card|$25 Gift Card|50.00|25.00|
|$25 Gift Card|$100 Gift Card|25.00|100.00|
|$100 Gift Card|Turtle Patrol Donation|100.00|5.00|
|Turtle Patrol Donation|Adult Day Pass|5.00|29.95|
