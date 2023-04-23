<!doctype html>
<html lang="en">
  <head>
  <?php include "codes/headconstants.html"?>

    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./egyeb/Rich-Text-Editor-jQuery-RichText/src/richtext.min.css">

    <title>HUA - Rólunk</title>
  </head>
<body class="bg-dark">
    <!-- NAVBAR -->
    <?php include "codes/navbarns.php"?>
    <!-- NAVBAR END-->

    <div class="container-fluid w-75">
        <textarea class="content" id="cikk" name="example"></textarea>
    </div>
    
    <button id="send">Valami</button>


    <script src="./js/jquery-3.4.1.min.js"></script>
    <script src="./egyeb/Rich-Text-Editor-jQuery-RichText/src/jquery.richtext.min.js"></script>
    <script src="./js/texteditorcaller.js"></script>
</body>
</html>