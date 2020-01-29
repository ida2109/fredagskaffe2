// Import our program
// (in this case an instance of a coffee machine
// so that we can run unit tests methods)
let CoffeeMachine = require('../index.js');
let myMachine = new CoffeeMachine();

// Export the step-definitions
// (tests) so that Cucumber can
// read/use them
module.exports = function () {

  this.Given(/^that the coffee machine is plugged in$/, function () {
    // tell the machine that it is plugged in
    myMachine.plugIn();
    // check if the property pluggedIn is true
    // this also works: assert(myMachine.pluggedIn)
    // but this is clearer
    assert.strictEqual(
      myMachine.pluggedIn,
      true,
      'Expected the property pluggedIn to be true after calling the plugIn() method.'
    );
  });

  this.Given(/^that the machine has enough water$/, function () {
    // tell the machine to connect to water
    myMachine.connectToWater();
    // check if the property connectedToWater is true
    assert.strictEqual(
      myMachine.connectedToWater,
      true,
      'Expected the property connectedToWater to be true after calling the connectToWater() method.'
    );
  });

  this.Given(/^that the machine has enough beans$/, function () {
    // tell the machine to connect to water
    myMachine.connectToBeans();
    // check if the property connectedToBeans is true
    assert.strictEqual(
      myMachine.connectedToBeans,
      true,
      'Expected the property connectedToBeans to be true after calling the connectToWater() method.'
    )
  });

  this.Given(/^that the machine has enough cups$/, function () {
    // tell the machine to connect to water
    myMachine.connectToCups();
    // check if the property connectedToCups is true
    assert.strictEqual(
      myMachine.connectedToCups,
      true,
      'Expected the property connectedToCups to be true after calling the connectToCups() method.'
    )
  });
}