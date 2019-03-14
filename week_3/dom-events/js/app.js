document.addEventListener("DOMContentLoaded", function(){
  console.log("this code is ran when the page is finished loading");
//find the button on the page
  var button1 = document.getElementById('btn1')

  // button1.addEventListener("click", function(event){
  //   console.log(this);
  // });

  var buttons = document.getElementsByClassName("buttonrow");

  for (var i = 0; i < buttons.length; i++) {
    var button = buttons[i]

    button.addEventListener("click", function(event){
      console.log(this.value + " was clicked");
    });
  }

  //Add click event listener to the button
  // button1.addEventListener("click", addClassOnClick);
  //function to add a class to a button
  function addClassOnClick(){
    this.classList.add("btnclicked");
  }

//select the form on the page
  var form = document.getElementById("form");
//add event listener for the form with submitted
  form.addEventListener("submit", function(event){
    console.log("form submitted");

    event.preventDefault();

    var firstnameField = document.getElementById("firstname");
    if (firstnameField.value) {
      form.submit();
    } else {
      console.log("you must enter a name");
    }
  });

  //bubbling

  //get all divs
  var div1 = document.getElementById("div1")
  var div2 = document.getElementById("div2")
  var div3 = document.getElementById("div3")

  div1.addEventListener("click", function(event){
    console.log("div1 was clicked");
  });

  div2.addEventListener("click", function(event){
    console.log("div2 was clicked");
    event.stopPropagation();
  });

  div3.addEventListener("click", function(event){
    console.log("div3 was clicked");
    event.stopPropagation();
  });
});
