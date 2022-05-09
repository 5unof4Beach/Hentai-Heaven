<%@page import="model.User"%>
<%@include file="const.jsp" %>
<%
    Cookie[] cookie = request.getCookies();
    User u = (User)session.getAttribute("user");
    if(cookie == null){
        response.sendRedirect(request.getContextPath() + "/dangnhap");
    }
    else{
        Boolean loggedIn = false;
        for(Cookie c:cookie){
            if(c.getName().equals("user")){
                if(c.getValue() != null || !c.getValue().equals("")){
                    loggedIn = true;
                }
            }
        }
        if(!loggedIn){
            response.sendRedirect(request.getContextPath() + "/dangnhap");
        }
    }

%>