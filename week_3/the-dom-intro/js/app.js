console.log("loaded");

function add_list_item(value){
  var list = document.getElementById('list')
  var list_item = document.createElement('li');
  list_item.innerHTML = value;
  list.appendChild(list_item)
}

var shopping_list = ["sugar", "spice", "everything nice"];

//write a loop to add shopping_list to unordered list
for (var i = 0; i < shopping_list.length; i++) {
  add_list_item(shopping_list[i]);
}

//set every other list item to have class of even
// for (var i = 1; i <= list.children.length; i+=2) list.children[i].classList.add("even");
var even = document.querySelectorAll("li:nth-child(even)");

for (var i = 0; i < even.length; i++) {
  even[i].classList.add("even")
}

// console.log(document.body.children[1]);


//update span count to be the number of items on the list

// document.body.children[2].children[0].innerHTML = list.children.length;
var list_items = document.querySelectorAll("#list li");

document.getElementById("count").innerHTML = list_items.length;

console.log(document.body.children[2].children[0].innerHTML);


//console.log(document.body.children[0].innerHTML);

// function change_title() {
//   document.body.children[0].innerHTML = "This has been updated!";
// }

// document.body.children[0].innerHTML = "This has been updated!";

// setTimeout(change_title, 5000);


//
// list.style.backgroundColor = "gainsboro";
//
// var selector = document.querySelectorAll('li.active')
//
// console.log(selector);
