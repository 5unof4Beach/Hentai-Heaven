var yeuThich = document.getElementById('yeu-thich')
var read = document.getElementById('khung-doc')

window.onscroll = function () {
    myFunction()
};

var navbar = document.getElementById("khung-doc");

var khungBaoDau = document.querySelector("#khung-bao-dau");

const sticky = navbar.offsetTop;

function myFunction() {
    console.log(sticky)
    if (window.pageYOffset + 100 >= sticky) {
//            if (header >= sticky) {
        navbar.classList.add("sticky");
    } else {
        navbar.classList.remove("sticky");
    }
}

yeuThich.onclick = ()=>{themVaoYeuThich()}

function themVaoYeuThich() {
    const userName = document.querySelector("#user");
    
    const idTruyen = document.querySelector("img");
    const tenTruyen = document.querySelector("#ten-truyen");
    const nxb = document.querySelector("#nxb");
    
    const mess = document.querySelector("#thong-bao");
    

    console.log('pressed')
    console.log(userName.value)
    console.log(idTruyen.value)
    console.log(tenTruyen.textContent)
    console.log(nxb.value)
    
    let options = {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(
        {
            name: userName.textContent,
            truyen:
            {
                id: idTruyen.value,
                ten: tenTruyen.value,
                nxb: nxb.value
            }
        })
    }
    
//    fetch('api-fav', options)
//    .then(res => {
//        return res.json()
//    })
//    .then(data => {
//        mess.innerHTML = data.mess
//        console.log(data)
//    })
}