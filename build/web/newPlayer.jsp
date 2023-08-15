<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../connection.jsp" %>

<%    String name = request.getParameter("name");
    String age = request.getParameter("age");   
    String nid = request.getParameter("id");

    Connection conn = (Connection) application.getAttribute("conn");
    try {
        conn.createStatement().executeQuery("insert into player (fullname, age, nid) values ('"+name+"', '"+age+"'::date, "+nid+");").close();
%>
<script>
//    location.href = "${pageContext.request.contextPath}/dashboard.jsp";
</script>
<%
    } catch (SQLException e) {
        e.printStackTrace();
     System.out.println("Connection failure."+ e.getMessage());

%>
<script>
    location.href = "${pageContext.request.contextPath}/dashboard.jsp";
</script>
<%
    }
%>
