export class BrowserUtility {

    static async sleep(seconds){
        await new Promise((resolve) => setTimeout(resolve, seconds * 1000));
    }

    // ADD YOUR OWN BROWSER UTILITY FUNCTIONS HERE...
    
    //Create a function that can verify expected and actual messages are equals use promise
    static async verifyMessageEquals(expectedMessage, actualMessage) {
        return new Promise((resolve, reject) => {
            resolve(expectedMessage.toString() === actualMessage.toString()) 
    
    });
    }

}