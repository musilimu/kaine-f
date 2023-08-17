<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../connection.jsp" %>
<%   
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Connection conn = (Connection) application.getAttribute("conn");
    try {
    ResultSet resultSet = conn.createStatement().executeQuery("select * from admin where u_name = '" + username + "' and u_password = '" + password + "';");
        if (resultSet.next()) {
            session.setAttribute("user", username);            
            session.setAttribute("adminid", resultSet.getString("admin_id"));

%>
<script>
    location.href = "${pageContext.request.contextPath}/home.jsp";
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
