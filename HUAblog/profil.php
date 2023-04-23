<?php session_start();?>
<p id="session" hidden><?php echo $_SESSION["id"][0];?></p>
<!doctype html>
<html lang="en">
  <head>
    <?php include "codes/headconstants.html"
    ?>
    <link rel="stylesheet" href="css/profil.css" type="text/css">
    <title>HUA - Profil</title>
  </head>
<body class="bg-secondary">
<div class="row text-white text-center">              
  <div class="col-2 bg-dark vh-100" id="baloldal">
    <div class="header">
                <a href="index.php">
                    <img src="img/HUA_logo_150.png" alt="HUA logó" title="Vissza a főoldalra">
                </a>
                <h3 id="felhnev"></h3>
    </div>
      <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <a class="nav-link active" id="v-pills-profil-tab" data-toggle="pill" href="#v-pills-profil" role="tab" aria-controls="v-pills-profil" aria-selected="true">Profilom</a>
        <!--<a class="nav-link" id="v-pills-jarmuvek-tab" data-toggle="pill" href="#v-pills-jarmuvek" role="tab" aria-controls="v-pills-jarmuvek" aria-selected="false">Járműveim</a>
        <a class="nav-link" id="v-pills-jarmuhozza-tab" href="klantagrepcsik.php">Jármű hozzáadása</a>-->
        <a class="nav-link" id="v-pills-jarmuhozza-tab" href="index.php">
          Vissza a főoldalra
        </a>
      </div>
  </div>
  <div class="col-10" id="jobboldal">
      <div class="tab-content" id="v-pills-tabContent">
        <div class="tab-pane fade show active" id="v-pills-profil" role="tabpanel" aria-labelledby="v-pills-profil-tab">
        <div class="vertical-center justify-content-center">
          <div class="container-fluid rounded bg-dark col-9">
          <div class="header pt-3 text-center" id="labeltext">
              <h3>Profil szerkesztése</h3>
          </div>
          <hr class="col-xs-12 bg-white my-3">
          <form class="mb-3 text-left">
              <div class="form-group">
                  <label for="felh">Játékosnév</label>
                  <input type="text" name="felh" id="felh" class="form-control">
              </div>
              <div class="form-group">
                  <label for="email">E-mail</label>
                  <input type="email" name="email" id="email" class="form-control" disabled>
                  <small class="text-danger">Biztonsági okok miatt az e-mail változtatására nincs lehetőség!</small>
              </div>
              <small class="text-danger" id="nemjofelh" hidden>A játékosnév már létezik</small>
              <small class="text-danger" id="nemjoemail" hidden>Az email már létezik</small>
              <small class="text-danger" id="nemjomezok" hidden>Töltse ki mindegyik mezőt!</small>
              <small class="text-success" id="sikeres" hidden>Sikeres felvitel!</small><br>              
              <button class="btn btn-success" type="button" id="adatFrissites">Adatok frissítése</button>




              <hr class="col-xs-12 bg-white my-3">
              <div class="header pt-3 text-center" id="labeltext">
                <h3>Új jelszó</h3>
              </div>
              <hr class="col-xs-12 bg-white my-3">
              <div class="form-group">
                  <label for="oldpass">Régi jelszó</label>
                  <input type="password" name="oldpass" id="oldpass" class="form-control">
              </div>
              <div class="form-group">
                  <label for="pass1">Új jelszó</label>
                  <input type="password" name="pass1" id="pass1" class="form-control">
              </div>
              <div class="form-group">
                  <label for="pass2">Új jelszó ismét</label>
                  <input type="password" name="pass2" id="pass2" class="form-control">
              </div>
              <small class="text-danger" id="nemegyezojelszavak" hidden>A két jelszó nem egyezik</small>
              <small class="text-danger" id="nemjojelszo" hidden>A megadott régi jelszó nem megfelelő!</small>
              <small class="text-danger" id="nemjomezokjelszonal" hidden>Töltse ki mindegyik mezőt!</small>
              <small class="text-success" id="sikeresjelszonal" hidden>Sikeres jelszómódosítás!</small><br>
              <button class="btn btn-danger" type="button" id="jelszoMezoTorles">Mezők kiürítése</button>
              <button class="btn btn-success" type="button" id="jelszoFelvitelHajra">Jelszó frissítése</button>
          </form>
          </div>
      </div>
        </div>
        <!--<div class="tab-pane fade" id="v-pills-jarmuvek" role="tabpanel" aria-labelledby="v-pills-jarmuvek-tab">
        <div class="container-fluid rounded col-md-9 col-sm-12 bg-dark">
          <p id="nincstank">Nincs egy tank sem!</p>
          <table class="table table-dark text-center" id="tankoktable" hidden>
              <thead>
                  <tr>
                  <th scope="col" class="align-middle">#</th>
                  <th scope="col" class="align-middle">Név</th>
                  <th scope="col" class="align-middle">BR</th>
                  <th scope="col" class="align-middle">Nemzet</th>
                  <th scope="col" class="align-middle">Törlés</th>
                  </tr>
              </thead>
              <tbody id="tankoktbody">

              </tbody>
          </table>
          </div>
        </div>
        <div class="tab-pane fade" id="v-pills-jarmuhozza" role="tabpanel" aria-labelledby="v-pills-jarmuhozza-tab">Jármű hozzáadása</div>-->
      </div>
    </div>
  </div>

  
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="js/profil.js"></script>
</body>
</html>