Feature: Buy tickets for September Special

Scenario: User can buy tickets
Given: The user is on the Buy Tickets page
And: The user has expanded the September Special Section
And: The user has clicked select package
Then: Step#2 Select a date page displays
When: The user clicks a day several days in the future 
Then: Available times display
And: The clownfish room information displays 
When: User clicks Available time button
Then: reservation is added
And: Next Step button is displayed
When: Next Step button is clicked
Then: Select Quantity step is displayed
When: User clicks plus button ten times
Then: The Next Step button is displayed
And: Spots left counter displays 40
When: User clicks Next Step button
Then: The Customize Event step is displayed
And: The Summary Block is displayed
And: Timer starts at ten minutes 
And: Proper number of guests displays
And: Package September Special displays
And: Event Clownfish Party Room displays
And: Location Daytona Aquarium & Rainforest Adventure displays
And: Selected date displays
And: Selected time displays
And: Selected number of guests displays
And: Grand Total is displayed
And: The Next Step button is displayed
Then: User clicks Next Step button 
Then: Account preferences dialogue box shows up and you can proceed as guest.  
Then: User clicks Continue button 
And: dilogue box disappears. 
Then: Personal data input fields appear And User fills out proper criteria to finalize your event.

Scenario: User adds 14 guests
Given: The user is on the Buy Tickets page
And: The user has expanded the September Special Section
And: The user has clicked select package
When: The user clicks a day several days in the future 
Then: Available times display
And: The clownfish room information displays 
When: User clicks Available time button
Then: reservation is added
And: Next Step button is displayed
When: Next Step button is clicked
Then: Select Quantity step is displayed
When: User clicks plus button fourteen times
Then: Total Price: $326.95 is displayed
Then: The Next Step button is displayed
When: User clicks Next Step button
Then: Step number 4 Customize Event Page is displayed
And: The Summary Block is displayed
And: Timer starts at ten minutes 
And: Proper number of guests displays
And: Package September Special displays
And: Event Clownfish Party Room displays
And: Location Daytona Aquarium & Rainforest Adventure displays
And: Selected date displays
And: Selected time displays
And: Selected number of guests displays
And: Grand Total is displayed saying $355.51 
And: The Next button is displayed
When: User clicks Next Step button
Then: Step #5 Finalize Event page is displayed
And: Account Preferences dialogue box is displayed
When: User clicks Continue button
Then: dialogue box closes
And: allows you to proceed as guest to fill out personal information.  

Scenario: You must create an account to finalize an order
Given: The user is on the Buy Tickets page
And: The user has expanded the September Special Section
And: The user has clicked select package
When: The user clicks a day several days in the future 
Then: Available times display
And: The clownfish room information displays 
When: User clicks Available time button
Then: reservation is added
And: Next Step button is displayed
When: Next Step button is clicked
Then: Step#3 Select Quantity step is displayed
When: User clicks plus button thirteen times
Then: The Next Step button is displayed
And: Spots left counter displays 37
When: User clicks Next Step button
Then: Step#4 The Customize Event page is displayed
And: The Summary Block is displayed
And: Timer starts at ten minutes 
And: Proper number of guests displays
And: Package September Special displays
And: Event Clownfish Party Room displays
And: Location Daytona Aquarium & Rainforest Adventure displays
And: Selected date displays
And: Selected time displays
And: Selected number of guests displays
And: Grand Total is displayed
And: The Next Step button is displayed
When: User clicks Next Step button
Then: Step#5 Finalize Event page displays
Then: Account preferences dialogue box shows up and you can proceed as guest.  
Then: User clicks Continue button 
And: dilogue box disappears. 
Then: Personal data input fields appear  
Then:User fills out required criteria to finalize event.
#All fields are required and have an asteriks above field
Then: The Next Button displays
And: Total Price $326.21 displays
Then: User clicks the Next Button
Then: Step #6 Checkout Page displays
And: Location Daytona Aquarium & Rainforest Adventure displays
and: Selected room displays
And: Selected number of guests displays
And: Timer is counting down
And: Item box is displayed
And: Quantity 1 is displayed
And: Price $300.00 is displayed
And: Discount Code Box is displayed
And: Apply Button is displayed
And: Transaction Fee $6.71 is displayed
And: Total Discount $0.00 is displayed
And: Tax $19.50 is displayed
And: Grand Total $326.21
And: Pay Depsosit Only Button displays
#Cost of $100 is in parenthesis in numerical form inside button
And: Pay Full Amount button displays
# Full price amount is in numerical form inside button in parenthesis $326.21
Next: User clicks Pay Full Amount button
Next: Payment box shows up with various payment methods
Next: User fills in appriopriate input.


