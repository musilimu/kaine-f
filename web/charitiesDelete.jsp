<%@ include file="./connection.jsp" %>

<% 
    try{
    int bnid = Integer.parseInt(request.getParameter("bn_id"));

 ps=con.prepareStatement("delete from charities where bn_id = ?;");
                    ps.setInt(1, bnid);    
ps.execute();
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