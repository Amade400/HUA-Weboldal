<?php
session_start();
     if(isset($_POST["submit"])){
        regisztral($_POST["fnev"],
        $_POST["ABcsatakszama"],
        $_POST["RBcsatakszama"],
        $_POST["SBcsatakszama"],
        $_POST["jatekmod"],
        $_POST["hadszin"],
        isset($_POST["volteklanban"]));
        }
    
        function kitoltott($felh,$ab,$rb,$sb,$jatekmod,$hadszin)
        {
            if (empty($felh) ||
            empty($ab) ||
            empty($rb) ||
            empty($sb) ||
            empty($jatekmod) ||
            empty($hadszin))
            {   
                //echo "Kérem töltsön ki minden mezőt";
                return false;
            }
            else{
                return true;
            }
        }
    
        //ellenőrizzük, hogy a DB-ben benne van-e
        function vanemar($fnev)
        {
            include "kapcsolat.php";
    
            $keres="SELECT jatekosnev
                    FROM jelentkezo
                    WHERE jatekosnev = '{$fnev}'";
            
            $vane = $db->query($keres) or die($db->error);
    
            if ($vane->num_rows != 0) {
                include "../uzenetek/jelentkezett.html";
                header("Refresh:3; url=../jelentkezes.php");
                exit;
                return false;
            }
            else{
                return true;
            }
        } 
        //regisztráció végrehajtása
        function regisztral($fnev,$ab,$rb,$sb,$jatekmod,$hadszin,$volte){
            $ures=kitoltott($fnev,$ab,$rb,$sb,$jatekmod,$hadszin);
            $van=vanemar($fnev);
    
            if ($ures && $van) {
                $csatakszama = $ab+$rb+$sb;
                $keres="INSERT INTO jelentkezo
                        (jatekosnev,csatak_szama,jatekmod,hadszin,volte_klanban)
                        VALUES
                        ('{$fnev}','{$csatakszama}','{$jatekmod}','{$hadszin}','{$volte}')
                        ";
    
                include "kapcsolat.php";
    
                $db->query($keres) or die($db->error);
                $_SESSION["id"] = getAzon($fnev);
                   
                include "../uzenetek/jelentkezesfelveve.php";
                header("Refresh:5; url=../jelentkezorepcsik.php");
                
                //exit;
            }
        }
    
        function getAzon($fnev)
        {
            include "kapcsolat.php";
            $keres = "SELECT azon FROM jelentkezo
            WHERE jatekosnev = '{$fnev}'";
            $eredmeny = $db->query($keres) or die($db->error);
            if ($eredmeny->num_rows != 0)
            {
                /*while($sor = $eredmeny->fetch_array())
                {
                    $adatok [] = $sor;
                }*/
                $sor = $eredmeny->fetch_array();
                return $sor[0];
            }
           
        }
        //exit;
?>