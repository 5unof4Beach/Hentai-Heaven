<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href="css/trangDoc.css">
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v13.0" nonce="BXLSoInD"></script>
</head>
<body>
    <%@include file="toInclude/userCheckToRead.jsp" %>
    <div id="khung-bao-dau">
        <div id="anh-bia">
            <img  src="img/Thumbnails/${truyen.id}.jpg" alt="Anh bia"/>
        </div>
        <div id="thong-tin">
            <div>Tên Truyen: ${truyen.ten}</div>
            <div>Nha xuat ban: ${truyen.nxb}</div>
            <div>Danh gia: ${truyen.rating}</div>
            <button id="doc">
                Doc Truyen
            </button>
        </div>
    </div>
    
    <iframe id = "khung-doc"src="jsp/reader.jsp"></iframe>
    <script>
        var nutDoc = document.getElementById('doc')
        var read = document.getElementById('khung-doc')
        
        let dong = 1;

        function mo(){
            if(dong === 1){
                console.log("pressed")
                read.style.display = "flex";
                dong = 0;
            }
            else{
                console.log("pressed")
                read.style.display = "none";
                dong = 1;
            }
        }

        nutDoc.addEventListener('click', mo);
    </script>
    
    <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="700px" data-numposts="5"></div>
    
    <footer></footer>
</body>
</html>