<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Hentai Heaven</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='css/homepage.css'>
    <script src='js/main.js'></script>
</head>
<body>
    <header class="header">
        <div id="menu-the-loai" class="menu-the-loai" >

            <button id="dong-menu" onclick="dongMenu()">×</button>

            <div id = 'the-loai'>
                <ul>
                    <li><a href="#" class="link-the-loai">Trinh Tham</a></li>
                    <li><a href="#" class="link-the-loai">Truyen Tranh</a></li>
                    <li><a href="#" class="link-the-loai">Tieu Thuyet</a></li>
                    <li><a href="#" class="link-the-loai">Truyen Cuoi</a></li>
                    <li><a href="#" class="link-the-loai">Truyen Hentai</a></li>
                </ul>
            </div>
        </div>

        <div style="align-items: center;">
            <button id="mo-menu" onclick="moMenu()">&#9776;</button>
            <a id = "logo" href="#" style="text-decoration:none;"><h1>Hentai Heaven</h1></a>
        </div>
        
        <form action="search" style="display: flex; justify-content: center; align-items: center; width:30%; ">
            <input type="text" placeholder="Tim Kiem..." name="search" style="height: 90%; width: 90%;border-radius: 5px">
            <input type="submit" value="" placeholder="search"  style="display:none"/>
        </form>
        
        <div id="dang-nhap-dang-ky" >
            <%@include file="jsp/toInclude/userCheck.jsp" %>
        </div>

    </header>
    
    <div id="nd-chinh" >

        <div id = 'danh-muc-truyen'>
            <c:forEach items="${dsTruyen}" var='t'>
                <a class='truyen' href="read?truyenID=${t.id}">
                    <div style="width: 85%; height: 80%; justify-content: center">
                        <img style="width: calc(100%*3/4); height: 100%; border-radius: 5px " src="img/Thumbnails/${t.id}.jpg" alt="alt"/>
                    </div>
                    <p style="color: white;font-size: 30px;text-decoration: none;display: flex;width: 100%; height:15%;justify-content: center">
                        ${t.ten}
                    </p>
                </a>
            </c:forEach>
            <div class = 'truyen' onclick="themTruyen()"></div>
        </div>

    </div>

    <nav id="chuyen-trang">
        <ul>
            <li class = 'doi-so-trang'>
                <a href="#" class="link trang">1</a>
            </li>
            <li class = 'doi-so-trang'>
                <a href="#" class="link trang">2</a>
            </li>
            <li class = 'doi-so-trang'>
                <a href="#" class="link trang">3</a>
            </li>
            <li class = 'doi-so-trang'>
                <a href="#" class="link trang">Next</a>
            </li>

        </ul>
    </nav>


    <footer>

    </footer>
</body>
</html>



