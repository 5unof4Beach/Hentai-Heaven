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
            <a id = "logo" href="home" style="text-decoration:none;"><h1>Hentai Heaven</h1></a>
        </div>
        
        <form action="kqtimkiem" style="display: flex; justify-content: center; align-items: center; width:30%; ">
            <input type="text" placeholder="Tim Kiem..." name="search" style="height: 90%; width: 90%;border-radius: 5px">
            <input type="submit" value="" placeholder="search"  style="display:none"/>
        </form>

        <div id="dang-nhap-dang-ky" >
            <%--<%@include file="userCheck.jsp" %>--%>
            <%--<%@include file="jsp/toInclude/userCheck.jsp" %>--%>
        </div>

    </header>