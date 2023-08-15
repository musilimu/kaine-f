<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../connection.jsp" %>

<%    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Connection conn = (Connection) application.getAttribute("conn");
    try {
        conn.createStatement().executeQuery("INSERT INTO admin (u_name, u_password) VALUES ('" + username + "', '" + password + "');").close();
%>
<script>
    location.href = "${pageContext.request.contextPath}/auth";
</script>
<%
    } catch (SQLException e) {
        e.printStackTrace();
%>
<script>
    location.href = "${pageContext.request.contextPath}/auth";
</script>
<%
    }
%>
