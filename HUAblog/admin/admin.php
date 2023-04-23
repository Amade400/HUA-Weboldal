<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include "../codes/headconstants.html"
    ?>

    <link rel="stylesheet" href="../css/admin.css">
    <title>HUA - Admin</title>
</head>
<body class="bg-secondary vh-100">
    <div class="row text-white text-center">        
        <div class="col-2 bg-dark vh-100 p-0" id="baloldal">
        <div class="header">
            <a href="../index.php">
                <img src="../img/HUA_logo_150.png" alt="HUA logó" title="Vissza a főoldalra">
            </a>
            <h3>Üdv admin!</h3>
        </div>
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <div>
                    <hr class="col-xs-12 bg-white my-2">
                    <h5>Jelentkezők és klántagok</h5>
                    <hr class="col-xs-12 bg-white my-2">
                </div>            
                <a class="nav-link active" id="v-pills-jelentkezok-tab" data-toggle="pill" href="#v-pills-jelentkezok" role="tab" aria-controls="v-pills-jelentkezok" aria-selected="true">Jelentkezők listája</a>
                <a class="nav-link" id="v-pills-taglista-tab" data-toggle="pill" href="#v-pills-taglista" role="tab" aria-controls="v-pills-taglista" aria-selected="false">Taglista</a>
                <a class="nav-link" id="v-pills-taghozza-tab" data-toggle="pill" href="#v-pills-taghozza" role="tab" aria-controls="v-pills-taghozza" aria-selected="false">Tag hozzáadása</a>
                <div>
                    <hr class="col-xs-12 bg-white my-2">
                    <h5>Cikkek kezelése</h5>
                    <hr class="col-xs-12 bg-white my-2">
                </div>
                <a class="nav-link" id="v-pills-cikklista-tab" data-toggle="pill" href="#v-pills-cikklista" role="tab" aria-controls="v-pills-cikklista" aria-selected="false">Cikkek listája</a>

                <a class="nav-link" id="v-pills-cikkiras-tab" href="editor.php" >Cikk írása</a>
                <!--<a class="nav-link" id="v-pills-kepfelvitel-tab" data-toggle="pill" href="#v-pills-kepfelvitel" role="tab" aria-controls="v-pills-kepfelvitel" aria-selected="false">Képfelvitel a cikkekhez</a>-->
                <div>
                    <hr class="col-xs-12 bg-white my-2">
                    <h5>CW Járművek</h5>
                    <hr class="col-xs-12 bg-white my-2">
                </div>
                <a class="nav-link" id="v-pills-tanklista-tab" data-toggle="pill" href="#v-pills-tanklista" role="tab" aria-controls="v-pills-tanklista" aria-selected="false">Tankok listája</a>
                <a class="nav-link" id="v-pills-repcsilista-tab" data-toggle="pill" href="#v-pills-repcsilista" role="tab" aria-controls="v-pills-repcsilista" aria-selected="false">Repülők listája</a>
                <a class="nav-link" id="v-pills-jarmuhozza-tab" data-toggle="pill" href="#v-pills-jarmuhozza" role="tab" aria-controls="v-pills-jarmuhozza" aria-selected="false">Új jármű felvitele</a>
                <div>
                    <hr class="col-xs-12 bg-white my-2">
                </div>
                <a class="nav-link" id="v-pills-jarmuhozza-tab" href="../index.php">
                    Vissza a főoldalra
                </a>
            </div>
        </div>
        <div class="col-10" id="jobboldal">
            <div class="tab-content" id="v-pills-tabContent">
                
                <div class="tab-pane fade show active" id="v-pills-jelentkezok" role="tabpanel" aria-labelledby="v-pills-jelentkezok-tab">
                    <div class="justify-content-center mx-auto mt-3">
                        <form method="POST">
                            <div class="container-fluid rounded w-100 bg-dark">
                            <p id="nincsjelentkezo">Nincs egy jelentkező sem!</p>
                            <table class="table table-dark text-center" id="jelentkezotable" hidden>
                                <thead>
                                    <tr>
                                    <th scope="col" class="align-middle">Jelentkező neve</th>
                                    <th scope="col" class="align-middle">Csatáinak száma</th>
                                    <th scope="col" class="align-middle">Legjátszottabb játékmódja</th>
                                    <th scope="col" class="align-middle">Legjátszottabb hadszíntere</th>
                                    <th scope="col" class="align-middle">Volt már klánban</th>
                                    <th scope="col" class="align-middle">Részletek</th>
                                    <th scope="col" class="align-middle">Törlés</th>
                                    </tr>
                                </thead>
                                <tbody id="jelentkezotbody">

                                </tbody>
                            </table>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="tab-pane fade" id="v-pills-taglista" role="tabpanel" aria-labelledby="v-pills-taglista-tab">
                    <div class="justify-content-center mx-auto mt-3  w-100 ">
                        <form method="POST">
                            <div class="container-fluid rounded  w-100  bg-dark">
                            <p id="nincstag">Nincs egy tag sem!</p>
                            <table class="table table-dark text-center" id="tagtable" hidden>
                                <thead>
                                    <tr>
                                    <th scope="col" class="align-middle">#</th>
                                    <th scope="col" class="align-middle">Tag felhasználóneve</th>
                                    <th scope="col" class="align-middle">Tag emailje</th>
                                    <th scope="col" class="align-middle">Részletek</th>
                                    <th scope="col" class="align-middle">Módosítás</th>
                                    <th scope="col" class="align-middle">Törlés</th>
                                    </tr>
                                </thead>
                                <tbody id="tagtbody">

                                </tbody>
                            </table>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="tab-pane fade" id="v-pills-taghozza" role="tabpanel" aria-labelledby="v-pills-taghozza-tab">
                    <div class="vertical-center justify-content-center">
                        <div class="container-fluid rounded bg-dark col-9">
                        <div class="header pt-3 text-center" id="labeltext">
                            <h3>Tag létrehozása</h3>
                        </div>
                        <hr class="col-xs-12 bg-white my-3">
                        <form class="mb-3 text-left">
                            <div class="form-group">
                                <label for="felh">Tag játékosneve</label>
                                <input type="text" name="felh" id="felh" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="email">Tag e-mailje</label>
                                <input type="email" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="pass1">Tag jelszava</label>
                                <input type="password" name="pass1" id="pass1" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="pass2">Tag jelszava ismét</label>
                                <input type="password" name="pass2" id="pass2" class="form-control">
                            </div>
                            <small class="text-danger" id="nemjojelszo" hidden>A két jelszó nem egyezik</small>
                            <small class="text-danger" id="nemjofelh" hidden>A játékosnév már létezik</small>
                            <small class="text-danger" id="nemjoemail" hidden>Az email már létezik</small>
                            <small class="text-danger" id="nemjomezok" hidden>Töltse ki mindegyik mezőt!</small>
                            <small class="text-success" id="sikeres" hidden>Sikeres felvitel!</small><br>
                            <button class="btn btn-danger" type="button" id="tagFelvitelMezoTorles">Mezők kiürítése</button>
                            <button class="btn btn-success" type="button" id="tagFelvitelHajra">Tag hozzáadása</button>
                        </form>
                        </div>
                    </div>
                </div>

                <div class="tab-pane fade" id="v-pills-cikklista" role="tabpanel" aria-labelledby="v-pills-cikklista-tab">
                <div class="justify-content-center mx-auto mt-3">
                        <form method="POST">
                            <div class="container-fluid rounded col-md-12 col-sm-12 bg-dark  w-100">
                            <p id="nincscikk">Nincs egy cikk sem!</p>
                            <table class="table table-dark text-center" id="cikktable" hidden>
                                <thead>
                                    <tr>
                                    <th scope="col" class="align-middle">#</th>
                                    <th scope="col" class="align-middle">Cím</th>
                                    <th scope="col" class="align-middle">Leírás</th>
                                    <th scope="col" class="align-middle">Létrehozás dátuma</th>
                                    <th scope="col" class="align-middle">Megtekintés</th>
                                    <th scope="col" class="align-middle">Törlés</th>
                                    </tr>
                                </thead>
                                <tbody id="cikktbody">

                                </tbody>
                            </table>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="tab-pane fade" id="v-pills-kepfelvitel" role="tabpanel" aria-labelledby="v-pills-kepfelvitel-tab">
                    Képfelvitel
                </div>

                <div class="tab-pane fade" id="v-pills-tanklista" role="tabpanel" aria-labelledby="v-pills-tanklista-tab">
                    <div class="justify-content-center mx-auto mt-3">
                        <form method="POST">
                            <div class="container-fluid rounded  w-100  bg-dark">
                            <p id="nincstank">Nincs egy tank sem!</p>
                            <table class="table table-dark text-center" id="tankoktable" hidden>
                                <thead>
                                    <tr>
                                    <th scope="col" class="align-middle">#</th>
                                    <th scope="col" class="align-middle">Név</th>
                                    <th scope="col" class="align-middle">BR</th>
                                    <th scope="col" class="align-middle">Nemzet</th>
                                    <th scope="col" class="align-middle">Módosítás</th>
                                    <th scope="col" class="align-middle">Törlés</th>
                                    </tr>
                                </thead>
                                <tbody id="tankoktbody">

                                </tbody>
                            </table>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="tab-pane fade" id="v-pills-repcsilista" role="tabpanel" aria-labelledby="v-pills-repcsilista-tab">
                    <div class="justify-content-center mx-auto mt-3">
                        <form method="POST">
                            <div class="container-fluid rounded  w-100 bg-dark">
                            <p id="nincsrepcsi">Nincs egy repcsi sem!</p>
                            <table class="table table-dark text-center" id="repcsiktable" hidden>
                                <thead>
                                    <tr>
                                    <th scope="col" class="align-middle">#</th>
                                    <th scope="col" class="align-middle">Név</th>
                                    <th scope="col" class="align-middle">BR</th>
                                    <th scope="col" class="align-middle">Nemzet</th>
                                    <th scope="col" class="align-middle">Módosítás</th>
                                    <th scope="col" class="align-middle">Törlés</th>
                                    </tr>
                                </thead>
                                <tbody id="repcsiktbody">

                                </tbody>
                            </table>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="tab-pane fade" id="v-pills-jarmuhozza" role="tabpanel" aria-labelledby="v-pills-jarmuhozza-tab">
                <div class="vertical-center justify-content-center">
                        <div class="container-fluid rounded bg-dark col-9">
                        <div class="header pt-3 text-center" id="labeltext">
                            <h3>Jármű létrehozása</h3>
                        </div>
                        <hr class="col-xs-12 bg-white my-3">
                        <form class="mb-3 text-left">
                            <div class="form-group">
                                <label for="nev">Jármű neve</label>
                                <input type="text" name="nev" id="jarmuNevFelvitel" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="jarmuBRFelvitel">BR: </label>
                                <select name="jarmuBRFelvitel" id="jarmuBRFelvitel" class="form-control">
                                    <option value="1.0">1.0</option>
                                    <option value="1.3">1.3</option>
                                    <option value="1.7">1.7</option>
                                    <option value="2.0">2.0</option>
                                    <option value="2.3">2.3</option>
                                    <option value="2.7">2.7</option>
                                    <option value="3.0">3.0</option>
                                    <option value="3.3">3.3</option>
                                    <option value="3.7">3.7</option>
                                    <option value="4.0">4.0</option>
                                    <option value="4.3">4.3</option>
                                    <option value="4.7">4.7</option>
                                    <option value="5.0">5.0</option>
                                    <option value="5.3">5.3</option>
                                    <option value="5.7">5.7</option>
                                    <option value="6.0">6.0</option>
                                    <option value="6.3">6.3</option>
                                    <option value="6.7">6.7</option>
                                    <option value="7.0">7.0</option>
                                    <option value="7.3">7.3</option>
                                    <option value="7.7">7.7</option>
                                    <option value="8.0">8.0</option>
                                    <option value="8.3">8.3</option>
                                    <option value="8.7">8.7</option>
                                    <option value="9.0">9.0</option>
                                    <option value="9.3">9.3</option>
                                    <option value="9.7">9.7</option>
                                    <option value="10.0">10.0</option>
                                    <option value="103">10.3</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="jarmuNemzetFelvitel">Nemzet:</label>
                                <select name="jarmuNemzetFelvitel" id="jarmuNemzetFelvitel" class="form-control">
                                <option value="GER">Németország</option>
                                <option value="RUS">Szovjetunió</option>
                                <option value="USA">Egyesült Államok</option>
                                <option value="FRA">Franciaország</option>
                                <option value="JAP">Japán</option>
                                <option value="GBR">Nagy Britannia</option>
                                <option value="ITA">Olaszország</option>
                                <option value="CHN">Kína</option>
                                <option value="SWE">Svédország</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="jarmutipus">Típus:</label>
                                <select name="jarmutipus" id="jarmutipus" class="form-control">
                            <option value="G">Földi</option>
                            <option value="A">Légi</option>
                                </select>
                            </div>
                            <small class="text-danger" id="Jarmunemjomezok" hidden>Töltse ki mindegyik mezőt!</small>
                            <small class="text-danger" id="Jarmuvanmar" hidden>Ez a jármű már szerepel az adatbázisban! Ha BR-t szeretne változtatni a módosítás gombokkal teheti meg!</small>
                            <small class="text-success" id="Jarmusikeres" hidden>Sikeres felvitel!</small><br>
                            <button class="btn btn-danger" type="button" id="jarmuFelvitelMezoTorles">Mezők kiürítése</button>
                            <button class="btn btn-success" type="button" id="jarmuFelvitelHajra">Jármű hozzáadása</button>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" tabindex="-1" role="dialog" id="jelentkezoreszletek">
        <div class="modal-dialog" role="document">
            <div class="modal-content bg-dark text-white">
            <div class="modal-header">
                <h5 class="modal-title" id="jelentkezoTitle"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul>
                    <li id="jelentkezoCsataszam"></li>
                    <li id="jelentkezoJatekmod"></li>
                    <li id="jelentkezoHadszin"></li>
                    <li id="jelentkezoVolte"></li>
                </ul>
                <hr class="col-xs-12 bg-white my-2">
                <h5>Járművei:</h5>
                <ul id="jelentkezoJarmuvei">
                    
                </ul>
            </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Bezárás</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="tagreszletek">
        <div class="modal-dialog" role="document">
            <div class="modal-content bg-dark text-white">
            <div class="modal-header">
                <h5 class="modal-title" id="tagTitle"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="tagEmail"></p>
                <hr class="col-xs-12 bg-white my-2">
                
            </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Bezárás</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="tagmodositas">
        <div class="modal-dialog" role="document">
            <div class="modal-content bg-dark text-white">
            <div class="modal-header">
                <h5 class="modal-title" id="tagTitle">Módosítás</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST">
                    <div class="form-group">
                        <label for="tagFelhMod">A tag játékosneve</label>
                        <input type="text" class="form-control" name="tagFelhMod" id="tagFelhMod" value="">
                    </div>
                    <div class="form-group">
                        <label for="tagEmailMod">A tag e-mailje</label>
                        <input type="email" class="form-control" name="tagEmailMod" id="tagEmailMod" value="" disabled>
                        <small class="text-danger">Biztonsági okok miatt az e-mail megváltoztatására nincs lehetőség!</small>
                    </div>
                </form>
                <small class="text-success" id="tagModositDone" hidden>Sikeres mentés, bezárhatja ezt az ablakot</small>
            </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" id="modositasMentes">Mentés</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal" id="modositasBezaras">Bezárás</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="cikkreszletek">
        <div class="modal-dialog" role="document">
            <div class="modal-content bg-dark text-white">
            <div class="modal-header">
                <h5 class="modal-title" id="CikkTitle"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="cikkLeiras"></p>
                <p id="datum">Létrehozás dátuma: </p>
                <hr class="col-xs-12 bg-white my-2">
                <div class="container-fluid" id="szoveg">
                
                </div>
            </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Bezárás</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="jarmumodositas">
        <div class="modal-dialog" role="document">
            <div class="modal-content bg-dark text-white">
            <div class="modal-header">
                <h5 class="modal-title" id="">Módosítás</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST">
                    <p hidden id="azonide"></p>
                    <div class="form-group">
                        <label for="jarmuNev">Jármű neve</label>
                        <input type="text" class="form-control" name="jarmuNev" id="jarmuNev" value="">
                    </div>
                    <div class="form-group">
                        <label for="jarmuBR">BR: </label>
                        <select name="jarmuBR" id="jarmuBR" class="form-control">
                            <option value="1.0">1.0</option>
                            <option value="1.3">1.3</option>
                            <option value="1.7">1.7</option>
                            <option value="2.0">2.0</option>
                            <option value="2.3">2.3</option>
                            <option value="2.7">2.7</option>
                            <option value="3.0">3.0</option>
                            <option value="3.3">3.3</option>
                            <option value="3.7">3.7</option>
                            <option value="4.0">4.0</option>
                            <option value="4.3">4.3</option>
                            <option value="4.7">4.7</option>
                            <option value="5.0">5.0</option>
                            <option value="5.3">5.3</option>
                            <option value="5.7">5.7</option>
                            <option value="6.0">6.0</option>
                            <option value="6.3">6.3</option>
                            <option value="6.7">6.7</option>
                            <option value="7.0">7.0</option>
                            <option value="7.3">7.3</option>
                            <option value="7.7">7.7</option>
                            <option value="8.0">8.0</option>
                            <option value="8.3">8.3</option>
                            <option value="8.7">8.7</option>
                            <option value="9.0">9.0</option>
                            <option value="9.3">9.3</option>
                            <option value="9.7">9.7</option>
                            <option value="10.0">10.0</option>
                            <option value="103">10.3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="jarmuNemzet">Nemzet:</label>
                        <select name="jarmunemzet" id="jarmunemzet" class="form-control">
                            <option value="GER">Németország</option>
                            <option value="RUS">Szovjetunió</option>
                            <option value="USA">Egyesült Államok</option>
                            <option value="FRA">Franciaország</option>
                            <option value="JAP">Japán</option>
                            <option value="GBR">Nagy Britannia</option>
                            <option value="ITA">Olaszország</option>
                            <option value="CHN">Kína</option>
                            <option value="SWE">Svédország</option>
                        </select>
                    </div>
                </form>
                <small class="text-success" id="jarmuModositDone" hidden>Sikeres mentés, bezárhatja ezt az ablakot</small>
            </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" id="jarmuModositasMentes">Mentés</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal" id="jarmuModositasBezaras">Bezárás</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


    <script src="../js/admin.js"></script>
</body>
</html>