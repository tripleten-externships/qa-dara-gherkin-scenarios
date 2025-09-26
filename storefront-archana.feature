Feature: Buy ticket page

Scenario: Remove an item from the cart
Given I already added an Adult Day Pass to the cart
When I remove it from the cart
Then the cart should be empty
And the cart shows 0 products
And the total price is $0.00 
And the checkout button is disabled

Scenario: Increase item quantity in the cart
Given I already added an Adult Day Pass to the cart
When I change the quantity to 2 in the cart
Then the cart should show 2 products
And the total price of 2 products is calculated with tax
And the transaction fee is calculated
And the checkout button is enabled
And the cart summary should display:
|ticket|price|
|Adult Day Pass|$29.95|
|Price of 2 products|$59.90|
|Transaction Fee|$1.26|
|Total Tax|$3.89|
|Total Price|$65.05|

Scenario: Decrease item quantity in the cart
Given I already added an Adult Day Pass to the cart
When I reduce the quantity to 1 in the cart
Then the cart should show 1 product
And the total price of product is calculated with tax
And the transaction fee is added
And the checkout button is enabled
And the cart summary should display:
|ticket|price|
|Adult Day Pass|$29.95|
|Transaction Fee|$0.63|
|Total Tax|$1.95|
|Total Price|$32.53|

Scenario: Go to checkout
Given I have at least one item in the cart
When I click the Checkout button
Then I should be taken to the Checkout page
And I should see the selected items listed for review

Scenario: Attempt checkout with empty cart
Given my cart is empty
When I try to click the Checkout button
Then the Checkout button should be disabled
And I should stay on the same page

Scenario: Add item to cart from search
Given I search for "Day Pass"
When I click Add to Cart on the Adult Day Pass from the search results
Then I should see a message saying the item was added successfully
And the cart shows 1 product
And the total price is $29.95
And the checkout button is enabled


Scenario: Exceed maximum quantity allowed
Given I have added 10 Adult Day Passes to the cart
When I try to increase the quantity to 11
Then I should see a message that the maximum quantity is reached
