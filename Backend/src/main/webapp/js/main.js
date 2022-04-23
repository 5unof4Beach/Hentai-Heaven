function moMenu() {
    var a = document.getElementById("menu-the-loai");
    a.style.width = "300px";
    // a.style.height = "100%";
  }
  
function dongMenu() {
    var a = document.getElementById("menu-the-loai");
    a.style.width = "0";
    // a.style.height = "0px";
}

function themTruyen() {
  var box = document.createElement('div')
  box.className = 'truyen'
  box.style.height = '340px';
  box.style.width = '300px';
  // box.style.border = '1px solid black';
  
  var ds_truyen = document.getElementById('danh-muc-truyen');
  
  ds_truyen.appendChild(box);
}

nutThemTruyen = ()=>{
  var Truyens = document.getElementsByClassName('truyen');
  Truyens.length
}

const nutTim = document.getElementById('nut-tim')
const oTimKiem = document.getElementById('search')




