<!doctype html>
<html lang="en">
  <head>
  <?php include "../codes/headconstants.html"?>

  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="./egyeb/Rich-Text-Editor-jQuery-RichText/src/richtext.min.css">
  <title>HUA - Cikkíró</title>
  </head>
<body class="bg-dark">
  <h1 class="text-center my-3" style="color: white!important;">Cikk írása</h1>
<div class="container-fluid w-50 justify-content-center">
  <form>
  <div class="form-group">
      <label for="cim" style="color: white!important;">Cikk címe</label>
      <input type="text" class="form-control" name="cim" id="cim" value="" style="background-color: #232323!important; 
    color: white!important;" placeholder="Max 32 karakter">
  </div>
  <div class="form-group">
      <label for="leiras" style="color: white!important;">Rövid leírás</label>
      <input type="text" class="form-control" name="leiras" id="leiras" value="" style="background-color: #232323!important; 
    color: white!important;" placeholder="Max 128 karakter">
  </div>
  </form>
</div>
  <div class="container-fluid w-75">
    <textarea class="content" id="cikk" name="example"></textarea>
  </div>

  <div class="container-fluid w-75 mt-5">
  <small class="text-success" id="sikeres" hidden>Sikeres felvitel</small>
  <small class="text-danger" id="uresmezok" hidden>Üres mezők!</small>
    <div class="row">
      <div class="col-6 text-center">
        <button class="btn btn-success w-50" id="hajra">Cikk létrehozása</button>
      </div>
      <div class="col-6 text-center">
      <button class="btn btn-danger w-50" id="vissza">Vissza az admin felületre</button>
      </div>
    </div>
  </div>
  <script src="..\js\jquery-3.4.1.min.js"></script>
  <script src=".\egyeb\Rich-Text-Editor-jQuery-RichText\src\jquery.richtext.min.js"></script>
  <script src="../js/texteditorcaller.js"></script>
  <script src="../js/editor.js"></script>
  <script>
  document.getElementById("headerimg").setAttribute("href","../img/HUA_logosmall.png");
  </script>
  
</body>
</html>