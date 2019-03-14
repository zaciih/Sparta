$(function(){
  // add item to list

  // var parent = document.getElementById("list");
  //
  // var li = document.createElement("li");
  //
  // li.innerHTML = "this is another thing";
  //
  // parent.appendChild(li);
  // var new_item = $("<li>learn jQuery</li>");
  // $("#list").append(new_item);
  $("#list");

  update_count();
  add_done_listener();

  function update_count(){
    var list_length = $(".todo").length;
    $("#count").html(list_length);
  }

  function random_item(){
    var items = ["Go to Greggs", "Play Football", "Play Kingdom Hearts"];

    var random = Math.floor(Math.random()*(items.length))
    return items[random];
  }

  // $("h1").css("color", "lavender").html("this has been updated");
  //
  // $("li").addClass("done");

  //var btn = document.getElementById("btn")
  //btn.addEventListener("click", function(){})
  $("#btn").click(function(){
    var new_item = random_item();
    $("#list").append("<li class='todo'>"+new_item+"<button type='button' class='markdone'>Mark as Done</button></li>");
    update_count();
    add_done_listener();
  })

  function add_done_listener(){
    $(".markdone").click(function(){
      $(this).hide();
      $(this).parent().addClass("done");
      $(this).parent().removeClass("todo");
      update_count();
    });
  }

});
