<%@page import="model.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <%
                User u = (User)session.getAttribute("user");
                if(u == null){
                    out.print("<a class = 'link' href='jsp/dangNhap.jsp' >Login</a>");
                    out.print("<a class = 'link' href='jsp/dangKy.jsp' >Signup</a>");
                }
                else{
                    out.print("<a class = 'link' href='#'>" + u.getUserName()+ "</a>");
                }
    
            %>
        </div>

    </header>
    
    <div id="nd-chinh" >

        <div id = 'danh-muc-truyen'>
            <div class = 'truyen'> 
                <a href="read?truyenID=DRM1">

                </a>
            </div>
            <div class = 'truyen'>
                <a href="read?truyenID=DRM2">

                </a>
            </div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen'></div>
            <div class = 'truyen' onclick="themTruyen()"></div>
        </div>

        <!-- <div id = 'quang-cao'>
            <iframe width="250" height="144" src="https://www.youtube.com/embed/NjpKlAuQuE0?autoplay=1" allow="autoplay"></iframe>
        </div> -->

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



