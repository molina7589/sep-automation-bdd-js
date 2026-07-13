import { Given, Then, When } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { startApplicationPage, page } from "../../globalPagesSetup.js";
import { productInfo } from "../../utilities/qa-data-reader.js";

When("user enters the first name", async function () {
    await startApplicationPage.enterFirstName(productInfo.firstName);
});

When("user enters the last name", async function () {
    await startApplicationPage.enterLastName(productInfo.lastName);
});

When("user enters the email address", async function () {
    await startApplicationPage.enterEmail(productInfo.email);
});

When("user enters phone number", async function () {
    await startApplicationPage.enterPhoneNumber(productInfo.phone);
});

When("user selects from How did you hear about us dropdown", async function () {
    await startApplicationPage.selectHowDidYouHearAboutUs(productInfo.howDidYouHearAboutUs);
    
});

When("user clicks the next button on start application step", async function () {
    await startApplicationPage.clickNextButton();
});
