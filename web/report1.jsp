<%@page import="java.sql.ResultSet, java.sql.PreparedStatement"%>
<%@include file="./partials/header.jsp" %>
<%@include file="./connection.jsp" %>
<%@include file="./partials/footer.jsp"%>
<%    if ((sess == null) && (ss == null)) {
%>
<script>location.href = "${pageContext.request.contextPath}/auth";</script>
<%
} else {
%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>kaine fc</title>
    </head>
    <body>
        <div style="float: right;">

        <a class="success" href="#" onclick="window.print()" style=" color:white;background-color: green;padding: 8px;text-decoration: none;">Download PDF</a>
    
        <a  class="danger" style="color: white;background-color:  #ff3333;padding: 8px;text-decoration: none;" href="report.jsp">Back</a>
</div>
        <div class="container">
        <table class="table">
            
            <tr>
                <th>id</th>
                <th>First-name of Beneficiary</th>
                <th>Last-name of Beneficiary</th>
                <th>Name of Charity</th> 
                <th>Type</th>
                <th>Date</th>
            </tr>
        
            <c:if test="${not empty param.report}">
                <%
                    String from = request.getParameter("from");
                    String to = request.getParameter("to");
                    String query = "SELECT charities.ch_id, f_name, l_name, name, type, date FROM charities, beneficiaries WHERE date BETWEEN ?::timestamp AND ?::timestamp AND charities.ch_id = beneficiaries.ch_id";
                    ps = con.prepareStatement(query);
                    ps.setString(1, from);
                    ps.setString(2, to);

                    rs = ps.executeQuery();
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("ch_id")%></td>
                    <td><%= rs.getString("f_name")%></td>
                    <td><%= rs.getString("l_name")%></td>
                    <td><%= rs.getString("name")%></td>
                    <td><%= rs.getString("type")%></td>
                    <td><%= rs.getString("date")%></td>
                </tr>
                <%
                    }
                    rs.close();
                    ps.close();
                    con.close();
                %>
            </c:if>
        </table>
            </div>
    </body>
    
</html>
<%
    }
%>
