loadImage = (url, successCallback, errorCallback) =>{
    var img = new Image();
    img.onload = () =>{    
        successCallback();
    }

    img.onerror = () =>{
        errorCallback();
    }
    img.src = url;
} 

var imgLink = 'https://github.com/5unof4Beach/Hentai-Heaven/blob/main/Images/Me%20and%20Mina.png';

