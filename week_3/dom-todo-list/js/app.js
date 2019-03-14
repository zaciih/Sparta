document.addEventListener("DOMContentLoaded", function(){

  //add existing list items to counter
  count_list_items();

  // form to capture info
  var submit_btn = document.getElementById("additem");
  var form_text= document.getElementById("newitem");

  submit_btn.addEventListener("click", function(event){
    event.preventDefault();
    var user_input = form_text.value;
    console.log(user_input);
    addListItem(user_input);
    count_list_items();
    form_text.value = "";
  });

  // add items to List
  function addListItem(item){
    var ul = document.getElementById("list");
    var li = document.createElement("li");
    li.innerHTML = item;
    ul.appendChild(li);
  }
  // update count items left to do
  function count_list_items(){
    var list_items = document.getElementsByTagName("li");
    var counter = document.getElementById("count");
    counter.innerHTML = list_items.length;
  }

  // remove last item from list
  var remove = document.getElementById("removeItem");

  remove.addEventListener("click", function(){
    var ul = document.getElementById("list");
    var list_items = document.getElementsByTagName("li");
    if (list_items.length!=0){
      ul.removeChild(list_items[list_items.length-1]);
    count_list_items();
      }
  });

});
