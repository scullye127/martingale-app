Bullets for each A/B test (in project board already)

Test name
User Story #
Metrics
Hypothesis
Experiment setup
Variations

A/B Test #1: Dashboard Background Colors
User Story #4: Golden Path
Metrics: This will test user retention and engagement time depending on the color scheme of the app
Hypothesis: This is testing whether users are more likely to engage with the app if the color scheme is light or dark. This will help determine an optimal color scheme that will please users and keep them coming back to the app.
Experiment: We will use Remote Config and givbe 50% of users the light color background and half the dark background. We will track user retention and engagement time, which are collected by Firebase.
Variations: Black, white, gray? backgrounds




Eli
* A/B Test Name: Text on Service Request button
* User Story 4: Golden Path
* Click Through Rate
* Hypothesis: The main solution of this app is to fix people's boats so we want to make sure as many boat owners are submitting service requests as possible. Obviously this is done on the boat owners page when they click on the button. Our hypothesis is that by changing the text on that button more people will lead to a higher CTR meaning the app will be used more
* Experiment setup: We will be using the remote config to change the text inside the button and show this version to 50% of the users when they land on that page, this will be the case for 1 week. This ensures we get a good enough sample size for both cases to make our decisions. Everytime that a user taps the button we will track that event in firebase analytics, keeping seperate counts for each text variant. We will also track the exact amount of times the screen is visited on the app. we can use this info to get our CTR.
* Variations: The two variations will be the different text inside the button. On will read "Submit Request" and the other "Fix Your Boat"

Joey
Test name: A/B Change colors on butons
User Story #4 Golden Path
Metrics: This will test if users stay longer or less long based on the colors of the buttons, what is more appealing to the user. 
Hypothesis: We will be able to optimize the app to the colors that appeal to the users the most allowing for the users to have a stronger desire to come back to the app.  
Experiment setup: We will give around half of the users a yellow or black button and then use metrics to determine which has a better level of engagement.
Variations:  We will use black and yellow for this on certain buttons.
