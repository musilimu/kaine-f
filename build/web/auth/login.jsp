<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../connection.jsp" %>
<%   
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Connection conn = (Connection) application.getAttribute("conn");
    try {
        if (conn.createStatement().executeQuery("select * from users where username = '" + username + "' and password = '" + password + "';").next()) {
            session.setAttribute("user", username);
%>
<script>
    location.href = "${pageContext.request.contextPath}/dashboard.jsp";
</script>
<%
} else {
%>
<p class="alert alert-danger">account not found</p>
<%
    }

} catch (SQLException e) {
    e.printStackTrace();
%>
<script>
    location.href = "${pageContext.request.contextPath}/auth/login.jsp";
</script>
<%
    }
%>
