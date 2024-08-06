import { BasePage } from "./BasePage.js";



export class DashboardPage extends BasePage {

  
  // ADD YOUR LOCATORS HERE...
  /**
   * @param {import('playwright').Page} page
   */
  constructor(page) {
    super(page);
    this.userprofileImage = page.locator("[id='user_avatar']");
    this.userlogoutButton = page.getByText('Log Out');
    this.bookLink = page.locator("//a[@href='#books' and @class='nav-link']");
   
  }


}
