function submitForm(){
    let testForm = document.getElementById("test-form");
    testForm.submit();
}

function currentSubject(x){
    let physics = document.getElementById("physics");
    let chemistry = document.getElementById("chemistry");
    let mathematics = document.getElementById("mathematics");

    let phy = document.getElementById("phy");
    let chm = document.getElementById("chm");
    let math = document.getElementById("math");

    switch(x){
        case 1:
            physics.style.background = "#8c0075";
            physics.style.color = "white";

            chemistry.style.background = "none";
            chemistry.style.color = "#8c0075";

            mathematics.style.background = "none";
            mathematics.style.color = "#8c0075";

            phy.style.display = "block";
            chm.style.display = "none";
            math.style.display = "none";
            break;

        case 2:
            physics.style.background = "none";
            physics.style.color = "#8c0075";

            chemistry.style.background = "#8c0075";
            chemistry.style.color = "white";

            mathematics.style.background = "none";
            mathematics.style.color = "#8c0075";

            phy.style.display = "none";
            chm.style.display = "block";
            math.style.display = "none";
            break;

        case 3:
            physics.style.background = "none";
            physics.style.color = "#8c0075";

            chemistry.style.background = "none";
            chemistry.style.color = "#8c0075";

            mathematics.style.background = "#8c0075";
            mathematics.style.color = "white";

            phy.style.display = "none";
            chm.style.display = "none";
            math.style.display = "block";
            break;
    }
}

function startTest(){
    alert("Do not refresh the page, otherwise test will get submitted!!");
    document.getElementById("check-info").innerHTML = "CHECK STATUS<i class='fa-solid fa-diagram-next' style='padding-left: 1vw;'></i>"
    document.getElementById("before-start").style.display = "none";
    document.getElementById("on-start").style.display = "block";
}

let timeGiven = 60*60*3;

function startTimer(){
    let timerElement = document.getElementById("time");

    let countDownInterval = setInterval(function () {
        let hours = Math.floor(timeGiven/3600);
        let minutes = Math.floor((timeGiven%3600)/60);
        let seconds = Math.floor((timeGiven%3600)%60);

        let formattedTime = padZero(hours) + ":" + padZero(minutes) + ":" + padZero(seconds);

        timerElement.textContent = formattedTime;

        if(timeGiven == 0){
            clearInterval(countDownInterval);
        }
        else{
            timeGiven--;
        }
    },1000);
}

function padZero(value){
    return value<10 ? "0" + value : value;
}

window.onload = startTimer;

if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
}