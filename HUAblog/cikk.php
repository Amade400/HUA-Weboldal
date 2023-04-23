<?php session_start();?>
<!doctype html>
<html lang="en">
  <head>
    <?php include "codes/headconstants.html"
    ?>
    <link rel="stylesheet" href="css/cikk.css" type="text/css">
    <title>Hungarian United Army</title>
  </head>
<body class="bg-secondary">
  <div class="bg shadow"><!--Ebben van a háttér--></div>
    <?php
    include "codes/navbar.php";
    ?>


<div class="container bg-dark vh-100 pb-5 pt-2 mt-3 px-5 rounded" id="content">
    <h2 id="cim">

    </h2>
    <h4 id="leiras">

    </h4>
    <p id="szoveg">

    </p>

    <div id="buttonholder">
      <a href="index.php" class="btn btn-secondary">Vissza a főoldalra</a>
    </div>
</div>
<script src="js/cikk.js"></script>