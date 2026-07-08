import { Given, Then, When } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { startApplicationPage, page } from "../../globalPagesSetup.js";
import { productInfo } from "../../utilities/qa-data-reader.js";


Given("user is already on enrollment page", async function () {
    await startApplicationPage.login();
});

Then("system should display the program start date", async function () {
    await expect(startApplicationPage.programStartDate).toBeVisible();
});

Then("system should display the refund dates", async function () {
    await expect(startApplicationPage.refundEndDate).toBeVisible();
});

Then("displayed the program start date is correct", async function () {
    const ACTUAL_START_DATE = await startApplicationPage.programStartDate.innerText();
    const EXPECTED_START_DATE = productInfo.startDate;
    expect(ACTUAL_START_DATE).toBe(EXPECTED_START_DATE);
});

Then("displayed the refund dates are correct", async function () {
    const ACTUAL_REFUND_DATE = await startApplicationPage.refundEndDate.innerText();
    const EXPECTED_REFUND_DATE = productInfo.refundDate;
    expect(ACTUAL_REFUND_DATE).toBe(EXPECTED_REFUND_DATE);    
});