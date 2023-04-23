<?php 
session_start();
$teljesUrl = $_SERVER["REQUEST_URI"];
$url= explode("/",$teljesUrl);
$adatok = trim(file_get_contents("php://input"));
$adatPost = json_decode($adatok,true);
//$sessionid = $_SESSION["id"];

isset($_GET["id"]) ? $id = $_GET["id"] : $id = 0;

include "../munkamenet/kapcsolat.php";

    //SQL lekérdezések végrehajtása:

    function leker($muvelet){
		global $db, $nev;
			$eredmeny = $db->query($muvelet) or die($db->error);
			if ($eredmeny->num_rows != 0) {
				while ( $i = $eredmeny->fetch_assoc())  {
						$adatok[]=$i;
				}
				//print_r($adatok);
				echo json_encode($adatok,JSON_UNESCAPED_UNICODE);
				}
			else {
				echo "NINCS TALÁLAT";
			}
    }

    function felvitel($muvelet) {
        global $db;
        $db->query($muvelet) or die($db->error);
    }

    //Egyes kérések kiszolgálása:
    switch (end($url)) {
		#region Járműfelvitel
		case "repcsikLe":
		{
			$adatok = "SELECT azon,nev FROM jarmu WHERE
			nemzet = '{$adatPost["nemzet"]}' AND br = '{$adatPost["br"]}' AND tipus = 'A'";
			leker($adatok);
			break;
		}
		case "repcsibrekLe":
		{
			$adatok = "SELECT DISTINCT br FROM jarmu WHERE
			nemzet = '{$adatPost["nemzet"]}' AND tipus = 'A'";
			leker($adatok);
			break;
		}
		
		case "tankokLe":
		{
			$adatok = "SELECT azon,nev FROM jarmu WHERE
			nemzet = '{$adatPost["nemzet"]}' AND br = '{$adatPost["br"]}' AND tipus = 'G'";
			leker($adatok);
			break;
		}
		case "tankbrekLe":
		{
			$adatok = "SELECT DISTINCT br FROM jarmu WHERE
			nemzet = '{$adatPost["nemzet"]}' AND tipus = 'G'";
			leker($adatok);
			break;
		}

		case "KlantagBirtoklasFel":
		{
			$adatok = "INSERT INTO klantagbirtokol (klantag_azon, jarmu_azon, legenyseg_szint, fullose) VALUES
			('{$_SESSION["id"]}','{$adatPost["jarmu"]}','{$adatPost["legenyseg"]}','{$adatPost["fullose"]}')";
			$db->query($adatok) or die($db->error);
			break;
		}

		case "JelentkezoBirtoklasFel":
		{
			$adatok = "INSERT INTO jelentkezobirtokol (jatekos_azon, jarmu_azon, legenyseg_szint, fullose) VALUES
			('{$_SESSION["id"]}','{$adatPost["jarmu"]}','{$adatPost["legenyseg"]}','{$adatPost["fullose"]}')";
			$db->query($adatok) or die($db->error);
			break;
		}
		#endregion
		#region Jelentkezők ADMIN
		case "JelentkezokLekerese":
		{
			$adatok = "SELECT azon, jatekosnev, csatak_szama, jatekmod, hadszin, volte_klanban FROM jelentkezo";
			leker($adatok);
			break;
		}
		case "EgyJelentkezoLekerese":
		{
			$adatok = "SELECT azon, jatekosnev, csatak_szama, jatekmod, hadszin, volte_klanban FROM jelentkezo WHERE azon = '{$adatPost["azon"]}'";
			leker($adatok);
			break;
		}
		case "JelentkezoJarmuveiLekerese":
		{
			$adatok = "SELECT jarmu.nev as nev, legenyseg_szint as legenyseg, fullose, tipus FROM jarmu INNER JOIN jelentkezobirtokol ON jarmu.azon = jelentkezobirtokol.jarmu_azon WHERE jatekos_azon = '{$adatPost["azon"]}'";
			leker($adatok);
			break;
		}
		case "JelentkezoTorlese":
		{
			$adatok = "DELETE FROM jelentkezo WHERE azon = '{$adatPost["azon"]}'";
			$db->query($adatok) or die($db->error);
			break;
		}
		#endregion
		#region Tagok ADMIN
		case "TagokLekerese":
		{
			$adatok = "SELECT azon, felh, email FROM felhasznalo";
			leker($adatok);
			break;
		}
		case "EgyTagLekerese":
		{
			$adatok = "SELECT azon, felh, email FROM felhasznalo WHERE azon = '{$adatPost["azon"]}'";
			leker($adatok);
			break;
		}
		case "TagModositasa":
		{
			$adatok = "UPDATE felhasznalo SET felh =  '{$adatPost["felh"]}', email = '{$adatPost["email"]}' WHERE azon = '{$adatPost["azon"]}'";
			$db->query($adatok) or die($db->error);
			break;
		}
		case "TagTorlese":
		{
			$adatok = "DELETE FROM felhasznalo WHERE azon = '{$adatPost["azon"]}'";
			$db->query($adatok) or die($db->error);
			break;
		}
		case "TagFelh":
		{
			$adatok = "SELECT felh FROM felhasznalo WHERE felh = '{$adatPost["felh"]}'";
			leker($adatok);
			break;
		}
		case "TagEmail":
		{
			$adatok = "SELECT email FROM felhasznalo WHERE email = '{$adatPost["email"]}'";
			leker($adatok);
			break;
		}
		case "TagFelvitel":
		{
			$adatok = "INSERT INTO felhasznalo (felh, passwd, email)
			VALUES ('{$adatPost["felh"]}','".hash("sha256",$adatPost["passwd"])."','{$adatPost["email"]}')";
			$db->query($adatok) or die($db->error);
			break;
		}
		#endregion
		#region Cikkek ADMIN
		case "CikkekLekerese":
		{
			$adatok = "SELECT azon, cim, leiras, datum FROM cikk ORDER BY azon DESC";
			leker($adatok);
			break;
		}
		case "EgyCikkLekerese":
		{
			$adatok = "SELECT azon, cim, leiras, szoveg, datum FROM cikk WHERE azon = '{$adatPost["azon"]}' ";
			leker($adatok);
			break;
		}
		case "CikkFelvitele":
		{
			$adatok = "INSERT INTO cikk(cim,leiras,szoveg,datum)
			VALUES ('{$adatPost["cim"]}','{$adatPost["leiras"]}',
			'{$adatPost["szoveg"]}','{$adatPost["datum"]}')";
			felvitel($adatok);
			break;
		}
		case "CikkTorlese":
		{
			$adatok = "DELETE FROM cikk WHERE azon = '{$adatPost["azon"]}'";
			felvitel($adatok);
			break;
		}
		#endregion
		#region Járművek ADMIN
		case "AtankokLe":
			{
				$adatok = "SELECT azon, br, nev, nemzet FROM jarmu WHERE tipus = 'G'";
				leker($adatok);
				break;
			}
		case "AjarmuLe":
			{
				$adatok = "SELECT azon, br, nev, nemzet FROM jarmu WHERE azon = '{$adatPost["azon"]}' ";
				leker($adatok);
				break;
			}
		case "ArepcsikLe":
			{
				$adatok = "SELECT azon, br, nev, nemzet FROM jarmu WHERE tipus = 'A'";
				leker($adatok);
				break;
			}
		case "JarmuTorlese":
			{
				$adatok = "DELETE FROM jarmu WHERE azon = '{$adatPost["azon"]}'";
				felvitel($adatok);
				break;
			}
		case "JarmuModositas":
			{
				$adatok = "UPDATE jarmu SET nev =  '{$adatPost["nev"]}', br = '{$adatPost["br"]}', nemzet = '{$adatPost["nemzet"]}' WHERE azon = '{$adatPost["azon"]}'";
				felvitel($adatok);
				break;
			}
		case "JarmuFelvitel":
			{
				$adatok = "INSERT INTO jarmu (nev, br, nemzet, tipus) VALUES('{$adatPost["nev"]}','{$adatPost["br"]}','{$adatPost["nemzet"]}','{$adatPost["tipus"]}')";
				felvitel($adatok);
				break;
			}
		case "VaneJarmu":
			{
				$adatok = "SELECT nev, nemzet FROM jarmu WHERE nev = '{$adatPost["nev"]}' AND nemzet = '{$adatPost["nemzet"]}'";
				leker($adatok);
				break;
			}
		#endregion
		#region Login kezelés
		case "FelhasznaloLekerese":
			{
				$adatok = "SELECT felh, email FROM felhasznalo WHERE felh = '{$adatPost["felh"]}'";
				leker($adatok);
				break;
			}
		case "FelhasznaloJelszava":
			{
				$adatok = "SELECT azon, felh, passwd FROM felhasznalo WHERE felh = '{$adatPost["felh"]}' AND passwd = '".hash("sha256",'{$adatPost["passwd"]}')."'";
				leker($adatok);
				break;
			}
		#endregion
		#region Profil műveletek
		case "nevLekerese":
			{
				$adatok = "SELECT felh, email FROM felhasznalo WHERE azon = '{$adatPost["azon"]}'";
				leker($adatok);
				break;
			}
		case "klantagJarmuveiLekerese":
			{
				$adatok = "SELECT jarmu.nev as nev, legenyseg_szint as legenyseg, fullose, tipus FROM jarmu INNER JOIN klantagbirtokol ON jarmu.azon = klantagbirtokol.jarmu_azon WHERE jatekos_azon = '{$adatPost["azon"]}'";
				leker($adatok);
				break;
			}
		case "klantagFrissitese":
			{
				$adatok = "UPDATE felhasznalo SET felh = '{$adatPost["felh"]}', email = '{$adatPost["email"]}' WHERE azon = '{$adatPost["azon"]}'";
				felvitel($adatok);
				break;
			}
		case "vaneMarFelh":
			{
				$adatok = "SELECT felh FROM felhasznalo WHERE felh = '{$adatPost["felh"]}'";
				leker($adatok);
				break;
			}
		case "vaneMarEmail":
			{
				$adatok = "SELECT email FROM felhasznalo WHERE email = '{$adatPost["email"]}'";
				leker($adatok);
				break;
			}
		case "jelszomodositas":
			{
				$pass = hash("sha256",$adatPost["passwd"]);
				$adatok = "UPDATE felhasznalo SET passwd = '$pass' WHERE azon = '{$adatPost["azon"]}'";
				felvitel($adatok);
				break;
			}
		case "jelszoEll":
			{
				$pass = hash("sha256",$adatPost["passwd"]);
				$adatok = "SELECT passwd FROM felhasznalo WHERE azon = '{$adatPost	["azon"]}' AND passwd = '$pass'";
				leker($adatok);
				break;
			}
		#endregion
		default :{
			break;
		}
	}
?>