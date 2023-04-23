function id(id)
{
    return document.getElementById(id);
}

function GetURLData() {
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const cikkID = urlParams.get('id');
    return cikkID;
}

function getCikk()
{
    let azon = GetURLData();
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/EgyCikkLekerese",true);
    xhr.send(JSON.stringify({"azon" : azon}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                let data = JSON.parse(this.responseText);
                Mehet(data[0]);
            }
        }
    })
}

function Mehet(data)
{
    id("cim").innerHTML = "";
    id("leiras").innerHTML = "";
    id("szoveg").innerHTML = "";
    id("cim").innerHTML = data.cim;
    id("leiras").innerHTML = data.leiras;
    id("szoveg").innerHTML = data.szoveg;
}

window.addEventListener("load",getCikk);