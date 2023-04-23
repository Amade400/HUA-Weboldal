<?php session_start();
include "munkamenet/kapcsolat.php";
include "munkamenet/lekerdez.php";
?>
<!doctype html>
<html lang="en">
  <head>
    <?php include "codes/headconstants.html"
    ?>
    <link rel="stylesheet" href="css/jarmuvek.css" type="text/css">
    <title>HUA - Repülők felvitele</title>
  </head>
<body class="bg-secondary">
<div class="justify-content-center mt-3">
    <div class="container-fluid rounded col-md-9 col-sm-12 bg-dark pb-3">
        <div class="header pt-3 text-center" id="labeltext">
                <h3>Repülő felvitele</h3>
        </div>
        <hr class="col-xs-12 bg-white my-3">
        <form>
            <div class="form-row">
                <div class="col-12 col-md-2 my-1">
                <select name="brek" id="br" class="form-control">
                    
                </select>
                        
                </div>
                <div class="col-12 col-md-4 my-1">
                <p id="talalat" hidden>Nincs ilyen repülő!</p>
                <select name="repcsi" id="repcsik" class="form-control">
                </select>
                </div>
                <div class="col-12 col-md-2 my-1">
                <select name="nemzetek" id="nemzet" class="form-control">
                    <?php
                        $query = "SELECT DISTINCT nemzet FROM jarmu";
                        $result = leker($query);
                        foreach($result as $row) :
                    ?>
                    <option value="<?php echo $row["nemzet"];?>"><?php echo $row["nemzet"];?></option>
                    <?php endforeach?>
                </select>
                </div>
                
                <div class="col col-md-2 my-1">
                    <button type="button" class="btn btn-primary btn-block" id="button">Megvan</button>
                </div>
                <div class="col col-md-2 my-1">
                    <button type="button" class="btn btn-danger btn-block" id="tovabb" title="Ha nincs egy repülőd se, kattints erre">Tovább</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="justify-content-center mx-auto mt-3">
<form method="POST">
    <div class="container-fluid rounded col-md-9 col-sm-12 bg-dark">                            
    <table class="table table-dark text-center" id="table" hidden>
        <thead>
            <tr>
            <th scope="col">Jármű</th>
            <th scope="col">Fullos</th>
            <th scope="col">Legénység szintje</th>
            <th scope="col">Eltávolít</th>
            </tr>
        </thead>
        <tbody id="tbody">
        </tbody>
    </table>
    <button type="button" class="btn btn-success w-100 mb-2" id="hajra" name="hajra" hidden>Felvitel</button>
    </div>
</form>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    <script src="js\jelentkezorepulo.js"></script>

</body>
</html>