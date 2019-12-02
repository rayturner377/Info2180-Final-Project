window.onload = function(){
    let home = document.getElementById("home1");
    let newUser = document.getElementById("adduser1");
    let newIssue =document.getElementById("newJob1");
    let logout = document.getElementById("logout1");

    $.ajax({
       url: "home.html",
       type: "get",
       dataType: "text",
       success: function(data){
         $('#results').html(data);
       }
    });

    home.addEventListener("click",function(){
        let xml = new XMLHttpRequest();
        xml.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                results.innerHTML = this.responseText;
            }
        }
        xml.open("GET","home.html",true);
        xml.send();
    });

    newUser.addEventListener("click",function(){
        let xml = new XMLHttpRequest();
        xml.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                results.innerHTML = this.responseText;
            }
        }
        xml.open("GET","newUser.html",true);
        xml.send();
    });

    newIssue.addEventListener("click",function(){
        let xml = new XMLHttpRequest();
        xml.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                results.innerHTML = this.responseText;
            }
        }
        xml.open("GET","newIssue.html",true);
        xml.send();
    });

    logout.addEventListener("click",function(){
        let xml = new XMLHttpRequest();
        xml.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                results.innerHTML = this.responseText;
            }
        }
        xml.open("GET","logout.html",true);
        xml.send();
    });
}
