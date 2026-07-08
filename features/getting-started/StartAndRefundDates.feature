@sep11
Feature: Program start dates and Refund dates

    As a customer, I want to see the program start dates and refund policy details before enrolling
    so that I can make informed decisions.

    # Acceptance Criteria:
    #   1. Program Start date and refund dates must be displayed in step one in Test Automation with Selenium Program.
    #   2. The displayed program start date and refund dates must be correct

    Background:
        Given user is already on enrollment page

    @sep10-1 @smoke
    Scenario: Verify that the customer can see the program start dates and refund policy details
        Then system should display the program start date
        Then system should display the refund dates

    @sep10-1 @smoke
    Scenario: Verify that the customer can see the program start dates and refund policy details
        Then displayed the program start date is correct
        Then displayed the refund dates are correct




