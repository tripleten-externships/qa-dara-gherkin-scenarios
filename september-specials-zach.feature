Feature: Buy tickets for September Special

Scenario: User can buy tickets
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

Scenario: User can buy tickets
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
#There is some sort of error because the Grand Total price displays $355.51 and there was nothing added since the previous price of $326.25. That's a surcharge of $29.26
And: The Next button is displayed
When: User clicks Next Step button
Then: Step #5 Finalize Event page is displayed
And: Account Preferences dialogue box is displayed
When: Continue button is clicked
Then: dialogue box closes
And: allows you to proceed as guest to fill out personal information.  

