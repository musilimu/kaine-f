<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../connection.jsp" %>

<%    String name = request.getParameter("name");
    String type = request.getParameter("type");   
    String firstname = request.getParameter("Firstname");    
    String lastname = request.getParameter("Lastname");    
    String gender = request.getParameter("Gender");


    Connection conn = (Connection) application.getAttribute("conn");
    try {
//          conn.createStatement()
          ps=con.prepareStatement("insert into beneficiaries (f_name, l_name, sex) values(?, ?, ?);");
                    ps.setString(1, firstname);           
                    ps.setString(2, lastname);       
                    ps.setString(3, gender);
                    ps.execute();
                    ps2=con.prepareStatement("select * from beneficiaries where f_name = ? and l_name = ?;");
                    ps2.setString(1, firstname);                     
                    ps2.setString(2, lastname); 
                    rs = ps2.executeQuery();
        if(rs.next()) {
     String bnid = rs.getString("bn_id");
                         String adminid = (String)session.getAttribute("adminid").toString();
                         ps3=con.prepareStatement("insert into charities (type, name, bn_id, admin_id) values(?, ?, ?, "+adminid+");");
                    ps3.setString(1, type);                    
                    ps3.setString(2, name);           
                    ps3.setInt(3, Integer.parseInt(bnid));   
                    ps3.execute();
                    ps4=con.prepareStatement("select ch_id from charities where type = ? and name = ? and bn_id = ? and admin_id = "+adminid+";");
                    ps4.setString(1, type);            
                    ps4.setString(2, name);          
                    ps4.setInt(3, Integer.parseInt(bnid));   
                         
rs = ps4.executeQuery();
if(rs.next()) {
String chid = rs.getString("ch_id");

ps3=con.prepareStatement("update beneficiaries set ch_id = "+chid+" where bn_id = "+bnid+";");
                         ps3.execute();
    %>
    <script>alert(`<%=bnid%>`);</script>
    <%
    }
    }
%>
<script>
    location.href = "${pageContext.request.contextPath}/dashboard.jsp";
</script>
<%
    } catch (SQLException e) {
        e.printStackTrace();
     System.out.println("Connection failure."+ e.getMessage());

%>
<script>
    alert(`"<%= e.getMessage()%>"`);
//    location.href = "${pageContext.request.contextPath}/dashboard.jsp";
</script>
<%
    }
%>