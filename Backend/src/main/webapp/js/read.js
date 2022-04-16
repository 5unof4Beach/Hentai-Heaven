var nutDoc = document.getElementById('doc')
var read = document.getElementById('khung-doc')

do = ()=>{
    console.log("pressed")
    read.classList.add("display")
}

nutDoc.addEventListener('click', do);

