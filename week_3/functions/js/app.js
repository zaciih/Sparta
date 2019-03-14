console.log("page loaded");
var a = 5, b = 10;
var c = 8, d = 2;

multiplyTwoNumbers(a, b);
multiplyTwoNumbers(c, d);

function multiplyTwoNumbers(num1, num2){
  var result = num1 * num2;
  console.log(num1);
  console.log(num2);
}

var additionResult = function(){
  num1 = prompt("give me the first number")
  num2 = prompt("give me the second number")
  //info is always returned as a string
  console.log();
  return num1 + num2;
}

console.log(additionResult());

alert("this is an alert!");
