function id(id)
{
    return document.getElementById(id);
}

id("vissza").addEventListener("click",function()
{
    window.open("admin.php","_self");
})

id("hajra").addEventListener("click",function()
{
    id("uresmezok").setAttribute("hidden",true);
    let cim = id("cim").value;
    let leiras = id("leiras").value;
    if(cim.trim() == "" || leiras.trim() == "")
    {
        id("uresmezok").removeAttribute("hidden");
        return;
    }
    else
    {
        let szoveg = document.getElementsByClassName("richText-editor")[0].innerHTML;
    let datum = mainap();
    cikkFelvitele(cim, leiras, szoveg, datum);
    }
    
})

function mainap()
{
    var d = new Date();    
    let mainap = d.getFullYear().toString()+"-";
    var months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];
    mainap += months[d.getMonth()]+"-";
    mainap += d.getDate().toString();
    return mainap;
}

function cikkFelvitele(cim, leiras, szoveg, datum)
{
    let xhr = new XMLHttpRequest();
    xhr.open("POST","../js/ajax.php/CikkFelvitele",true);
    xhr.send(JSON.stringify({"cim" : cim ,"leiras" : leiras, "szoveg" : szoveg, "datum" : datum}));

    xhr.addEventListener("readystatechange", function()
    {
        if(this.readyState == 4){
            if(this.status == 200){
                id("sikeres").removeAttribute("hidden");
                setTimeout(function() {
                    window.open("admin.php","_self");
                }, 1000);
            }
        }
    })
}