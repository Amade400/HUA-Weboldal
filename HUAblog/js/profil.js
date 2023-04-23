function id(id)
{
    return document.getElementById(id);
}

function nevLekerese(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/nevLekerese",true);
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
                nevkirak(data[0]);
            }
        }
    })
}
function jarmuvekleker(id)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/klantagJarmuveiLekerese",true);
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
                jarmutablaba(data);
            }
        }
    })
}
function vaneMarFelh(felh)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/vaneMarFelh",true);
    xhr.send(JSON.stringify({"felh" : felh}));
    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    osszegyujt2(true);
                }
                else
                {
                    osszegyujt2(false);
                }
            }
        }
    })
}
function vaneMarEmail(email)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/vaneMarEmail",true);
    xhr.send(JSON.stringify({"email" : email}));
    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    osszegyujt3(true);
                }
                else
                {
                    osszegyujt3(false);
                }
            }
        }
    })
}
function adatFrissites(id, felh, email)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/klantagFrissitese",true);
    xhr.send(JSON.stringify({"felh" : felh, "email" : email, "azon" : id}));
}
function jojelszoE(id, pass)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/jelszoEll",true);
    xhr.send(JSON.stringify({"azon" : id, "passwd" : pass}));
    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                if(this.responseText == "NINCS TALÁLAT")
                {
                    osszegyujtJelszavak2(false);
                }
                else
                {
                    osszegyujtJelszavak2(true);
                }
            }
        }
    })
}
function jelszoModosit(id, pass)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","js/ajax.php/jelszomodositas",true);
    xhr.send(JSON.stringify({"azon" : id, "passwd" : pass}));
    
}
function nevkirak(data)
{
    id("felhnev").innerHTML = "Üdv "+data.felh+"!";
    id("felh").value = data.felh;
    id("email").value = data.email;
}

function osszegyujtFelhEmail()
{
    id("nemjofelh").setAttribute("hidden",true);
    id("nemjoemail").setAttribute("hidden",true);
    id("nemjomezok").setAttribute("hidden",true);
    id("sikeres").setAttribute("hidden",true);
    let felh = id("felh").value;
    vaneMarFelh(felh);
}
function osszegyujt2(vane)
{
    if(!vane)
    {
        id("nemjofelh").removeAttribute("hidden");
    }
    else
    {
        osszegyujt3(true);
    }
}
function osszegyujt3(vane)
{
    if(!vane)
    {
        id("nemjoemail").removeAttribute("hidden");
    }
    else{
        adatFrissites(session, id("felh").value,id("email").value);
        id("sikeres").removeAttribute("hidden");
        setTimeout(function() {
            id("sikeres").setAttribute("hidden",true);
        }, 3000);
    }
}

function osszegyujtJelszavak()
{
    id("nemjojelszo").setAttribute("hidden",true);
    id("nemjomezokjelszonal").setAttribute("hidden",true);
    id("nemegyezojelszavak").setAttribute("hidden",true);
    id("sikeresjelszonal").setAttribute("hidden",true);
    let oldpass = id("oldpass").value;
    let pass1 = id("pass1").value;
    let pass2 = id("pass2").value;
    if(oldpass == "" || pass1 == "" || pass2 == "")
    {
        id("nemjomezokjelszonal").removeAttribute("hidden");
    }
    else if(pass1 != pass2)
    {
        id("nemegyezojelszavak").removeAttribute("hidden");
    }
    else
    {
        oldpass += id("email").value;
        let felh = id("felh").value
        jojelszoE(session,oldpass);
    }
}
function osszegyujtJelszavak2(data)
{
    if(data)
    {
        let pass1 = id("pass1").value;
        pass1 += id("email").value;
        id("sikeresjelszonal").removeAttribute("hidden");
        setTimeout(function() {
            id("sikeresjelszonal").setAttribute("hidden",true);
            jelszavakUritese();
        }, 3000);
        jelszoModosit(session, pass1);
    }
    else
    {
        id("nemjojelszo").removeAttribute("hidden");
    }
}
function jelszavakUritese()
{
    id("oldpass").value = "";
    id("pass1").value = "";
    id("pass2").value = "";
    zarolas();
}
function zarolas()
{
    let old = id("oldpass").value.length;
    let pass = id("pass1").value.length;
    let pass2 = id("pass2").value.length;
    if(old > 0 || pass > 0 || pass2 > 0)
    {
        id("felh").setAttribute("disabled",true);
        id("email").setAttribute("disabled",true);
    }
    else
    {
        id("felh").removeAttribute("disabled");
        id("email").removeAttribute("disabled");
    }
}

var session;
window.addEventListener("load",function()
{
    session = id("session").innerHTML;
    nevLekerese(session);
    id("session").innerHTML = "";
})

id("adatFrissites").addEventListener("click",osszegyujtFelhEmail);
id("jelszoFelvitelHajra").addEventListener("click",osszegyujtJelszavak);
id("jelszoMezoTorles").addEventListener("click",function()
{
    jelszavakUritese();
})

id("oldpass").addEventListener("input", zarolas);
id("pass1").addEventListener("input", zarolas);
id("pass2").addEventListener("focus", zarolas);