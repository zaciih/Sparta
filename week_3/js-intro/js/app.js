console.log("I'm doing JavaScript!!!");

var a = 5;
var b = 10;

// console.log(a+b);
// console.log("a is equal to " + a);
//
// console.log(isFinite(a));

//strings
var string1 = "hello, world";
var string2 = 'Don\'t do this it will break it';
var string3 = "3";

// console.log(string2.length);
// console.log(string2.substr(4,12));

//boolean

var bool1 = true;

console.log(bool1);

//undefined
var empty;

console.log(typeof bool1);

var fruitarray = ["apple", "tomato", "orange", "banana"];

// console.log(fruitarray.length);
// console.log(fruitarray.indexOf("orange"));

// fruitarray.push("grape");
// var last = fruitarray.pop();
// console.log(fruitarray);
// console.log(last);
//
// console.log(fruitarray[fruitarray.length -1]);
// console.log(fruitarray.reverse());

var sliceArray = fruitarray.slice(1,3);
console.log(sliceArray);

//objects

var person = {
  // key: "value",
  name: "Rob",
  eye_color: "blue",
  age: 28
}

console.log(person.eye_color);
