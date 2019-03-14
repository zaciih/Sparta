//Calculator

var try_again = true;

while (try_again) {

  var result = null;

  //User Input
  var option_choice = prompt("Would you like (1) Basic Functions or (2) Advanced Functions?");

  while (option_choice != 1 && option_choice !=2) {
    var option_choice = prompt("Invalid selection. Would you like (1) Basic Functions or (2) Advanced Functions?");
  }

  if (option_choice == 1) {
    //Basic Operations
    var operation_choice = prompt("Do you want (a)ddition, (s)ubtraction, (m)ultiplcation, or (d)ivision?");

    var num1 = parseInt(prompt("What is your 1st number?"));
    var num2 = parseInt(prompt("What is your 2nd number?"));

    switch (operation_choice) {
    //Addition
      case "a": result = num1 + num2;
        break;
    //Subtraction
      case "s": result = num1 - num2;
        break;
    //Multiplication
      case "m": result = num1 * num2;
        break;
    //Division
      case "d": result = num1 / num2;
        break;

      default: console.log("Something went wrong");
    }
  } else {
    //Advanced Operations
    var operation_choice = prompt("Do you want (p)ower or (s)quare root?")

    var num1 = parseInt(prompt("What is your 1st number?"));
    //Don't prompt for second number is square root is selected
    if (operation_choice != "s") {
      var num2 = parseInt(prompt("What is your 2nd number?"));
    }
    //Power
    if (operation_choice == "p") {
      result = Math.pow(num1, num2);
      //Square Root
    } else if (operation_choice == "s") {
      result = Math.sqrt(num1);
    }
  }

  //Display Answer

  if (result != null) {
    alert("Your answers is: " + (result))
  }

  try_again = !prompt("Press enter to continue, or (q) to quit");
}
