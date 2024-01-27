function disappearPlaceHolder(input){
    let id = input.id;

    let spanId = id + "1";
    document.getElementById(spanId).style.fontSize = "1.5vw";//show label on focus
    
    let spanId2 = id + "2";
    document.getElementById(spanId2).style.display = "none";//disppear message on focus
    
    input.placeholder = "";
}

function showPlaceHolder(input){
    let p = input.name;
    let id = input.id;

    if(input.value==""){
        let spanId1 = id + "1";
        document.getElementById(spanId1).style.fontSize = "0vw";//disapplear label if field is empty

        let spanId2 = id + "2";
        document.getElementById(spanId2).style.display = "block";//show message if field is null
        
        input.placeholder = p;
    }

    if(input.type=="number" && input.value!=""){
        if(input.value.length!=10){
            let spanId2 = id + "2";
            document.getElementById(spanId2).style.display = "block";
            document.getElementById(spanId2).textContent = "10 digits required!";
        }
    }

    if(input.id=="c-password" && input.value!=""){
        if(input.value!=document.getElementById("password").value){
            let spanId2 = id + "2";
            document.getElementById(spanId2).style.display = "block";
            document.getElementById(spanId2).textContent = "Passwords do not match!";
        }
    }
}

function registrationValidate(){
    let email = document.getElementById("email").value;
    let phone = document.getElementById("phone").value;
    let name = document.getElementById("name").value;
    let password = document.getElementById("password").value;
    let cPassword = document.getElementById("c-password").value;

    if(email=="" || phone=="" || name=="" || password=="" || cPassword==""){
        alert("Complete the form to submit!!");

        if(email==""){
            document.getElementById("email2").style.display = "block";
        }
    
        if(phone==""){
            document.getElementById("phone2").style.display = "block";
        }
    
        if(name==""){
            document.getElementById("name2").style.display = "block";
        }
    
        if(password==""){
            document.getElementById("password2").style.display = "block";
        }
    
        if(cPassword==""){
            document.getElementById("c-password2").style.display = "block";
        }

        return false;
    }
    else{
        return true;
    }
}

function loginValidate(){
    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;

    if(email=="" || password==""){
        alert("Complete the form to submit!!");

        if(email==""){
            document.getElementById("email2").style.display = "block";
        }
    
        if(password==""){
            document.getElementById("password2").style.display = "block";
        }

        return false
    }
    return true;
}

if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
}