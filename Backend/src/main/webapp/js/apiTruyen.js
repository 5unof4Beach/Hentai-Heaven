
const them = document.querySelector("#them")
const sua = document.querySelector("#sua")
const xoa = document.querySelector("#xoa")

them.onclick = ()=>{themTruyen()}
sua.onclick = ()=>(suaTruyen())
xoa.onclick = ()=>(xoaTruyen())

function themTruyen() {
    const id = document.getElementById("id")
    const ten = document.getElementById("ten")
    const nxb = document.getElementById("nxb")
    const mess = document.querySelector("#thong-bao")
    const theLoai = document.querySelector("#them-the-loai")
    
    let idTheLoai = theLoai.options[theLoai.selectedIndex].value


    console.log('pressed')
    console.log(idTheLoai)
    
    let options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            id: id.value,
            ten: ten.value,
            nxb: nxb.value,
            theLoai: idTheLoai
        })
    }
    
    fetch('api-truyen', options)
    .then(res => {
        return res.json()
    })
    .then(data => {
        mess.innerHTML = data.mess
        console.log(data)
    })
}

function suaTruyen() {
    const id = document.getElementById("id-sua")
    const ten = document.getElementById("ten-sua")
    const nxb = document.getElementById("nxb-sua")
    const mess = document.querySelector("#thong-bao2")
    const theLoai = document.querySelector("#sua-the-loai")
    
    let idTheLoai = theLoai.options[theLoai.selectedIndex].value
    
    console.log('pressed')
    console.log(idTheLoai)
    
    let options = {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            id: id.value,
            ten: ten.value,
            nxb: nxb.value,
            theLoai: idTheLoai
        })
    }
    
    fetch('api-truyen', options)
    .then(res => {
        return res.json()
    })
    .then(data => {
        mess.innerHTML = data.mess
        console.log(data)
    })
}

function xoaTruyen() {
    const id = document.getElementById("id-xoa")
    const mess = document.querySelector("#thong-bao3")
    
    let options = {
        method: 'DELETE',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            id: id.value,
        })
    }
    
    console.log('pressed')
    fetch('api-truyen', options)
    .then(res => {
        return res.json()
    })
    .then(data => {
        mess.innerHTML = data.mess
        console.log(data)
    })
}