Scenario: User can add add products
Given: The user is on the Buy Tickets page
And: The user has expanded the September Special Section
When: The user has clicked select package
Then: Next Step button is displayed
When: User clicks Next step button
Then: Step#2 Pick a date page is displayed
When: The user clicks a day several days in the future 
Then: Available times display
And: The clownfish room information displays 
When: User clicks Available time button
Then: reservation is added
And: Next Step button is displayed
When: Next Step button is clicked
Then: Step#3 Select Quantity page is displayed
When: User clicks plus button thirteen times
Then: The Next Step button is displayed
And: Spots left counter displays 37
And: Total Price: $300.00 is displayed
And: Next step button is displayed
When: Next step button is clicked
Then: Step#4 Customize Event is displayed
And: Add Products table is displayed.
And: Each product box is equipped with an Add Button 
When: User clicks Add button
Then: Specific product opens up
Then: Product modifier box displays
And: various selections can be chosen including increasing quantity of items
Then: when appriopriate selections are clicked
Then: selection is added to the Summary box
And: proper calculations have been adjusted
Then: User clicks on terms and conditions box
And: Next Step button is displayed
When: User clicks next step button
Then: Step#5 Finalize Event page displays
Then: Account preferences dialogue box shows up and you can proceed as guest.  
Then: User clicks Continue button 
And: dilogue box disappears. 
Then: Personal data input fields appear  
Then:User fills out required criteria to finalize event.
Then: Save Data button is displayed
When: User clicks Save button
Then: Next step button is displayed
When: User clicks Next step button
Then: Step#6 Checkout Page is displayed
And: Item box is displayed with all of your selected items
And: their quantaties
And: Item Price Totals
And: Below item price totals is an x button with remove
And: Discount box is displayed with apply button
And: Subtotal is displayed
And: Transaction fee is displayed
And: Total discount is displayed
And: Tax is displayed
And: Grand total is displayed
And: Pay deposit only button is displayed
And: Pay full amount button is displayed


Scenario: User can remove products
Given: The user is on the Buy Tickets page
And: The user has expanded the September Special Section
When: The user has clicked select package
Then: Next Step button is displayed
When: User clicks Next step button
Then: Step#2 Pick a date page is displayed
When: The user clicks a day several days in the future 
Then: Available times display
And: The clownfish room information displays 
When: User clicks Available time button
Then: reservation is added
And: Next Step button is displayed
When: Next Step button is clicked
Then: Step#3 Select Quantity page is displayed
When: User clicks plus button thirteen times
Then: The Next Step button is displayed
And: Spots left counter displays 37
And: Total Price: $300.00 is displayed
And: Next step button is displayed
When: Next step button is clicked
Then: Step#4 Customize Event is displayed
And: Add Products table is displayed.
And: Each product box is equipped with an Add Button 
When: User clicks Add button
Then: Specific product opens up
Then: Product modifier box displays
And: various selections can be chosen including increasing quantity of items
Then: when appriopriate selections are clicked
Then: selection is added to the Summary box
And: proper calculations have been adjusted
Then: User clicks on terms and conditions box
And: Next Step button is displayed
When: User clicks next step button
Then: Step#5 Finalize Event page displays
Then: Account preferences dialogue box shows up and you can proceed as guest.  
Then: User clicks Continue button 
And: dilogue box disappears. 
Then: Personal data input fields appear  
Then:User fills out required criteria to finalize event.
Then: Save Data button is displayed
When: User clicks Save button
Then: Next step button is displayed
When: User clicks Next step button
Then: Step#6 Checkout Page is displayed
Item box is displayed with all of your selected items
And: their quantaties
And: Item Price Totals
And: Below item price totals is an x button with remove
When: The user clicks remove, that item is removed and calculations are adjusted
And: Discount box is displayed with apply button
And: Subtotal is displayed
And: Transaction fee is displayed
And: Total discount is displayed
And: Tax is displayed
And: Grand total is displayed
And: Pay deposit only button is displayed
And: Pay full amount button is displayed

Scenario: User can remove products
Given: The user is on the Buy Tickets page
And: The user has expanded the September Special Section
When: The user has clicked select package
Then: Next Step button is displayed
When: User clicks Next step button
Then: Step#2 Pick a date page is displayed
When: The user clicks a day several days in the future 
Then: Available times display
And: The clownfish room information displays 
When: User clicks Available time button
Then: reservation is added
And: Next Step button is displayed
When: Next Step button is clicked
Then: Step#3 Select Quantity page is displayed
When: User clicks plus button thirteen times
Then: The Next Step button is displayed
And: Spots left counter displays 37
And: Total Price: $300.00 is displayed
And: Next step button is displayed
When: Next step button is clicked
Then: Step#4 Customize Event is displayed
And: Add Products table is displayed.
And: Each product box is equipped with an Add Button 
When: User clicks Add button
Then: Specific product opens up
Then: Product modifier box displays
And: various selections can be chosen including increasing quantity of items
Then: when appriopriate selections are clicked
Then: selection is added to the Summary box
And: proper calculations have been adjusted
And: Next to Product Add On there is a circle with an x in it.
When: User clicks circle with x in it
Then: the product is removed.
And: calculations have been adjusted.
Then: User clicks on terms and conditions box
And: Total Price is displayed on the footer
And: Next Step button is displayed
When: User clicks next step button
Then: Step#5 Finalize Event page displays
Then: Account preferences dialogue box shows up and you can proceed as guest.  
Then: User clicks Continue button 
And: dilogue box disappears. 
Then: Personal data input fields appear  
Then:User fills out required criteria to finalize event.
Then: Save Data button is displayed
When: User clicks Save button
Then: Next step button is displayed
When: User clicks Next step button
Then: Step#6 Checkout Page is displayed
Item box is displayed with all of your selected items
And: their quantaties
And: Item Price Totals
And: Below item price totals is an x button with remove
And: Discount box is displayed with apply button
And: Subtotal is displayed
And: Transaction fee is displayed
And: Total discount is displayed
And: Tax is displayed
And: Grand total is displayed
And: Pay deposit only button is displayed
And: Pay full amount button is displayed

Scenario: User can navigate back to a previous page
Given: The user is on the Buy Tickets page
And: The user has expanded the September Special Section
When: The user has clicked select package
Then: Next Step button is displayed
When: User clicks Next step button
Then: Step#2 Pick a date page is displayed
And: Above Words Step #2 is a hyperlink with the text corresponding with the previous page's title
When: User clicks previous page's title above current step
Then: You navigate to the previous page