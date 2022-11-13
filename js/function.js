function handleClickMenuDropDown(e){
    var boxMenuTaret = document.getElementById("boxMenu");
    boxMenuTaret.classList.forEach(item => {
        if(item === "hidden"){
            boxMenuTaret.classList.remove("hidden");
            boxMenuTaret.classList.add("block");
        }else if(item === "block"){
            boxMenuTaret.classList.remove("block");
            boxMenuTaret.classList.add("hidden");
        }
    })
}
function handleClickBtnSky(e) {
    var boxSlideShow = document.getElementById("boxSlideShow");
    boxSlideShow.classList.forEach(item =>{
        if(item === "bg-black"){
            boxSlideShow.classList.remove("bg-black")
            boxSlideShow.classList.add("bg-sky-600")
            // var img = document.getElementsByClassName("absolute -top-56 right-0 w-[700px] -rotate-45 delay-200 transform-gpu transition ease-in-out hover:rotate-0");
            var img = document.getElementById("imageSlideShow");
            console.log(img.src)
            img.src = document.location.origin + document.location.pathname + "images/air-force-1-white.png";
        }
    })
}
function handleClickBtnBlack(e) {
    var boxSlideShow = document.getElementById("boxSlideShow");
    boxSlideShow.classList.forEach(item =>{
        if(item === "bg-sky-600"){
            boxSlideShow.classList.remove("bg-sky-600")
            boxSlideShow.classList.add("bg-black")
            // var img = document.getElementsByClassName("absolute -top-56 right-0 w-[700px] -rotate-45 delay-200 transform-gpu transition ease-in-out hover:rotate-0");
            var img = document.getElementById("imageSlideShow");
            img.src = document.location.origin + document.location.pathname +  "images/air-force-1-black.png";
        }
    })
}