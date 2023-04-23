function id(id)
{
    return document.getElementById(id);
}
function name(name)
{
    return document.getElementsByName(name);
}
function cbTankFeltoltese(data)
{
    let cbTankok = id("tankok");
    //talalat.innerHTML = "";
    id("talalat").setAttribute("hidden","true");
    id("button").removeAttribute("disabled");
    cbTankok.removeAttribute("hidden");
    cbTankok.innerHTML = "";
    for(const adat of data)
    {
        let option = document.createElement("option");
        option.setAttribute("value",adat.azon);
        option.innerHTML = adat.nev;
        cbTankok.append(option);
    }
}
function cbBRFeltoltese(data)
{
    let cbBR = id("br");
    //talalat.innerHTML = "";
    cbBR.innerHTML = "";
    for(const adat of data)
    {
        let option = document.createElement("option");
        option.setAttribute("value",adat.br);
        option.innerHTML = adat.br;
        cbBR.append(option);
    }
}
function TankokLekerese(nemzet, br)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/tankokLe",true);
    xhr.send(JSON.stringify({"nemzet" : nemzet, "br" : br}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    id("talalat").removeAttribute("hidden");
                    id("tankok").setAttribute("hidden","true");
                    id("button").setAttribute("disabled","true");
                    return;
                }
                let data = JSON.parse(this.responseText);
                cbTankFeltoltese(data);
            }
        }
    })
}
function BrekLekerese(nemzet)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/tankbrekLe",true);
    xhr.send(JSON.stringify({"nemzet" : nemzet}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return;
                }
                let data = JSON.parse(this.responseText);
                cbBRFeltoltese(data);
                adatok();
            }
        }
    })
}

function BirtoklasFelvitele(tank)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/JelentkezoBirtoklasFel",true);
    xhr.send(JSON.stringify(
        {"jarmu" : tank.azonosito,
        "legenyseg" : tank.legenysegszint,
        "fullose" : tank.fullose}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    return false;
                }
                repcsi = null;
            }
        }
    })
}

function adatok()
{
    let nemzetek = id("nemzet").value;
    let br = id("br").value;
    TankokLekerese(nemzetek,br);
}
function eltavolit(index, azon)
{
    id("table").deleteRow(index);
    for (let i = 0; i < bennevan.length; i++) {
        if(bennevan[i] == azon)
        {
            bennevan.splice(i,1);
        }
    }
    if(bennevan.length == 0)
    {
        //TÁBLÁZAT ELREJTÉSE
        id("table").setAttribute("hidden",true);
        id("hajra").setAttribute("hidden",true);
        id("tovabb").removeAttribute("disabled");
    }
}
let bennevan = new Array();
function hozzaad()
{
    let azon = id("tankok").value
    let benne = false;
    for (const elem of bennevan) {
        if(elem == azon){
            benne = true;
            break;
        }
    }
    if(benne == true)
    {
        return;
    }
    bennevan.push(azon);
    let tbody = id("tbody");
    id("table").removeAttribute("hidden");    
    id("hajra").removeAttribute("hidden"); 
    id("tovabb").setAttribute("disabled",true);
    let tr = document.createElement("tr");
    tr.setAttribute("id",azon);
    //járműneve hozzáadása
    let jarmuneve = $("#tankok option:selected").text();
    let td = document.createElement("td");
    td.innerHTML =jarmuneve;
    tr.append(td);
    //checkbox hozzáadása
    let fullos = document.createElement("input");
    fullos.setAttribute("type","checkbox");
    fullos.setAttribute("class","form-check-input");
    fullos.setAttribute("name","fullos");
    fullos.setAttribute("id",azon);
    td = document.createElement("td");
    td.append(fullos);
    tr.append(td);
    //Legénység szintje hozzáadása
    let szint = document.createElement("input");
    szint.setAttribute("type","number");
    szint.setAttribute("class","form-control");
    szint.setAttribute("name","szint");
    szint.setAttribute("id",azon);
    szint.setAttribute("placeholder","1-150 közötti érték");
    szint.setAttribute("value","1");
    szint.setAttribute("min","1");
    szint.setAttribute("max","150");
    szint.addEventListener("input", function (){
        var max = parseInt(this.max);
        var min = parseInt(this.min);
        if (parseInt(this.value) > max) {
            this.value = max; 
        }
        if (parseInt(this.value) < min) {
            this.value = min; 
        }
    })
    td = document.createElement("td");
    td.append(szint);
    tr.append(td);
    //eltávolít hozzáadása
    let eltav = document.createElement("button");
    eltav.setAttribute("type","button");
    eltav.setAttribute("class","btn btn-danger");
    //eltav.setAttribute("id",azon);
    eltav.addEventListener("click", function()
    {
        eltavolit(tr.rowIndex,azon);
    });
    eltav.innerHTML = "Eltávolít";
    td = document.createElement("td");
    td.append(eltav);
    tr.append(td);
    //sor hozzáadása
    tbody.append(tr);
}

class Tank
{
    constructor(azon, fullos, legenyseg)
    {
        this.azonosito = azon;
        this.fullose = fullos;
        this.legenysegszint = legenyseg;
    }
}

function osszegyujt()
{
    let sorok = document.getElementsByTagName("tr");
    let sorokSzama = document.getElementById("table").rows.length;
    let osszesFullosE = document.getElementsByName("fullos");
    let osszesSzint = document.getElementsByName("szint");
    let j = 0;
    let fullose = false;
    let szint = 1;
    let tank;
    for (let i = 1; i < sorokSzama; i++) {
        if(sorok[i].id == osszesFullosE[j].id)
        {
            fullose = osszesFullosE[j].checked;
        }
        if(sorok[i].id == osszesSzint[j].id)
        {
            if(osszesSzint[j].value != "")
            {
                szint = osszesSzint[j].value;
            }
            else szint = 1;            
        }
        tank = new Tank(sorok[i].id,fullose,szint);
        BirtoklasFelvitele(tank);
        j++;
    }

    window.open("uzenetek/sikerestankfelvitel.php","_self");
}


function tovabb()
{
    let tuti = window.confirm("Biztos nem rendelkezel egy tankkal sem és tovább akarsz lépni?");
    if(tuti == true)
    {
        window.open("uzenetek/sikerestankfelvitel.php","_self");
    }
    else
    {
        return;
    }
}
window.addEventListener("load", function(){
    let nemzetek = id("nemzet").value;
    BrekLekerese(nemzetek);
    adatok();
});
id("nemzet").addEventListener("change", function()
{
    let nemzetek = id("nemzet").value;
    BrekLekerese(nemzetek);
    id("br").selectedIndex = 0;
    adatok();
}
);


id("br").addEventListener("change", adatok);
id("button").addEventListener("click", hozzaad);
id("hajra").addEventListener("click", osszegyujt);
id("tovabb").addEventListener("click", tovabb);