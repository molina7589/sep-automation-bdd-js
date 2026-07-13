@sep19
Feature: Click on the next button on step 1

    As a customer, I should be able to click on the next button on step 1 when I give valid information.

    # Acceptance Criteria:
    #   1. The next button should take customers to step two when given valid information.
    #           a. Test by providing all fields
    #           b. Test by providing only the required fields

    Background:
        Given user is already on enrollment page

    @sep19-1 @smoke
    Scenario: Verify that clicking next button after providing all the personal info will navigates the user to payment plan
        When user enters the first name
        And user enters the last name
        And user enters the email address
        And user enters phone number
        And user selects from How did you hear about us dropdown
        And user clicks the next button on start application step
     

    @sep19-2
    Scenario: Verify that clicking next button after providing only the required fields will navigate the user to payment plan
        When user enters the first name
        And user enters the last name
        And user enters the email address
        And user enters phone number
        And user clicks the next button on start application step

#----------------------------------------------------------------------------------------------------------------------------------------------------

# Background: is for pre-requisit steps for all the scenarios in this feature.
#     Given is for pre-requisit step for all the scenarios in this feature.

# Scenario: Test Case Name
#     Given is for pre-requisit step for this test Case
#     And is for additional pre-requisit step for this test Case
#     When is for action step to be performed for this test Case
#     And is for additional action step to be performed for this test Case
#     Then is for validation step to verify the result of the action step
#     And is for additional action step to be performed for this test Case


# Scenario Outline: is for preparing a set of test cases with different data.
#     Given is for pre-requisit step for this Scenario Outline
#     And is for additional pre-requisit step for this Scenario Outline

# Example: is for example data for the Scenario Outline
#         | First Name | Last Name | Email Address       | Phone Number | How Did You Hear About Us |
#         | John       | Doe       | johndoe@example.com | 1234567890   | Email                     |
