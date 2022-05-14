const id = document.getElementById("id")
const ten = document.getElementById("ten")
const nxb = document.getElementById("nxb")
const them = document.querySelector('button')
const mess = document.querySelector('p')

them.addEventListener('click', themTruyen)

function themTruyen() {
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