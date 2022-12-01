let room = document.getElementsByClassName("room")[0];

let state = "dark";
room.addEventListener("click",(e)=>{
    if(e.target.id === "switch"  && state === "dark"){
       room.style.backgroundColor = "yellow";
       state = "light";
    }else if (e.target.id === "switch"  && state === "light") {
        room.style.backgroundColor = "black";
        state = "dark";
    }
})
