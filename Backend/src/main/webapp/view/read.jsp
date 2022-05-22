<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Hentai Heaven</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href="${pageContext.request.contextPath}/css/trangDoc.css">
    <link rel='stylesheet' type='text/css' media='screen' href="${pageContext.request.contextPath}/css/homepage.css">
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v13.0" nonce="BXLSoInD"></script>
</head>
<body>
    <%@include file="toInclude/userCheckToRead.jsp" %>
    <%@include file="toInclude/header.jsp" %>
    <div id="khung-bao-dau">
        <div id="anh-bia">
            <img  src="img/Thumbnails/${truyen.id}.jpg" alt="Anh bia"/>
        </div>
        
            <div class="thong-tin" id="thong-tin" data-idtruyen="${truyen.id}">
                <div id="ten-truyen" data-ten="${truyen.ten}">Tên Truyen: ${truyen.ten}</div>
                <div id="nxb" data-nxb="${truyen.nxb}">Nha xuat ban: ${truyen.nxb}</div>
                <div>Danh gia: ${truyen.rating}</div>
                <button id="yeu-thich">
                    Thêm Vào Yêu Thích
                </button>
                <h2 id="thong-bao"></h2>
            </div>
        
        </div>
    <iframe id = "khung-doc" src="view/reader.jsp?id="${truyen.id}></iframe>
    
    <div class = 'extra'>
        
    </div>
            
    
    <script src="${pageContext.request.contextPath}/js/read.js"></script>
    
<!--    <div id="fb-root"></div>

    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "109547965090378");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v13.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>-->
    
</body>
</html>