<%@page import="model.User"%>
<%
    Cookie[] cookie = request.getCookies();
    Cookie userCookie = null;
    User u = null;

    Boolean loggedIn = false;
    for (Cookie c : cookie) {
        if (c.getName().equals("user")) {
            userCookie = c;
            loggedIn = true;
        }
    }
%>

<%
    if (!loggedIn) {
%>
<a class = 'link' href='dangnhap' >Login</a>
<a class = 'link' href='dangky' >Signup</a>
<%
} 
    else {
    u = (User) session.getAttribute("user");
%>
    <div class = 'link' id="user" data-username="<%out.print(userCookie.getValue());%>">
    <div id = "user-option"> 
        <ul>
            <li><a class = 'link' href="thongtin">Thong Tin</a></li>
            <li><a class = 'link' href="yeuthich">Yeu Thich</a></li>
            <li>4</li>
            <li>5</li>
            <li><a class = 'link' href="logout">Dang Xuat</a></li>
        </ul>
    </div>
    <%
        out.print(userCookie.getValue());
    %>
</div>
<%
    }
%>
<%
    if(u == null){
    
    }
    else if(u.getType() == 1){
    %>
        <a class = 'link' href='admin'>admin</a>
    <%
    }

%>