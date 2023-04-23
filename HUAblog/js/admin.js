function id(id)
{
    return document.getElementById(id);
}
function name(name)
{
    return document.getElementsByName(name);
}

//#region Jelentkezők
//#region Eldöntések
function jatekmodEldontese(jatekmod)
{
    if(jatekmod == "AB")
    {
        return "Árkád csaták";
    }
    if(jatekmod == "RB")
    {
        return "Realisztikus csaták";
    }
    if(jatekmod == "SB")
    {
        return "Szimulátor csaták";
    }
}
function jatekmodEldonteseSzinesben(jatekmod)
{
    let p = document.createElement("span");
    if(jatekmod == "AB")
    {
        p.setAttribute("class","text-danger font-weight-bold");
        p.innerHTML = "Árkád csaták"+ "at játszik a legtöbbet";
        return p;
    }
    if(jatekmod == "RB")
    {
        p.setAttribute("class","text-success font-weight-bold");
        p.innerHTML = "Realisztikus csaták"+ "at játszik a legtöbbet";
        return p;
    }
    if(jatekmod == "SB")
    {
        p.setAttribute("class","text-success font-weight-bold");
        p.innerHTML = "Szimulátor csaták"+ "at játszik a legtöbbet";
        return p;
    }
}
function csatakSzamaSzinesben(csatakszama)
{
    let p = document.createElement("span");
    if (csatakszama <= 2500) {
        p.setAttribute("class","text-danger font-weight-bold");
        p.innerHTML = csatakszama;
        return p;
    }
    if(csatakszama > 2500 && csatakszama < 7500)
    {
        p.setAttribute("class","text-warning font-weight-bold");
        p.innerHTML = csatakszama;
        return p;
    }
    if (csatakszama >= 7500){
        p.setAttribute("class","text-success font-weight-bold");
        p.innerHTML = csatakszama;
        return p;
    }
}
function hadszinEldontese(hadszin)
{
    let i = document.createElement("img");
    i.setAttribute("style","width:40px");
    if(hadszin == "A")
    {
    i.setAttribute("class","Plane");
    i.setAttribute("src","../img/fighter-jet-solid.png");
    return i;
    }
    if(hadszin == "G")
    {
    i.setAttribute("class","Plane");
    i.setAttribute("src","../img/tank-solid.png");
    return i;
    }
    if(hadszin == "S")
    {
    i.setAttribute("class","Plane");
    i.setAttribute("src","../img/warship-solid.png");
    return i;
    }
}
function hadszinEldonteseSzoveges(hadszin)
{
    if(hadszin == "A")
    {
        return "Repülőkkel játszott a legtöbbet";
    }
    if(hadszin == "G")
    {
        return "Tankokkal játszott a legtöbbet";
    }
    if(hadszin == "S")
    {
        return "Hajókkal játszott a legtöbbet";
    }
}
function volteklanbanEldontese(volte)
{
    let p = document.createElement("span");
    if (volte == 0) {
        p.setAttribute("class","text-danger font-weight-bold");
        p.innerHTML = "Nem";
        return p;
    }
    if (volte == 1){
        p.setAttribute("class","text-success font-weight-bold");
        p.innerHTML = "Igen";
        return p;
    }
}
function volteklanbanEldonteseSzoveges(volte)
{
    let p = document.createElement("span");
    if (volte == 0) {
        p.setAttribute("class","text-danger font-weight-bold");
        p.innerHTML = "Nem volt még klánban";
        return p;
    }
    if (volte == 1){
        p.setAttribute("class","text-success font-weight-bold");
        p.innerHTML = "Volt már klánban";
        return p;
    }
}
function jarmuLegenysegSzinesen(legenyseg, tipus)
{
    let p = document.createElement("span");
    if (tipus == "A")
    {
        if(legenyseg < 30)
        {
            p.setAttribute("class","text-danger font-weight-bold");
            p.innerHTML = legenyseg;
            return p;
        }
        if(legenyseg > 30 && legenyseg < 55)
        {
            p.setAttribute("class","text-warning font-weight-bold");
            p.innerHTML = legenyseg;
            return p;
        }
        else
        {
            p.setAttribute("class","text-success font-weight-bold");
            p.innerHTML = legenyseg;
            return p;
        }
    }
    if (tipus == "G")
    {
        if(legenyseg < 50)
        {
            p.setAttribute("class","text-danger font-weight-bold");
            p.innerHTML = legenyseg;
            return p;
        }
        if(legenyseg > 50 && legenyseg < 95)
        {
            p.setAttribute("class","text-warning font-weight-bold");
            p.innerHTML = legenyseg;
            return p;
        }
        else
        {
            p.setAttribute("class","text-success font-weight-bold");
            p.innerHTML = legenyseg;
            return p;
        }
    }
    
}
function jarmuFullosSzinesen(fullose)
{
    let p = document.createElement("span");
    if(fullose == 0)
    {
        p.setAttribute("class","text-danger font-weight-bold");
        p.innerHTML = "nem fullos, ";
        return p;
    }
    if(fullose == 1)
    {
        p.setAttribute("class","text-success font-weight-bold");
        p.innerHTML = "fullos, ";
        return p;
    }
}
//#endregion
//#region Lekérések
function egyJelentkezoLekerese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/EgyJelentkezoLekerese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText); 
                egyjelentkezoReszletek(data[0]);
            }
        }
    })
}
function JelentkezoJarmuveiLekerese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/JelentkezoJarmuveiLekerese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText); 
                egyjelentkezoJarmuvei(data);
            }
        }
    })
}
function jelentkezoTorlese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/JelentkezoTorlese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                jelentkezokLeKerese();
            }
        }
    })
}
function jelentkezokLeKerese()
{
    let xhr = new XMLHttpRequest();
    xhr.open("GET","../js/ajax.php/JelentkezokLekerese",true);
    xhr.send();

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText);
                jelentkezokTablazatba(data);
            }
        }
    })
}
//#endregion
//#region Metódusok
function jelentkezokTablazatba(data)
{
    let table = id("jelentkezotable");
    id("nincsjelentkezo").setAttribute("hidden",true);
    table.removeAttribute("hidden");
    let tbody =  id("jelentkezotbody");
    tbody.innerHTML = "";
    for (const adat of data) {
        let tr = document.createElement("tr");
        let neve = document.createElement("td");
        neve.innerHTML = adat.jatekosnev;
        neve.setAttribute("class","align-middle");
        let csatak = document.createElement("td");
        csatak.innerHTML = adat.csatak_szama;
        csatak.setAttribute("class","align-middle");
        let jatekmod = document.createElement("td");
        let jatekmodszoveg = jatekmodEldontese(adat.jatekmod);
        jatekmod.innerHTML = jatekmodszoveg;
        jatekmod.setAttribute("class","align-middle");
        let hadszinter = document.createElement("td");
        let hadszinkep = hadszinEldontese(adat.hadszin);
        hadszinter.append(hadszinkep);
        hadszinter.setAttribute("class","align-middle");
        let volteklanban = document.createElement("td");
        let volteklanbanszoveg = volteklanbanEldontese(adat.volte_klanban);
        volteklanban.setAttribute("class","align-middle");
        volteklanban.append(volteklanbanszoveg);
        let reszletek = document.createElement("td");
        let reszletekbtn = document.createElement("button");
        reszletekbtn.setAttribute("class","btn");
        reszletekbtn.setAttribute("id",adat.azon);
        reszletekbtn.setAttribute("type","button");
        reszletekbtn.addEventListener("click",function(){
            egyJelentkezoLekerese(adat.azon);
        });
        reszletekbtn.setAttribute("data-toggle","modal");
        reszletekbtn.setAttribute("data-target","#jelentkezoreszletek");
        reszletekbtn.setAttribute("style","color: #000!importan;background-color: rgb(253,181,21)!important;");
        reszletekbtn.innerHTML = "Részletek";
        reszletek.append(reszletekbtn);
        let torles = document.createElement("td");
        let torlesbtn = document.createElement("button");
        torlesbtn.setAttribute("type","button");
        torlesbtn.setAttribute("class","btn btn-danger");
        torlesbtn.setAttribute("id","torlesbtn");
        torlesbtn.addEventListener("click", function(){
            jelentkezoTorleseConfirm(adat.azon);
        });
        torlesbtn.innerHTML = "Törlés";
        torles.append(torlesbtn);
        tr.append(neve);
        tr.append(csatak);
        tr.append(jatekmod);
        tr.append(hadszinter);
        tr.append(volteklanban);
        tr.append(reszletek);
        tr.append(torles);
        tbody.append(tr);
    }
}
function egyjelentkezoReszletek(data)
{
    id("jelentkezoTitle").innerHTML = data.jatekosnev;
    id("jelentkezoCsataszam").innerHTML = "";
    id("jelentkezoCsataszam").append(csatakSzamaSzinesben(data.csatak_szama));
    id("jelentkezoCsataszam").innerHTML += " csatát játszott összesen";
    id("jelentkezoJatekmod").innerHTML = "";
    id("jelentkezoJatekmod").append(jatekmodEldonteseSzinesben(data.jatekmod));
    id("jelentkezoHadszin").innerHTML = hadszinEldonteseSzoveges(data.hadszin);
    id("jelentkezoVolte").innerHTML = "";
    id("jelentkezoVolte").append(volteklanbanEldonteseSzoveges(data.volte_klanban));
    JelentkezoJarmuveiLekerese(data.azon);
}
function egyjelentkezoJarmuvei(data)
{
    let ul = id("jelentkezoJarmuvei");
    ul.innerHTML = "";
    for (const adat of data) {
        let li = document.createElement("li");
        li.innerHTML = adat.nev + ", ";
        let fullos = jarmuFullosSzinesen(adat.fullose);
        let legenyseg = jarmuLegenysegSzinesen(adat.legenyseg, adat.tipus);
        li.append(fullos);
        li.append(legenyseg);
        li.innerHTML += " szintű legénységgel";
        ul.append(li);
    }
}
function jelentkezoTorleseConfirm(id)
{
    let tuti = window.confirm("Biztos véglegesen törölni akarja a jelentkezőt?")
    if(tuti == true)
    {
        jelentkezoTorlese(id);
    }
    else
    {
        return;
    }
}
function jelentkezokListaja()
{
    jelentkezokLeKerese();
}
//#endregion
//#endregion

