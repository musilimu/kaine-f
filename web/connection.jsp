<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>


<%
    String url = "jdbc:postgresql://localhost/fc_charities";
    Properties props = new Properties();
    props.setProperty("user", "postgres");
    props.setProperty("password", "123456");

    DriverManager.registerDriver(new org.postgresql.Driver());
    Connection con = DriverManager.getConnection(url, props);
    
    application.setAttribute("conn", con);
    PreparedStatement ps = null;    
    PreparedStatement ps2 = null;    
    PreparedStatement ps3 = null;   
    PreparedStatement ps4 = null;



    ResultSet rs = null;

%>