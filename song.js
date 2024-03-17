let play = true;
let song;
var audio = new Audio;
function soundPlay(x){
    if(play == true){
    audio.autoplay = false;
    audio.src = x;
    audio.autoplay = true;
    }
}

function songName(x){
    song = x;
    play = true;
    playSong(song);
}
function playSong(x){
    if(play == true){
        soundPlay(x);
        console.log(x);
    }
}
let link = document.getElementsByClassName('hook')[0];
link.onmouseover = function(e){
                  
}
let parrent = document.getElementById('parrent');
parrent.onmouseout = parrent.onmouseover = handler;

function handler(e){
    if(e.target.id == "parrent"){
        play = false;
        audio.pause();
    }
    console.log(play);
}