//#region Tagok
//#region Lekérések
function tagokLeKerese()
{
    let xhr = new XMLHttpRequest();
    xhr.open("GET","../js/ajax.php/TagokLekerese",true);
    xhr.send();

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText);
                tagokTablazatba(data);
            }
        }
    })
}
function egyTagLekerese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/EgyTagLekerese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText); 
                egyTagReszletek(data[0]);
            }
        }
    })
}
function egyTagModositasLeker(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/EgyTagLekerese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText); 
                egyTagModosit(data[0]);
            }
        }
    })
}
function egyTagTorlese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/TagTorlese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                tagokLeKerese();
            }
        }
    })
}
function egyTagFelvitele(azon, felh, email)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/TagModositasa",true);
    xhr.send(JSON.stringify({"azon" : azon ,"felh" : felh, "email" : email}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                azon, felh, email = null;
            }
        }
    })
}
//#endregion
//#region Metódusok
function tagokTablazatba(data)
{
    let table = id("tagtable");
    id("nincstag").setAttribute("hidden",true);
    table.removeAttribute("hidden");
    let tbody =  id("tagtbody");
    let index = 1;
    tbody.innerHTML = "";
    for (const adat of data) {
        let tr = document.createElement("tr");
        let szamlalo = document.createElement("td");
        szamlalo.innerHTML = index;
        szamlalo.setAttribute("class","align-middle");
        index++;
        let neve = document.createElement("td");
        neve.setAttribute("class","align-middle");
        neve.innerHTML = adat.felh;
        let email = document.createElement("td");
        email.innerHTML = adat.email;
        email.setAttribute("class","align-middle");
        let reszletek = document.createElement("td");
        let reszletekbtn = document.createElement("button");
        reszletekbtn.setAttribute("class","btn");
        reszletekbtn.setAttribute("id",adat.azon);
        reszletekbtn.setAttribute("type","button");
        reszletekbtn.addEventListener("click",function(){
            egyTagLekerese(adat.azon);
        });
        reszletekbtn.setAttribute("data-toggle","modal");
        reszletekbtn.setAttribute("data-target","#tagreszletek");
        reszletekbtn.setAttribute("style","color: #000!importan;background-color: rgb(253,181,21)!important;");
        reszletekbtn.innerHTML = "Részletek";
        reszletek.append(reszletekbtn);
        let modositas = document.createElement("td");
        let modositasbtn = document.createElement("button");
        modositasbtn.setAttribute("type","button");
        modositasbtn.setAttribute("class","btn btn-info");
        modositasbtn.setAttribute("id","modositasbtn");
        modositasbtn.setAttribute("data-toggle","modal");
        modositasbtn.setAttribute("data-target","#tagmodositas");
        modositasbtn.addEventListener("click", function(){
            egyTagModositasLeker(adat.azon);
        });
        modositas.append(modositasbtn);
        modositasbtn.innerHTML = "Módosítás";
        let torles = document.createElement("td");
        let torlesbtn = document.createElement("button");
        torlesbtn.setAttribute("type","button");
        torlesbtn.setAttribute("class","btn btn-danger");
        torlesbtn.setAttribute("id","torlesbtn");
        torlesbtn.addEventListener("click", function(){
            tagTorleseConfirm(adat.azon);
        });
        torlesbtn.innerHTML = "Törlés";
        torles.append(torlesbtn);
        tr.append(szamlalo);
        tr.append(neve);
        tr.append(email);
        tr.append(reszletek);
        tr.append(modositas);
        tr.append(torles);
        tbody.append(tr);
    }
}
function egyTagReszletek(data)
{
    let nev = id("tagTitle");
    nev.innerHTML = data.felh;
    let email = id("tagEmail");
    email.innerHTML = "A tag e-mail címe: <b>" + data.email+"</b>";
}
function egyTagModosit(data)
{
    id("tagModositDone").setAttribute("hidden",true);
    let nev = id("tagFelhMod");
    let email = id("tagEmailMod");
    nev.value = data.felh;
    email.value = data.email;
    id("modositasMentes").addEventListener("click",function(){
    egyTagFelvitele(data.azon, nev.value, email.value);
    id("tagModositDone").removeAttribute("hidden");
    id("modositasBezaras").addEventListener("click",tagokLeKerese);
});
}
function tagTorleseConfirm(id)
{
    let tuti = window.confirm("Biztos véglegesen törölni akarja a tagot? Ez a lépés nem vonható vissza!")
    if(tuti == true)
    {
        egyTagTorlese(id);
    }
    else
    {
        return;
    }
}
//#endregion
//#endregion

