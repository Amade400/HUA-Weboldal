<?php

    function belepes($fnev,$jelszo) {
        if (empty($fnev) || empty($jelszo)) {
            echo "Kérem töltsön ki minden mezőt!";
            return false;
        }
        else {
            include "kapcsolat.php";
            //header("Refresh:1; url=../login.php");
            //só lekérdezése:
            $keres="SELECT email 
                    FROM felhasznalo
                    WHERE felh = '{$fnev}'";

            $eredmeny=$db->query($keres) or die ($db->error);
            $so=$eredmeny->fetch_array();
            $jelszo.=$so[0];
            $keres2= "SELECT felh FROM felhasznalo
                      WHERE felh='{$fnev}'
                      AND passwd = '".hash("sha256",$jelszo)."'";
            
            $eredmeny = $db->query($keres2) or die($db->error);
            
            if ($eredmeny->num_rows != 0) {
                session_start();
                $_SESSION["id"] = getAzon($fnev);
                header("location:../index.php");
                return true;
            }
            else{
                header("location:../uzenetek/jelszavak.php");
                return false;
            }
        }
    }
    function getAzon($fnev)
    {
        include "kapcsolat.php";
        $keres = "SELECT azon FROM felhasznalo
        WHERE felh = '{$fnev}'";
        $eredmeny = $db->query($keres) or die($db->error);
        if ($eredmeny->num_rows != 0)
        {
            while ($sor = $eredmeny->fetch_array()) {
                $adatok[] = $sor;
            }
            return $adatok[0];
        }
    }

    belepes($_POST["fnev"],
    $_POST["jelszo"]);    
?>