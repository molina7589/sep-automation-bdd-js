@sep14
Feature: Selecting a payment plan

    As a customer, I want to be able to Choose a payment plan from the available options
    so that I can choose the one that best suits my needs.

    # Acceptance Criteria:
    #    1. When user is navigated to payment plan page for the first, by default no payment is selcted and the next button is disabled
    #    2. When the user selects any payment plan (Accordion) that option should be highlighted to indicate selection.
    #    3. Upon selecting any pricing option, the 'Next' button should become active (indicating the user can proceed).
    #    4. Users should be able to change their plan selections at any time before finalizing their choice.


    Background:
        Given user is already on enrollment page
        And user has completed the start application step
    # And User completed the payment plan step

    @sep14-1
    Scenario: Verify when upfront payment plan is selected, the option is highlighted and the next button is enabled
        When user clicks upfront payment plan
        Then the upfront payment plan should be highlighted to indicate selection
        And the next button on payment plans page should be clickable




    @sep14-2
    Scenario: Verify when installment payment plan is selected, the option is highlighted and the next button is enabled
        When user clicks installment payment plan
        Then the installment payment plan should be highlighted to indicate selection
        And the next button on payment plans page should be clickable