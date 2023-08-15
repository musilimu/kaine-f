<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>


<%
    String url = "jdbc:postgresql://localhost/kaine";
    Properties props = new Properties();
    props.setProperty("user", "postgres");
    props.setProperty("password", "123456");
    // props.setProperty("ssl", "true");
    try {
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection(url, props);
        application.setAttribute("conn", conn);
} catch (SQLException e) {
    e.printStackTrace();
    }
%>
