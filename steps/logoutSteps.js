import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";


Given('user is already logged in {string}', async function (string) {
  // Write code here that turns the phrase above into concrete actions
  await PageManager.loginPage.login(string)
  await BrowserUtility.sleep(2);
});

When('user clicks the user profile on top right corner of the page', async function () {
  // Write code here that turns the phrase above into concrete actions
  await PageManager.dashboardPage.userprofileImage.click();
  await BrowserUtility.sleep(2);
});

When('user clicks the logout button', async function () {
  // Write code here that turns the phrase above into concrete actions
  await BrowserUtility.sleep(2);
  await PageManager.dashboardPage.userlogoutButton.click();
});

Then('user should be logged out from the app', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.page).toHaveTitle("Login - Library")
});
