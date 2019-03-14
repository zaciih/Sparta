$(function(){

  var interval;
  var progRunning = false;

//target the ball object
  var ball = $("#ball");

//target container
  var container = $("#container");

//set the inital position of the ball
  var posx = 0;
  var posy = 0;

//set ball direction
  var direction_x = "+"
  var direction_y = "+"

//friction
  var friction = 0;
  var frictionspeed = 0;
  var friction_increase = 5;

//random variable
  // var random = Math.random()*2;



//gravity
  var gravity = 0.1;
  var gravityspeed = 0;
  var grav_decrease = -5;

  $("#btn").click(function(){
    if (progRunning) {
      $("#btn").html("Resume");
      //stop the ball
      progRunning = false;
      $("#restart_btn").hide();
      clearInterval(interval);
    } else {
        $("#restart_btn").show();
        $("#btn").html("Stop");
        //start the ball
        progRunning = true;
        interval = setInterval(function(){
        //find coordinates of the ball and container edges
          var ball_left = ball.offset().left
          var ball_right = ball_left + ball.width();
          var ball_top = ball.offset().top;
          var ball_bottom = ball_top + ball.height();

          var container_left = container.offset().left
          var container_right = container_left + container.width();
          var container_top = container.offset().top;
          var container_bottom = container_top + container.height();

        //ball movement
          ball.css({
            'left': posx + "px",
            'top': posy + "px"
          });

        //ball direction X
          if (direction_x === "+" ) {
            frictionspeed += friction;
            posx+= frictionspeed;
          } else {
            frictionspeed += friction;
            posx-= frictionspeed;
          }
        //ball direction Y
          if (direction_y === "+" ) {
            gravityspeed += gravity;
            posy+= gravityspeed;
          } else {
            gravityspeed += gravity;
            posy+= gravityspeed;
          }
          //wall collisions
          if (ball_right >= container_right) {
            direction_x = "-";
            if (friction_increase > 0){
              friction_increase = friction_increase-0.01;
              console.log(friction_increase);
          } else {
            friction_increase = 0.01
          }
          } else if (ball_left <= container_left) {
            direction_x = "+";
            if (friction_increase > 0){
              friction_increase = friction_increase-0.01;
              console.log(friction_increase);
          } else {
            friction_increase = 0.01
          }
          }
          if (ball_bottom >= container_bottom) {
            direction_y = "-";
            if (grav_decrease < 0){
            grav_decrease = grav_decrease+0.1;
          } else {
            grav_decrease = -0.25
          }
            if (friction_increase > 0){
              friction_increase = friction_increase-0.01;
          } else {
            friction_increase = 0.0
          }
            frictionspeed = friction_increase;
            console.log(grav_decrease);
            gravityspeed = grav_decrease;
          } else if (ball_top <= container_top) {
            direction_y = "+";
          }
        }, 10)
      }
  })
  $("#restart_btn").click(function(){
    console.log("clicked");
    posx = 0;
    posy = 0;
    friction = 0;
    frictionspeed = 0;
    friction_increase = 5;
    gravity = 0.1;
    gravityspeed = 0;
    grav_decrease = -5;
  })

});
