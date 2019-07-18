(function(){
    var login=document.querySelectorAll(
        "div.login>div>[data-toggle=login]"
    );
    console.log(login);
    var id1=login[0].dataset.target;
    var div1=document.getElementById(id1);
    var id2=login[1].dataset.target;
    var div2=document.getElementById(id2);
    login[1].onclick=function(){
        login[0].style.color="black";
        login[1].style.color="red";
        if(div2.style.display="none"){
            div2.style.display="block";
            div1.style.display="none";
        }
    }	
    login[0].onclick=function(){
        login[0].style.color="red";
        login[1].style.color="black";
        if(div1.style.display="none"){
            div1.style.display="block";
            div2.style.display="none";
        }
    }
})();