@sep16
Feature: Click Next button on payment plans page

    As a customer, I should be able to click on the next button on step 2 when I select a plan.

    # Acceptance Criteria:
    #    1. Clicking on any plan should activate the next button
    #    2. When the customer clicks on the next button, the Step 3 page should be displayed.
    #    3. In the stepper, steps one and two should be green, and step 3 should be blue.
    #    4. The payment component should be displayed.
    #    5. A price summary should be displayed.
    #    6. The back button should be displayed.

    Background:
        Given user is already on enrollment page
        And user has completed the start application step
    # And User completed the payment plan step

    @sep16-1
    Scenario: Verify that clicking on upfront payment plan will activate the next button
        When user clicks upfront payment plan
        Then the next button on payment plans page should be clickable

    @sep16-2
    Scenario: Verify the stepper colors after clicking on upfront payment plan 
        When user clicks upfront payment plan
        Then the start application stepper circle color should be green
        And the payment plan stepper circle color should be green
        And the review stepper circle color should be blue
        And the back button should be displayed

    @sep16-3
    Scenario: Verify that clicking on monthly payment plan will activate the next button
        When user clicks monthly payment plan
        Then the next button on payment plans page should be clickable

    @sep16-4
    Scenario: Verify the stepper colors after clicking on monthly payment plan and clicking next button
        When user clicks monthly payment plan
        And user clicks the next button on payment plans page
        Then the start application stepper circle color should be green
        And the payment plan stepper circle color should be green
        And the review stepper circle color should be blue
        And the back button should be displayed

    @sep16-5
    Scenario: Verify the back button is displayed  
        Then the back button should be displayed
    
    #@sep16-5
    #Scenario: Verify that clicking on the next button without selecting a plan will not navigate to the review page
        #When user clicks the next button on payment plans page
        #Then the review page should not be displayed

    #@sep16-6
    #Scenario: Verify that the [payment component] and price summary are displayed on the review page after clicking on the next button
        #When user clicks upfront payment plan
        #And user clicks the next button on payment plans page
        #Then the payment component should be displayed on the review page
        #And the price summary should be displayed on the review page