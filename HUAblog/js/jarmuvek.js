function id(id)
{
    return document.getElementById(id);
}
function name(name)
{
    return document.getElementsByName(name);
}
function cbRepcsiFeltoltese(data)
{
    //console.log(data);
    let cbRepcsik = id("repcsik");
    //talalat.innerHTML = "";
    id("talalat").setAttribute("hidden","true");
    id("button").removeAttribute("disabled");
    cbRepcsik.removeAttribute("hidden");
    cbRepcsik.innerHTML = "";
    for(const adat of data)
    {
        let option = document.createElement("option");
        option.setAttribute("value",adat.azon);
        option.innerHTML = adat.nev;
        cbRepcsik.append(option);
    }
}
function cbBRFeltoltese(data)
{
    //console.log(data);
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
function RepcsikLekerese(nemzet, br)
{
    //console.log(nemzet+" "+br);
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/repcsikLe",true);
    xhr.send(JSON.stringify({"nemzet" : nemzet, "br" : br}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    id("talalat").removeAttribute("hidden");
                    id("repcsik").setAttribute("hidden","true");
                    id("button").setAttribute("disabled","true");
                    return;
                }
                let data = JSON.parse(this.responseText);
                //console.log(data);
                cbRepcsiFeltoltese(data);
            }
        }
    })
}
function BrekLekerese(nemzet)
{
    //console.log(nemzet+" "+br);
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/brekLe",true);
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
                //console.log(data);
                cbBRFeltoltese(data);
                adatok();
            }
        }
    })
}

function adatok()
{
    let nemzetek = id("nemzet").value;
    let br = id("br").value;
    RepcsikLekerese(nemzetek,br);
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
        id("table").setAttribute("hidden",true);    
    }
}

let bennevan = new Array();
function hozzaad()
{
    let azon = id("repcsik").value
    let benne = false;
    for (const elem of bennevan) {
        if(elem == azon){
            benne = true;
            break;
        }
    }
    //console.log(benne);
    if(benne == true)
    {
        return;
    }
    bennevan.push(azon);
    let tbody = id("tbody");
    id("table").removeAttribute("hidden");    
    let tr = document.createElement("tr");
    tr.setAttribute("id",azon);
    //járműneve hozzáadása
    let jarmuneve = $("#repcsik option:selected").text();
    let td = document.createElement("td");
    td.innerHTML =jarmuneve;
    tr.append(td);
    //checkbox hozzáadása
    let fullos = document.createElement("input");
    fullos.setAttribute("type","checkbox");
    fullos.setAttribute("class","form-check-input");
    td = document.createElement("td");
    td.append(fullos);
    tr.append(td);
    //Legénység szintje hozzáadása
    let szint = document.createElement("input");
    szint.setAttribute("type","number");
    szint.setAttribute("class","form-control");
    szint.setAttribute("id","szint");
    szint.setAttribute("placeholder","0-75 közötti érték");
    szint.setAttribute("min","1");
    szint.setAttribute("max","75");
    szint.addEventListener("input", function (){
        var max = parseInt(this.max);
        if (parseInt(this.value) > max) {
            this.value = max; 
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

