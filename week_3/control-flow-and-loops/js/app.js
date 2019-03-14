console.log("JS Loaded");

// var age = prompt("How old are you?")
//
// age = parseInt(age);
//
// if (age >= 18) {
//   alert ("Have a beer you are old enough")
//   var choice = prompt("what beer do you want? 1) Becks or 2) Grolsch?")
//   if (choice == "1") {
//     alert("Becks, good choice!")
//   } else {
//     alert("Poor choice")
//   }
// } else {
//   alert("go away you're too young")
// }

// var choice = prompt ("Would you like 1, 2, or 3?");

// if (choice == 1) {
//   alert("1 is the best");
// } else if (choice == 2) {
//   alert("2 is great");
// } else if (choice == 3) {
//   alert("3 is fine");
// } else {
//   alert("invalid selection");
// }

// switch (choice) {
//   case "1":
//     alert("1 is the best");
//     break;
//   case "2":
//     alert("2 is great");
//     break;
//   case "3":
//     alert("3 is fine");
//     break;
//   default:
//     alert("invalid selection!");
// }
//
// var name = prompt("what is your name?")
//
// switch (name) {
//   case "Zac":
//     alert("Welcome, Zac");
//     break;
//   case "rob":
//     alert("you're new here");
//     break;
//   default:
//     alert("I don't know who you are");
// }

//comparitors

// > greater than
// < less than
// <= less than or equal to
// >= greater than or equal to

// == looks for equivilance in value but not type
// === looks for equivilance in value and type
// != not equal to

//loops
// for (var i = 0; i < 100; i++) {
//   console.log(i);
// }

// var array = ["Rob", "is", "great"];
//
// for (var i = 0; i < array.length; i++) {
//   console.log(array[i]);
// }

// var i = 7;
// while (i < 5) {
//   console.log("this loop has ran " + i + "times");
//   i++;
// }

// do {
//   console.log("this loop has ran " + i + "times");
//   i++;
// } while (i < 5);

var object = {
  name: "zac",
  age: 23,
  city: "brum"
}

for (var key in object) {
  console.log(key + ": " + object[key]);
}

var numarray = [1,2,3,4]

for (value of numarray) {
  console.log(value);
}
