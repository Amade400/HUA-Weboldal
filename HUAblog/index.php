<?php session_start();?>
<!doctype html>
<html lang="en">
  <head>
    <?php include "codes/headconstants.html"
    ?>
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <title>Hungarian United Army</title>
  </head>
<body class="bg-secondary">

    <div class="bg shadow"><!--Ebben van a háttér--></div>
    <?php
    
    include "codes/navbar.php";
    ?>

    <main class="container-fluid bg-dark mx-auto col-lg-8 col-12 pt-3" id="MainContent">
        <!--CAROUSEL-->
      <?php include "codes/carousel.html"?>
        <!--CONTENT-->
        <h1 class="text-white ml-3">Hírek</h1>
        <div class="container-fluid" id="ide">
          
        </div>
        <!--END CONTENT-->
        <!--FOOTER-->
        <div class="row text-right mt-3" id="footer">
          <div class="col col-3 pl-10 my-auto text-center">
           <p class="font-weight-bold">© 2020 - HUA</p>
          </div>
          <div class="col col-9 text-center">
            <a class="text-decoration-none" href="https://wtinfo.hu/2018/04/01/klanshow-bemutatkozik-a-hua-szazad/" target=_blank>
              <img class="img-fluid" src="img/wtinfologo.png" alt="WTInfo-logo" id="socialpic" title="Olvasd el a WT Info-s bemutatkozónkat!">
            </a>
            <a class="text-decoration-none" href="https://www.facebook.com/HungarianUnitedArmy/" target=_blank>
              <img class="img-fluid" src="img/fblogo.png" alt="Facebook-logo" id="socialpic" title="Látogasd meg a Facebook oldalunkat!">
            </a>
            <a class="text-decoration-none" href="https://warthunder.com/en" target=_blank>
              <img class="img-fluid" src="img/WTlogo.png" alt="Warthunder-logo" id="socialpic" title="Játssz a játékkal!">
            </a>
          </div>
        </div>
    </main>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script src="js/index.js"></script>
</body>
</html>