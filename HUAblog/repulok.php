<?php session_start();?>
<!doctype html>
<html lang="en">
  <head>
  <?php include "codes/headconstants.html"?>

    <link rel="stylesheet" href="css/index.css" type="text/css">

    <title>Repülők</title>
  </head>
<body class="bg-secondary">
<table class="table table-striped w-75 mx-auto">
  <thead class="thead-dark">
    <tr>
      <th scope="col">BR</th>
      <th scope="col">Név</th>
      <th scope="col">Megvan</th>
      <th scope="col">Fullos</th>
      <th scope="col">Legénység szintje</th>
      <th scope="col">Nemzet</th>
    </tr>
  </thead>
  <tbody>
  <?php 
    include "munkamenet/kapcsolat.php";

    $lekerdezes = "SELECT azon, br, nev, nemzet FROM jarmu WHERE tipus = 'A'";
    include "munkamenet/lekerdez.php";
    $eredmeny = leker($lekerdezes);

    foreach($eredmeny as $row){

  ?>
    <tr>
      <td><?php echo $row["br"]?></th>
      <td><?php echo $row["nev"]?></td>
      <td><input type="checkbox" name="megvan" id="<?php echo $row["azon"]?>"></td>
      <td><input type="checkbox" name="fullos" id="<?php echo $row["azon"]?>" disabled></td>
      <td><input type="number" name="szint" id="<?php echo $row["azon"]?>" disabled min="1" max="75" value="1"></td>
      <td><?php echo $row["nemzet"]?></td>
    </tr>
  </tbody>
  
    <?php }?>
</table>

</body>
</html>