//#region Tag Hozzáadása
//#region Lekérések
function vaneMarFelh(felh)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/TagFelh",true);
    xhr.send(JSON.stringify({"felh" : felh}));
    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    tagFelvitel2(true);
                }
                else
                {
                    tagFelvitel2(false);
                }
            }
        }
    })
}
function vaneMarEmail(email)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/TagEmail",true);
    xhr.send(JSON.stringify({"email" : email}));
    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    tagFelvitel3(true);
                }
                else
                {
                    tagFelvitel3(false);
                }
            }
        }
    })
}
function felhFelvisz(felh, passwd, email)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/TagFelvitel",true);
    xhr.send(JSON.stringify({"felh" : felh, "passwd" : passwd, "email" : email}));
}
//#endregion
//#region Metódusok
function tagFelvitel1()
{
    id("nemjomezok").setAttribute("hidden",true);
    id("nemjojelszo").setAttribute("hidden",true);
    id("nemjofelh").setAttribute("hidden",true);
    id("nemjoemail").setAttribute("hidden",true);
    id("sikeres").setAttribute("hidden",true);
    let felh = id("felh").value;
    let email = id("email").value;
    let pass1 = id("pass1").value;
    let pass2 = id("pass2").value;
    let kitoltotte = kitolt(felh,email,pass1,pass2);
    if(!kitoltotte)
    {
        id("nemjomezok").removeAttribute("hidden");
        return;
    }
    vaneMarFelh(felh);
}
function tagFelvitel2(vanefelh)
{
    if(!vanefelh)
    {
        id("nemjofelh").removeAttribute("hidden");
        return;
    }
    vaneMarEmail(id("email").value);
}
function tagFelvitel3(vaneemail)
{
    if(!vaneemail)
    {
        id("nemjoemail").removeAttribute("hidden");
        return;
    }
    else if(pass1.value != pass2.value)
    {
        id("nemjojelszo").removeAttribute("hidden");
        return;
    }
    else
    {
        let felh = id("felh").value;
        let email = id("email").value;
        let pass1 = id("pass1").value;
        pass1 += email;
        felhFelvisz(felh, pass1, email);
        id("sikeres").removeAttribute("hidden");
        mezoUrit();
        setTimeout(function() {
            id("sikeres").setAttribute("hidden",true);
        }, 3000);
        return;
    }
}
function mezoUrit()
{
    id("nemjomezok").setAttribute("hidden",true);
    id("nemjojelszo").setAttribute("hidden",true);
    id("nemjofelh").setAttribute("hidden",true);
    id("nemjoemail").setAttribute("hidden",true);
    
    id("felh").value = "";
    id("email").value = "";
    id("pass1").value = "";
    id("pass2").value = "";
}
function kitolt(felh,email,pass1,pass2)
{
    if(felh.trim() == "" || 
    email.trim() == "" ||
    pass1.trim() == "" ||
    pass2.trim() == "")
    {
        return false;
    }
    else
    {
        return true;
    }
}
//#endregion
//#region EventListenerek
id("tagFelvitelMezoTorles").addEventListener("click",mezoUrit);
id("tagFelvitelHajra").addEventListener("click",tagFelvitel1);
//#endregion
//#endregion

