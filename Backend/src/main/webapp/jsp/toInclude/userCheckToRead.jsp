<%@page import="model.User"%>
<%@include file="const.jsp" %>
<%
    User u = (User)session.getAttribute("user");
    if(u == null){
        request.getRequestDispatcher("dangNhap.jsp").forward(request, response);
    }
    
%>