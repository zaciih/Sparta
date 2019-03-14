console.log("loaded");

//------------------Outside Variable-----------------------

var outsideVariable = 5;

function printWords(){
  console.log(outsideVariable);
}

printWords();

//------------------Inside Vars--------------------------

function doSomething(){
  var insideVariable = "you can't see me";
}

doSomething();

// console.log(insideVariable);

//-------------------Functions-------------------------

function first(){
  console.log("I am the first function");
}

function second(){
  first();
  console.log("I am the second function");
}

second();

//-------------------Nesting-------------------------
var word1 = "butter";
var word2 = "yellow";

function jonWordsAndPrint(string1, string2){
  var combinedstring = string1 + string2;

  function printString(string){
  console.log(string);
  }

  printString(combinedstring);
}

jonWordsAndPrint(word2, word1);

printString(word2); // doesn't work <-- can't read inside function