//#region Cikkek
//#region Lekérések
function cikkekLekerese()
{
    let xhr = new XMLHttpRequest();
    xhr.open("GET","../js/ajax.php/CikkekLekerese",true);
    xhr.send();

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    cikkekTablazatba(false);
                }
                let data = JSON.parse(this.responseText);
                cikkekTablazatba(data);
            }
        }
    })
}
function egyCikkLekerese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/EgyCikkLekerese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText);
                cikkReszletekFeltolt(data[0]);
            }
        }
    })
}
function cikkTorlese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/CikkTorlese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                cikkekLekerese();
            }
        }
    })
}
//#endregion
//#region Metódusok
function cikkekTablazatba(data)
{
    if(data == false)
    {
        id("nincscikk").removeAttribute("hidden");
    }
    else
    {
    let table = id("cikktable");
    id("nincscikk").setAttribute("hidden",true);
    table.removeAttribute("hidden");
    let tbody =  id("cikktbody");
    let index = 1;
    tbody.innerHTML = "";
    for (const adat of data) {
        let tr = document.createElement("tr");
        let szamlalo = document.createElement("td");
        szamlalo.innerHTML = index;
        index++;
        szamlalo.setAttribute("class","align-middle");
        let cime = document.createElement("td");
        cime.setAttribute("class","align-middle");
        cime.innerHTML = adat.cim;
        let leiras = document.createElement("td");
        leiras.innerHTML = adat.leiras;
        leiras.setAttribute("class","align-middle");
        let datum = document.createElement("td");
        datum.innerHTML = adat.datum;
        datum.setAttribute("class","align-middle");
        let reszletek = document.createElement("td");
        let reszletekbtn = document.createElement("button");
        reszletekbtn.setAttribute("class","btn");
        reszletekbtn.setAttribute("id",adat.azon);
        reszletekbtn.setAttribute("type","button");
        reszletekbtn.addEventListener("click",function(){
            egyCikkLekerese(adat.azon);
        });
        reszletekbtn.setAttribute("data-toggle","modal");
        reszletekbtn.setAttribute("data-target","#cikkreszletek");
        reszletekbtn.setAttribute("style","color: #000!importan;background-color: rgb(253,181,21)!important;");
        reszletekbtn.innerHTML = "Részletek";
        reszletek.append(reszletekbtn);
        /*let modositas = document.createElement("td");
        let modositasbtn = document.createElement("button");
        modositasbtn.setAttribute("type","button");
        modositasbtn.setAttribute("class","btn btn-info");
        modositasbtn.setAttribute("id","modositasbtn");
        modositasbtn.setAttribute("data-toggle","modal");
        modositasbtn.setAttribute("data-target","#cikkmodositas");
        modositasbtn.setAttribute("disabled",true);
        modositasbtn.setAttribute("title","Sajnájuk, ez a funckió ideiglenesen nem érhető el! Ha módosítani szeretné a cikket, kérem írja meg újra!");
        /*modositasbtn.addEventListener("click", function(){
            cikkModositas(adat.azon);
        });
        modositas.append(modositasbtn);
        modositasbtn.innerHTML = "Módosítás";*/
        let torles = document.createElement("td");
        let torlesbtn = document.createElement("button");
        torlesbtn.setAttribute("type","button");
        torlesbtn.setAttribute("class","btn btn-danger");
        torlesbtn.setAttribute("id","torlesbtn");
        torlesbtn.addEventListener("click", function(){
            cikkTorleseConfirm(adat.azon);
        });
        torlesbtn.innerHTML = "Törlés";
        torles.append(torlesbtn);
        tr.append(szamlalo);
        tr.append(cime);
        tr.append(leiras);
        tr.append(datum);
        tr.append(reszletek);
        //tr.append(modositas);
        tr.append(torles);
        tbody.append(tr);
    }
    }
}
function cikkReszletekFeltolt(data)
{
    id("CikkTitle").innerHTML= "";
    id("cikkLeiras").innerHTML = "";
    id("szoveg").innerHTML = "";
    id("datum").innerHTML = "Létrehozás dátuma: ";
    id("CikkTitle").innerHTML= data.cim;
    id("cikkLeiras").innerHTML = data.leiras;
    id("datum").innerHTML += data.datum;
    id("szoveg").innerHTML = data.szoveg;
}
function cikkTorleseConfirm(id)
{
    let tuti = window.confirm("Biztos véglegesen törölni akarja a cikket? Ez a lépés nem vonható vissza!")
    if(tuti == true)
    {
        cikkTorlese(id);
    }
    else
    {
        return;
    }
}
//#endregion
//#endregion

