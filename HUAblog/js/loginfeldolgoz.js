function id(id)
{
    return document.getElementById(id);
}
function felhasznaloLekerese(felh)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/FelhasznaloLekerese",true);
    xhr.send(JSON.stringify({"felh" : felh}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    let data = "whatever";
                    ellenorzes2(false,data[0])
                }
                else
                {
                    let data = JSON.parse(this.responseText);
                    ellenorzes2(true,data[0])
                }
                
            }
        }
    })
}
function jelszoLekerese(felh, passwd)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/FelhasznaloJelszava",true);
    xhr.send(JSON.stringify({"felh" : felh, "passwd" : passwd}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    let data = "whatever";
                    ellenorzes3(false,data[0]);
                }
                else
                {
                    let data = JSON.parse(this.responseText);
                    ellenorzes3(true,data[0]);
                }
            }
        }
    })
}

function ellenorzes1()
{
    id("nouser").setAttribute("hidden",true);
    id("badpass").setAttribute("hidden",true);
    id("loggedin").setAttribute("hidden",true);
    let felh = id("fnev").value;
    felhasznaloLekerese(felh);
}
function ellenorzes2(vane,data)
{
    if(!vane)
    {
        id("nouser").removeAttribute("hidden");
    }
    else
    {
        let pass = id("jelszo").value;
        let email = data.email;
        pass += email;
        jelszoLekerese(data.felh, pass);
    }
}
function ellenorzes3(jojelszo,data)
{
    if(!jojelszo)
    {
        id("badpass").removeAttribute("hidden");
    }
    else
    {
        id("loggedin").removeAttribute("hidden");
        
    }
}

id("bejelentkez").addEventListener("click",ellenorzes1);
