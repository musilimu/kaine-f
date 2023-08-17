<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../connection.jsp" %>

<%    String name = request.getParameter("name");
    String type = request.getParameter("type");   
    String firstname = request.getParameter("Firstname");    
    String lastname = request.getParameter("Lastname");    
    String gender = request.getParameter("Gender");

int bnid = Integer.parseInt(request.getParameter("ch_id"));
         
    Connection conn = (Connection) application.getAttribute("conn");
    try {
//     ps=con.prepareStatement("select * from charities, beneficiaries where charities.ch_id = beneficiaries.ch_id and charities.ch_id = ?;");
//                    ps.setInt(1, bnid);
           
          ps=con.prepareStatement("update beneficiaries set f_name = ?, l_name =  ? , sex = ? where ch_id = "+bnid+";");
                    ps.setString(1, firstname);           
                    ps.setString(2, lastname);        
                    ps.setString(3, gender);
                    ps.execute();
                    ps2=con.prepareStatement("update charities set type = ?, name =  ? where ch_id = "+bnid+";");
                        ps2.setString(1, type);                    
                    ps2.setString(2, name); 
                    ps2.execute();
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
    location.href = "${pageContext.request.contextPath}/dashboard.jsp";
</script>
<%
    }
%>
