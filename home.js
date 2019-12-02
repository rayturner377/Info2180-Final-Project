function display() {
  console.log("name");
    let xml = new XMLHttpRequest();
    xml.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            results.innerHTML = this.responseText;
        }
    }
    xml.open("GET","newIssue.html",true);
    xml.send();
}


let b = document.getElementById('btn');
b.addEventListener("onclick", display());
/*
newIssue.addEventListener("click",function(){

});*/