//#region Járművek
//#region Lekeresek
function tankokLekerese()
{
    let xhr = new XMLHttpRequest();
    xhr.open("GET","../js/ajax.php/AtankokLe",true);
    xhr.send();

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText);
                tankokTablazatba(data);
            }
        }
    })
}
function egyJarmuModositasLeker(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/AjarmuLe",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText);
                egyJarmuModositas(data[0]);
            }
        }
    })
}
function repcsikLekerese()
{
    let xhr = new XMLHttpRequest();
    xhr.open("GET","../js/ajax.php/ArepcsikLe",true);
    xhr.send();

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText);
                repcsikTablazatba(data);
            }
        }
    })
}
function JarmuModositas(id, nev, br, nemzet)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/JarmuModositas",true);
    xhr.send(JSON.stringify({"azon" : id, "nev" : nev, "br" : br, "nemzet" : nemzet}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
            }
        }
    })
}
function JarmuTorlese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/JarmuTorlese",true);
    xhr.send(JSON.stringify({"azon" : id}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                tankokLekerese();
                repcsikLekerese();
            }
        }
    })
}
function JarmoModGyujt(azon)
{
    //console.log(azon);
    let nev = id("jarmuNev");
    JarmuModositas(azon, nev.value, id("jarmuBR").value, id("jarmunemzet").value);
    id("jarmuModositDone").removeAttribute("hidden");
}
//#endregion
function tankokTablazatba(data)
{
    let table = id("tankoktable");
    id("nincstank").setAttribute("hidden",true);
    table.removeAttribute("hidden");
    let tbody =  id("tankoktbody");
    let index = 1;
    tbody.innerHTML = "";
    for (const adat of data) {
        let tr = document.createElement("tr");
        let szamlalo = document.createElement("td");
        szamlalo.innerHTML = index;
        szamlalo.setAttribute("class","align-middle");
        index++;
        let neve = document.createElement("td");
        neve.setAttribute("class","align-middle");
        neve.innerHTML = adat.nev;
        let br = document.createElement("td");
        br.innerHTML = adat.br;
        br.setAttribute("class","align-middle");
        let nemzet = document.createElement("td");
        nemzet.innerHTML = adat.nemzet;
        nemzet.setAttribute("class","align-middle");
        
        let modositas = document.createElement("td");
        let modositasbtn = document.createElement("button");
        modositasbtn.setAttribute("type","button");
        modositasbtn.setAttribute("class","btn btn-info");
        modositasbtn.setAttribute("id","modositasbtn");
        modositasbtn.setAttribute("data-toggle","modal");
        modositasbtn.setAttribute("data-target","#jarmumodositas");
        modositasbtn.addEventListener("click", function(){
            egyJarmuModositasLeker(adat.azon);
        });
        modositas.append(modositasbtn);
        modositasbtn.innerHTML = "Módosítás";
        let torles = document.createElement("td");
        let torlesbtn = document.createElement("button");
        torlesbtn.setAttribute("type","button");
        torlesbtn.setAttribute("class","btn btn-danger");
        torlesbtn.setAttribute("id","torlesbtn");
        torlesbtn.addEventListener("click", function(){
            jarmuTorlesConfirm(adat.azon);
        });
        torlesbtn.innerHTML = "Törlés";
        torles.append(torlesbtn);
        tr.append(szamlalo);
        tr.append(neve);
        tr.append(br);
        tr.append(nemzet);
        tr.append(modositas);
        tr.append(torles);
        tbody.append(tr);
    }
}
function repcsikTablazatba(data)
{
    let table = id("repcsiktable");
    id("nincsrepcsi").setAttribute("hidden",true);
    table.removeAttribute("hidden");
    let tbody =  id("repcsiktbody");
    let index = 1;
    tbody.innerHTML = "";
    for (const adat of data) {
        let tr = document.createElement("tr");
        let szamlalo = document.createElement("td");
        szamlalo.innerHTML = index;
        szamlalo.setAttribute("class","align-middle");
        index++;
        let neve = document.createElement("td");
        neve.setAttribute("class","align-middle");
        neve.innerHTML = adat.nev;
        let br = document.createElement("td");
        br.innerHTML = adat.br;
        br.setAttribute("class","align-middle");
        let nemzet = document.createElement("td");
        nemzet.innerHTML = adat.nemzet;
        nemzet.setAttribute("class","align-middle");
        
        let modositas = document.createElement("td");
        let modositasbtn = document.createElement("button");
        modositasbtn.setAttribute("type","button");
        modositasbtn.setAttribute("class","btn btn-info");
        modositasbtn.setAttribute("id","modositasbtn");
        modositasbtn.setAttribute("data-toggle","modal");
        modositasbtn.setAttribute("data-target","#jarmumodositas");
        modositasbtn.addEventListener("click", function(){
            egyJarmuModositasLeker(adat.azon);
        });
        modositas.append(modositasbtn);
        modositasbtn.innerHTML = "Módosítás";
        let torles = document.createElement("td");
        let torlesbtn = document.createElement("button");
        torlesbtn.setAttribute("type","button");
        torlesbtn.setAttribute("class","btn btn-danger");
        torlesbtn.setAttribute("id","torlesbtn");
        torlesbtn.addEventListener("click", function(){
            jarmuTorlesConfirm(adat.azon);
        });
        torlesbtn.innerHTML = "Törlés";
        torles.append(torlesbtn);
        tr.append(szamlalo);
        tr.append(neve);
        tr.append(br);
        tr.append(nemzet);
        tr.append(modositas);
        tr.append(torles);
        tbody.append(tr);
    }
}
function egyJarmuModositas(data)
{
    id("jarmuModositDone").setAttribute("hidden",true);
    id("azonide").innerHTML = data.azon;
    let nev = id("jarmuNev");
    nev.value = data.nev;
    id("jarmuBR").value = data.br;
    id("jarmunemzet").value = data.nemzet;
    id("jarmuModositasMentes").addEventListener("click",function()
    {
        JarmoModGyujt(id("azonide").innerHTML);
    });
    id("jarmuModositasBezaras").addEventListener("click",function()
    {
        tankokLekerese();
        repcsikLekerese();
    });
}
function jarmuTorlesConfirm(azon)
{
    let tuti = window.confirm("Biztos véglegesen törölni akarja a járművet? Ez a lépés nem vonható vissza!")
    if(tuti == true)
    {
        JarmuTorlese(azon);
    }
    else
    {
        return;
    }
}
//#endregion

