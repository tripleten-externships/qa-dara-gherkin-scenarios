Feature: Buy Tickets page

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the Adult Day Pass tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $29.95
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the Child Day Pass tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $25.95
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the Military/Police Admission tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $28.95
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the Senior Admission tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $28.95
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the College Student Admission tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $28.95
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the $50 Gift Card tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $50.00
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the $25 Gift Card tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $25.00
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the $100 Gift Card tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $100.00
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: Add an item to the cart
Given I am on the buy tickets page
When I click Add to Cart on the Turtle Patrol Donation tile
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $5.00
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables 

Scenario: View Child Membership tile
Given I am on the buy tickets page
When I click on View on the Child 12 Month Membership tile
Then I am taken to the Child Membership page

Scenario: Add an item to the cart
Given I am on the Child Membership page
When I click Add to Cart 
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $80.00
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables

Scenario: View Adult Membership tile
Given I am on the buy tickets page
When I click on View on the Adult 12 Month Membership tile
Then I am taken to the Adult Membership page

Scenario: Add an item to the cart
Given I am on the Adult Membership page
When I click Add to Cart 
Then I should see the Item(s) have been added to the cart successfully toast
And the navigation header My Cart indicates 1 item
And sidebar heading is Products (1)
And the sidebar value is $100.00
And the transaction fee is calculated
And the total tax is calculated
And the total is calculated
And the Checkout button enables
