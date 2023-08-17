<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>


<%
       String url = "jdbc:postgresql://dpg-cjehpp6nk9qs73bmg1hg-a.oregon-postgres.render.com/fc_charities";
    Properties props = new Properties();
    props.setProperty("user", "kaine_user");
    props.setProperty("password", "2fyHCYhg8r0S7rQEcBp44ZnxP5E6pvkJ");
    props.setProperty("ssl", "true");
    props.setProperty("sslfactory", "org.postgresql.ssl.NonValidatingFactory"); // This disables server hostname verification, use it only if necessary.

    DriverManager.registerDriver(new org.postgresql.Driver());
    Connection con = DriverManager.getConnection(url, props);
    DriverManager.registerDriver(new org.postgresql.Driver());
    
    application.setAttribute("conn", con);
    PreparedStatement ps = null;    
    PreparedStatement ps2 = null;    
    PreparedStatement ps3 = null;
    PreparedStatement ps4 = null;

    ResultSet rs = null;

%>