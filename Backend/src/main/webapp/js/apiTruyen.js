
const them = document.querySelector("#them")
const sua = document.querySelector("#sua")
const xoa = document.querySelector("#xoa")

//them.addEventListener('click', themTruyen)
them.addEventListener('click', themTruyen)
sua.addEventListener('click', suaTruyen)
xoa.addEventListener('click', xoaTruyen)

function themTruyen() {
    const id = document.getElementById("id")
    const ten = document.getElementById("ten")
    const nxb = document.getElementById("nxb")
    const mess = document.querySelector("#thong-bao")


    console.log('pressed')
    fetch('api-truyen', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            id: id.value,
            ten: ten.value,
            nxb: nxb.value
        })
    })
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
    
    console.log('pressed')
    fetch('api-truyen', {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            id: id.value,
            ten: ten.value,
            nxb: nxb.value
        })
    })
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
    
    console.log('pressed')
    fetch('api-truyen', {
        method: 'DELETE',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            id: id.value,
        })
    })
            .then(res => {
                return res.json()
            })
            .then(data => {
                mess.innerHTML = data.mess
                console.log(data)
            })
}