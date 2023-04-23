<!doctype html>
<html lang="en">
  <head>
  <?php include "codes/headconstants.html"?>

    <link rel="stylesheet" href="css/reglogin.css" type="text/css">

    <title>Bejelentkezés</title>
  </head>
<body class="bg-secondary">
    <!-- NAVBAR -->
    <?php include "codes/navbar.php"?>
    <!-- NAVBAR END-->
<div class="vertical-center justify-content-center">
    <div class="container-fluid rounded col-md-6 col-sm-9 bg-dark">
        <div class="header pt-3 text-center" id="labeltext">
                <h3>Bejelentkezés</h3>
        </div>
        <span class="text-danger">A bejelentkezés csak klántagok számára elérhető el!</span>
        <hr class="col-xs-12 bg-white my-3">
        
        <!-- FORM KEZDETE-->
        
        <form method="POST" action="munkamenet/loginfeldolgoz.php">
            <div class="form-group">
                <label>Felhasználónév</label>
                <input type="text" class="form-control" name="fnev" id="fnev" placeholder="Felhasználónév" required>
            </div>
            <div class="form-group">
                <label for="jelszo">Jelszó</label>
                <input type="password" class="form-control" name="jelszo" id="jelszo" placeholder="Jelszó" required>
            </div>
            <small class="text-danger" id="nouser" hidden>Nincs ilyen felhasználó</small>
            <small class="text-danger" id="badpass" hidden>Rossz jelszó</small>
            <small class="text-success" id="loggedin" hidden>Bejelentkezés</small>
            <br>
            <button type="submit" class="btn btn-primary" id="bejelentkez">Bejelentkezés</button>
                <div class="footer my-2">
                    <!--<small><p href="reg.php" title="Ez a funkció jelenleg nem elérhető">Nincs még fiókod? Regisztrálj!</p></small>-->
                </div>
        </form>
    </div>
</div>


</body>
</html>
        
