Feature: Buy Tickets page

Scenario: Proceed to checkout from the cart
Given I am on the buy tickets page
And I have added 1 Adult Day Pass to the cart
When I click Checkout
And I am brought to the You may also be intersted in these items page
And I click Checkout
Then I am taken to my Shopping Cart
And I see the Adult Day Pass listed with the correct price and quantity
And the total carried over matches the cart total

Scenario: Navigate back to the cart from Checkout and change values
Given I am on the Order Details page with 1 Adult Day Pass
When I click Return to Cart
And I change the quantity to 2
Then the Checkout page shows 2 Adult Day Passes
And the total matches the updated cart
And I proceed to Checkout again

Scenario: Navigate back to the cart from Checkout and change values
Given I am on the Order Details page with 2 Adult Day Passes
When I click Return to Cart
And I change the quantity to 1
Then the Checkout page shows 1 Adult Day Pass
And the total matches the updated cart
And I proceed to Checkout again

Scenario: User is ready to Checkout
Given I am on the Buy Tickets page
When I have added 1 Adult Day Pass to the cart
And I click the Checkout button
Then I am brought to the You may also be intersted in these items page
And I click the Checkout button again
And I see 1 Adult Day Pass in my shopping cart
And I press Checkout again
And I am brought to the How would you like to Checkout pop up
And I select Guest Checkout
And click the Checkout button again

Scenario: Try to Checkout with an empty Cart
Given I am on the buy tickets page
When I click Add to Cart on the Adult Day Pass
Then I click Checkout
And I click Checkout again
And I remove the Adult Day Pass to set the quantity counter to 0
And I click Checkout
Then the Checkout button should be disabled

Scenario: Try to Clear Cart after clicking Checkout button
Given I have added 1 Adult Day Pass to My Cart
And I have clicked Checkout button
And I am brought to the You may also be intersted in these items page
And I click Checkout again
And I am brought to my Shopping Cart
Then I click Clear Cart button
And I am brought to Web Store Index page

Scenario: Click Continue Shopping button while on Checkout page
Given I have added 1 Adult Day Pass to My Cart 
And I click Checkout
And I am brought to the You may also be intersted in these items page
And I click Checkout again
And I am brought to my Shopping Cart
When I click Continue Shopping button
Then I am brought to All Categories page
And I click All Categories button
Then I am brought to Category : Tickets & Memberships shopping page

Scenario: Enter invalid Discount code
Given I have added 1 Adult Day Pass to My Cart
When I enter <DARA> in Enter Code box
And click APPLY button
Then red error message pops up saying Please input a discount code

Scenario: User uses Guest Checkout and fills out all required fields
Given I have added 1 Adult Day Pass to My Cart 
And I click Checkout
And I am brought to the You may also be intersted in these items page
And I click Checkout again
And I am brought to my Shopping Cart
And I click Checkout again 
Then a How would you like to checkout pop up box appears
And I click Guest Checkout Checkout button 
Then I am brought to Order Detials page
And I fill out all 4 required fields
Then I click Continue button
And I am brought to the Payment pop up box

Scenario: User uses Guest Checkout and doesn't fill out all required fields
Given I have added 1 Adult Day Pass to My Cart 
And I click Checkout
And I am brought to the You may also be intersted in these items page
And I click Checkout again
And I am brought to my Shopping Cart
And I click Checkout again 
Then a How would you like to checkout pop up box appears
And I click Guest Checkout Checkout button 
Then I am brought to Order Detials page
And I fill out First Name field 
And I fill out Last Name field 
And I fill out Email Address field 
Then I leave Zip/ Postal Code field empty
And I click Continue button
And I get an error message stating The ZipCode field is required.
And the Continue button is disabled

|empty field|error message|
|First Name|The First Name field is required.|
|Last Name |The Last Name field is required.|
|Email Address|The Email field is required.|
|Zip/Postal Code|The ZipCode field is required.|

Scenario: Buy 1 million Adult Day Passes
Given I added 1 Adult Day Pass to My Cart
Then I click checkout
And I am brought to You may also be intersted in these items page
And I click Checkout again 
And I am brought to my Shopping Cart 
And I enter 1000000 in the quantity box
And the total is calculated 
And I click Checkout
And I choose Guest Checkout
Then I continue to checkout as usual 
