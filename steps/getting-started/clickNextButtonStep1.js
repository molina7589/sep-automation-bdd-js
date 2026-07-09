import { And, Given, Then, When } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { startApplicationPage, page } from "../../globalPagesSetup.js";
import { productInfo } from "../../utilities/qa-data-reader.js";

When("user enters the first name", async function () {
    await startApplicationPage.enterFirstName();
});

When("user enters the last name", async function () {
    await startApplicationPage.enterLastName();
});

When("user enters the email address", async function () {
    await startApplicationPage.enterEmailAddress();
});

When("user enters phone number", async function () {
    await startApplicationPage.enterPhoneNumber();
});

When("user selects from How did you hear about us dropdown", async function () {
    await startApplicationPage.selectHowDidYouHearAboutUs();
});

When("user clicks the next button on start application step", async function () {
    await startApplicationPage.clickNextButton();
});

Then("the payment plan stepper circle should be blue", async function () {

});

And("the payment plan stepper circle should be blue", async function () {

});

Then("the start application stepper circle color should be green", async function () {

});