//#region Jármű hozzáadása
function jarmuFelvisz(nev, br, nemzet, tipus)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/JarmuFelvitel",true);
    xhr.send(JSON.stringify({"nev" : nev, "br" : br, "nemzet" : nemzet, "tipus" : tipus}));
    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                jarmuFelvitel3();
            }
        }
    })
}
function vaneMarJarmu(nev, nemzet)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/VaneJarmu",true);
    xhr.send(JSON.stringify({"nev" : nev, "nemzet" : nemzet}));
    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    jarmuFelvitel2(true);
                }
                else
                {
                    jarmuFelvitel2(false)
                }
            }
        }
    })
}
function jarmuFelvitel1()
{
    id("Jarmunemjomezok").setAttribute("hidden",true);
    id("Jarmuvanmar").setAttribute("hidden",true);
    id("Jarmusikeres").setAttribute("hidden",true);
    let nev = id("jarmuNevFelvitel").value;
    let nemzet = id("jarmuNemzetFelvitel").value;
    let kitoltotte = kitolt(nev);
    if(!kitoltotte)
    {
        id("Jarmunemjomezok").removeAttribute("hidden");
        return;
    }
    vaneMarJarmu(nev,nemzet);
}
function jarmuFelvitel2(vanemar)
{
    if(!vanemar)
    {
        id("Jarmuvanmar").removeAttribute("hidden");
        return;
    }
    else
    {
        let nev = id("jarmuNevFelvitel").value;
        let br = id("jarmuBRFelvitel").value;
        let nemzet = id("jarmuNemzetFelvitel").value;
        let tipus = id("jarmutipus").value;
        jarmuFelvisz(nev,br,nemzet,tipus);        
    }
}
function jarmuFelvitel3()
{
    id("Jarmusikeres").removeAttribute("hidden");
    mezoUrit();
    setTimeout(function() {
        id("Jarmusikeres").setAttribute("hidden",true);
    }, 3000);
}
function mezoUritJarmu()
{
    id("Jarmunemjomezok").setAttribute("hidden",true);
    id("Jarmuvanmar").setAttribute("hidden",true);

    id("jarmuNevFelvitel").value = "";
    id("jarmuBRFelvitel").value = "1.0";
    id("jarmuNemzetFelvitel").value = "GER";
    id("jarmutipus").value = "G";
}
function kitolt(nev)
{
    if(nev.trim() == "")
    {
        return false;
    }
    else
    {
        return true;
    }
}
//#endregion
//#region EventListenerek
id("jarmuFelvitelMezoTorles").addEventListener("click",mezoUritJarmu);
id("jarmuFelvitelHajra").addEventListener("click",jarmuFelvitel1);
//#endregion

window.addEventListener("load",jelentkezokListaja);
id("v-pills-jelentkezok-tab").addEventListener("click",jelentkezokListaja);
id("v-pills-taglista-tab").addEventListener("click",tagokLeKerese);
id("v-pills-cikklista-tab").addEventListener("click",cikkekLekerese);
id("v-pills-tanklista-tab").addEventListener("click",tankokLekerese);
id("v-pills-repcsilista-tab").addEventListener("click",repcsikLekerese);
id("v-pills-jarmuhozza-tab").addEventListener("click",mezoUritJarmu)
id("headerimg").setAttribute("href","../img/HUA_logosmall.png");