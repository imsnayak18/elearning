<?php
session_start();

require_once('conn.php');
$conn = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$table = "courses";
?>

<html>
<head>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="js/ajax.js"></script>
    <style type="text/css">
    @import url("http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css");
    

    .container-fluid{
        background-image: linear-gradient(90deg, #4b6cb7, #182848);
    }

    .stylish-input-group .input-group-addon{
        background: white !important;
    }
    .stylish-input-group .form-control{
        border-right:0;
        box-shadow:0 0 0;
        border-color:#ccc;
    }
    .stylish-input-group button{
        border:0;
        background:transparent;
    }
    body{
        background-color:#E6E6FA;
    }
    div.cards{
      width:150px;
      height: 100px;
      margin-left: 150px;
      margin-top: 20px;
      display:inline-block;

    }
    .w3-card-4{
      background-color:#90EE90;
    }



    </style>
    <script type="text/javascript">
    $(function(){
       <?php
       if(isset($_SESSION['username'])){
          $loginusername=$_SESSION['username'];

            echo "
            $('#profile').html('$loginusername');
            $('#logout').css('display','block');
            $('#profile').css('display','block');
            $('#login').css('display','none');";
          }
        ?>
        $("#head").click(function(){
          window.location.href="/miniproject/"
        });
        $("#search").click(function(){
            $("#modal-body").html("");
            var searchterm = $("#search_field").val();
            search(searchterm);
            });
          $("#Courses").click(function(){
            window.location.href="/miniproject/newcourses.php";
            });
          $("#login").click(function(){
            window.location.href="/miniproject/formpage.php";
            });

        $("#logout").click(function(){
        $(this).css('display','none');
        $("#profile").css('display','none');
        $("#login").css('display','block');
        window.location.href="/miniproject/logout.php";
        });
        $(".cards").click(function(){
        var name = $(this).data().name;
        window.location.href="/miniproject/videopage.php?s="+name+"";
      });

   });
   $(function(){
       $("#search_field").keyup(function(){

           var str = $(this).val();
           livesearch(str);
       });
   });
    </script>
    <?php
require_once('conn.php');
$conn = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$table = "courses";

$query = "SELECT * FROM `courses`";
$result = mysqli_query($conn,$query);
if(mysqli_num_rows($result) > 0){
  while($row = mysqli_fetch_assoc($result)){
     $issue="<script type=\"text/javascript\">
          $(function(){
          $('.xcontainer').append(\"<div data-name=\\\"".$row['Courses_Name']."\\\" class=\\\"cards w3-card-4\\\"><center><strong><p>".$row['Courses_Name']."</p></strong></center></div>\");
          });
          </script>";

    echo $issue;
  }
}
mysqli_close($conn);
?>
</head>
<body>

    <div class="container-fluid" style="height:100px; width=100%;">
        <div>
            <a href="/miniproject/"><h1 id="head" class="col-sm-12 col-lg-6" style="top:25%; height:40px; width=300px;"><strong><em>E-learning</strong></em></h1></a>
        </div>
        <div class="col-sm-12 col-lg-6" style="position:relative; top:25%; right:5%;">
            <button id="logout" type="button" style="margin-right:10px;margin-left:10px; float:right; display:none;" class="btn btn-lg btn-danger">Log Out</button>
            <a href="/miniproject/redirect.php"><button id="profile" type="button" style=" float:right; display:none;" class="btn btn-lg btn-warning">Profile</button></a>
            <button id="login" type="button" style=" float:right; " class="btn btn-lg btn-success">Login</button>
            <button id="Courses" type="button" style=" float:right; margin-right:10px " class="btn btn-lg btn-success">Courses</button>
        </div>
    </div>
    <div  class="" style="width:100%; height:400px">
        <img style="width:100%; height:400px" src="screen4.jpg">
        <div class="container" style="position:absolute; top:300px">
            <div class="row">

                <div class="col-sm-6 col-sm-offset-3">
                    <div id="imaginary_container">
                        <div class="input-group stylish-input-group">

                            <input id="search_field"  type="text" class="form-control" placeholder="Search" >
                            <span class="input-group-addon">
                                <button  type="submit" id="search" style="align:center;" data-toggle="modal" data-target="#myModal">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>

                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <p id="search-output"></p>
   <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Search Results</h4>
      </div>
      <div id="modal-body" class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<div class="slideshow-container">

<div class="mySlides">
  <q>C Programmers never die. They are just cast into Void</q>
  <p class="author">- Alan Perlis</p>
</div>

<div class="mySlides">
  <q>Java Developers never RIP. They just get Garbage Collected</q>
  <p class="author">- Anonymous</p>
</div>

<div class="mySlides">
  <q>C++ makes it harder, but when you do, it blows away your whole leg</q>
  <p class="author">- Bjarne Stroustrup</p>
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>

<div class="dot-container">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}

/* Slideshow container */
.slideshow-container {
  position: relative;
  background: #f1f1f1f1;
}

/* Slides */
.mySlides {
  display: none;
  padding: 80px;
  text-align: center;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -30px;
  padding: 16px;
  color: #888;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  position: absolute;
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
  color: white;
}

/* The dot/bullet/indicator container */
.dot-container {
    text-align: center;
    padding: 20px;
    background: #ddd;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

/* Add a background color to the active dot/circle */
.active, .dot:hover {
  background-color: #717171;
}

/* Add an italic font style to all quotes */
q {font-style: italic;}

/* Add a blue color to the author */
.author {color: cornflowerblue;}
</style>
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

    <div class="container xcontainer" style="position:relative;  height:400px;">
        <h3 align="center">Popular Courses</h3>
<style>
		body {margin:0;}

.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  bottom: 0;
  width: 100%;
}

.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #f1f1f1;
  color: black;
}

.navbar a.active {
  background-color: #4CAF50;
  color: white;
}

.main {
  padding: 16px;
  margin-bottom: 30px;
}
</style>

		<div class="navbar">
	<a href="\miniproject\sak_about.html"><button id="about" type="button" style=" float:right; display:none;" class="btn btn-lg btn-warning"></button>About</a>
	
	<a href="\miniproject\sak_contact.html"><button id="about" type="button" style=" float:right; display:none;" class="btn btn-lg btn-warning"></button>Contact</a>
	
	</div>
		
    </div>
    <div id="footer" style="position:relative; background-color:#A9A9A9; top:100px">
        <div class="container">
            <div class="row">
                <h3 class="footertext">About Us:</h3>
                <br>
                <div class="col-md-4">
                    <center>
                      <img src="http://oi60.tinypic.com/w8lycl.jpg" class="img-circle" alt="the-brains">
                      <br>
                      <h4 class="footertext">Sakshi</h4>
                  </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://oi60.tinypic.com/2z7enpc.jpg" class="img-circle" alt="...">
                  <br>
                  <h4 class="footertext">Nayak</h4>
              </center>
          </div>
          <div class="col-md-4">
            <center>
              <img src="http://oi61.tinypic.com/307n6ux.jpg" class="img-circle" alt="...">
              <br>
              <h4 class="footertext">Wahi</h4>
          </center>
      </div>
  </div>
  <div class="row">
    <p><center><p class="footertext">Copyright 2018</p></center></p>
</div>
</div>
</div>

<!-- /.container-fluid -->

</body>
</html>
