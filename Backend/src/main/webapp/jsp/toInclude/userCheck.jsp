<%@page import="model.User"%>
<%--<%@include file="const.jsp" %>--%>
<%
    Cookie[] cookie = request.getCookies();

    Boolean loggedIn = false;
    for (Cookie c : cookie) {
        if (c.getName().equals("user")) {
%>
    <a class = 'link' href='thongtin' >
    <%
                out.print(c.getValue());
                    
                loggedIn = true;
            }
        }
    %>
</a>")

<%
    if (!loggedIn) {
        out.print("<a class = 'link' href='dangnhap' >Login</a>");
        out.print("<a class = 'link' href='dangky' >Signup</a>");
    }


%>

<% 
    User u = (User) session.getAttribute("user");
    
    if(u == null){
    
    }
    else if(u.getType() == 1) {
    %>
        <a class = 'link' href='admin'>admin</a>
    <%
    }
%>