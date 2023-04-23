function id(id)
{
    return document.getElementById(id);
}

function cikkekLekerese()
{
    let xhr = new XMLHttpRequest();
    xhr.open("GET","js/ajax.php/CikkekLekerese",true);
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
                cikkekFooldalra(data);
            }
        }
    })
}

function cikkekFooldalra(data)
{
    let ide = id("ide");
    for (const adat of data) {
    let row = document.createElement("div");
    row.setAttribute("class","row");
    row.setAttribute("id","news-sor");
    /*let imgdiv = document.createElement("div");
    imgdiv.setAttribute("class","col-3");
    imgdiv.setAttribute("id","img");
    let img = document.createElement("img");
    img.setAttribute("src","img/HUA_logosmall.png");
    img.setAttribute("class","img-fluid d-block float-right");
    img.setAttribute("id","news-kep");
    imgdiv.append(img);*/
    
    let div = document.createElement("div");
    div.setAttribute("class","col-9");
    let a = document.createElement("a");
    a.setAttribute("href","cikk.php?id="+adat.azon)
    let h4 = document.createElement("h4");
    h4.setAttribute("class","text-danger");
    h4.innerHTML = adat.cim;
    a.append(h4);
    let masikdiv = document.createElement("div");
    masikdiv.setAttribute("class","content-col-text");
    let p = document.createElement("p");
    p.innerHTML = adat.leiras;
    masikdiv.append(p);
    div.append(a);
    div.append(masikdiv);
    let datum = document.createElement("div");
    datum.setAttribute("class","content-col-text text-white");
    datum.innerHTML = adat.datum;
    div.append(datum);
    //row.append(imgdiv);
    row.append(div);
    ide.append(row);
    }
    
}

window.addEventListener("load",cikkekLekerese);
