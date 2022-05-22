const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const ketQua = document.querySelector('#danh-muc-truyen')


layTruyen()
    .then(response =>{
        console.log('Tra ve ket qua thanh cong')
})
    .catch(logError());
    
function logResult(result) {
  console.log(result);
}

function logError(error) {
  console.log('Looks like there was a problem: \n', error);
}

function validateResponse(response) {
  if (!response.ok) {
    throw Error(response.statusText);
  }
  return response;
}

function readResponseAsJSON(response) {
  return response.json();
}

async function layTruyen(){
    var res = await fetch('search?search=' + urlParams.get('search'))
    res = await validateResponse(res)
    res = await readResponseAsJSON(res)
    await logResult(res)
    await display(res)
}

function display(json){
    console.log(json)
    
    if(json.length == 0){
        ketQua.innerHTML = '<h1>Khong co ket qua</h1>'
        return;
    }
    for(var key in Object.keys(json)){
        const t = document.createElement('a')
        t.classList.add("truyen")
        t.href = 'read?truyenID=' + json[key].id.trim()
        
        t.innerHTML = anhThumb(json[key].id).outerHTML + tenTruyen(json[key].ten).outerHTML
        ketQua.appendChild(t);
    }
    
    function anhThumb(id){
        const k = document.createElement('div');
        k.style = 'width: 85%; height: 80%; justify-content: center'
        const anh = document.createElement('img');
        anh.style = 'width: calc(100%*3/4); height: 100%; border-radius: 5px'
        anh.src = 'img/Thumbnails/'+ id.toLocaleString().trim() +'.jpg'
//        anh.src = 'img/Thumbnails/'+ 'DRM1' +'.jpg';
        console.log(id)
        k.appendChild(anh)
        return k
    }
    
    function tenTruyen(ten){
        const t = document.createElement('p');
        
        t.style = 'color: white;font-size: 30px;text-decoration: none;display: flex;width: 100%; height:15%;justify-content: center'
        t.innerHTML = ten
        
        return t
    }
    
}