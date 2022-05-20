<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header">
    <div id="menu-the-loai" class="menu-the-loai" >

        <button id="dong-menu" onclick="dongMenu()">�</button>

        <div id = 'the-loai'>
            <ul>
                <c:forEach items= "${sessionScope.dsTheLoai}" var='t'>
                    <li><a href="search?theloai=${t.id}" class="link-the-loai">${t.ten}</a></li>
                </c:forEach>
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
        <%@include file="userCheck.jsp" %>
    </div>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</header>