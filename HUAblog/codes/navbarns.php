<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.php">
            <img src="img/HUA_logosmall.png" width="30" height="30" alt="Kezdőlapra">
          </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="index.php">Kezdőlap <span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="rolunk.php">Rólunk</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="jelentkezes.php">Jelentkezés</a>
            </li>
          </ul>
          <?php if(!isset($_SESSION["id"])): ?>
        <div class="nav-item mr-1" id="login">
          <a class="btn btn-sm btn-outline-secondary " href="login.php" role="button" title="Jelentkezz be, vagy ha nincs fiókod, regisztrálj!">Bejelentkezés</a>
        </div>
        <!-- Csak bejelentkezve látható -->
        <?php else:?>
        <div class="btn-group">
          <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Profil
          </button>
          <div class="dropdown-menu dropdown-menu-right">
            <a class="dropdown-item" href="#">Profilom</a>
            <a class="dropdown-item" href="#">Járműveim</a>
            <a class="dropdown-item" href="munkamenet/kijelentkezes.php">
              Kijelentkezés
            </a>
          </div>
        </div>
        </div>
        <?php endif;?>
    </nav>