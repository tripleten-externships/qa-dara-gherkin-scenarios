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
When: User clicks Terms and Conditions check box
Then: Next Step button is displayed
When Next Step button is clicked
Then: Finalize Event is displayed
And: Account Preferences dialogue box is displayed
When: Continue button is clicked
Then: dialogue box closes
And: allows you to proceed as guest