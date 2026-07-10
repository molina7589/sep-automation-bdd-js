import { Given, Then, When } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import {startApplicationPage, paymentPlanPage,page,} from "../../globalPagesSetup.js";
import { productInfo } from "../../utilities/qa-data-reader.js";

Given("user has completed the start application step", async function () {
// This step assumes that the user has already completed the start application step and is now on the payment plans page.

    await startApplicationPage.enterFirstName(productInfo.firstName);
    await startApplicationPage.enterLastName(productInfo.lastName);
    await startApplicationPage.enterEmail(productInfo.email);
    await startApplicationPage.enterPhoneNumber(productInfo.phone);
    await startApplicationPage.selectHowDidYouHearAboutUs(productInfo.howDidYouHearAboutUs);
    await startApplicationPage.clickNextButton();
});

When("user clicks upfront payment plan", async function () {
    await paymentPlanPage.upfrontPaymentOption.click();

});

When("user clicks monthly payment plan", async function () {
    await paymentPlanPage.installmentsPaymentOption.click();
});

When("user clicks the next button on payment plans page", async function () {
    await paymentPlanPage.clickNextButton();
});

When(
  "When user is on the review page the back button should be displayed", async function () {
    await expect(paymentPlanPage.backButton).toBeVisible();
  });


Then("the next button on payment plans page should be clickable", async function () {
    await expect(paymentPlanPage.nextButton).toBeEnabled();
});

Then("the start application stepper circle color should be green", async function () {
    // Verify that the start application stepper circle has the class "green"
    await expect(startApplicationPage.startApplicationStepperCircle).toHaveCss("background-color", "rgb(0, 128, 0)"); // Assuming green is represented by rgb(0, 128, 0)
});

Then("the payment plan stepper circle color should be green", async function () {
    await expect(paymentPlanPage.paymentPlanStepperCircle).toHaveClass("green");
});

Then("the review stepper circle color should be blue", async function () {
    await expect(paymentPlanPage.reviewStepperCircle).toHaveClass("blue");
});

Then("the back button should be displayed", async function () {
    await expect(paymentPlanPage.backButton).toBeVisible(); 
});

Then("the review page should not be displayed", async function () {
    await expect(paymentPlanPage.reviewPage).not.toBeVisible();
});

Then("the payment component should be displayed on the review page", async function () {
    await expect(paymentPlanPage.paymentComponent).toBeVisible();
});

Then("the price summary should be displayed on the review page", async function () {
    await expect(paymentPlanPage.priceSummary).toBeVisible();
});