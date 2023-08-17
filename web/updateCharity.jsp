<%@include file="./partials/header.jsp" %>
<%@ include file="./connection.jsp" %>

<% 
    try{
    int bnid = Integer.parseInt(request.getParameter("ch_id"));
 ps=con.prepareStatement("select * from charities, beneficiaries where charities.ch_id = beneficiaries.ch_id and charities.ch_id = ?;");
                    ps.setInt(1, bnid);    
ResultSet resultSet = ps.executeQuery();
while(resultSet.next()) {
    %>
    <div class="container mt-4">
<div class="col-sm-6">
    <form
        class="form d-grid gap-2"
        action="${pageContext.request.contextPath}/updateCharityf.jsp?ch_id=<%=bnid%>"
        method="post"
        >
        <h2>Update charity for <%=resultSet.getString("f_name")%></h2>
        <div>
            <label for="name">Name</label>
            <input type="text" name="name" class="form-control" value="<%=resultSet.getString("name")%>" required />
        </div>
        <div>
            <label for="type">Type</label>
            <input type="text" name="type" class="form-control"  value="<%=resultSet.getString("type")%>" required />
        </div>
        <div>
            <label for="ben">Beneficiary Firstname</label>
            <input type="text" name="Firstname" class="form-control"  value="<%=resultSet.getString("f_name")%>" required />
        </div>
        <div>
            <label for="ben">Beneficiary Lastname</label>
            <input type="text" name="Lastname" class="form-control"   value="<%=resultSet.getString("l_name")%>" required />
        </div>
        <div>
            <label for="ben">Beneficiary Gender</label>
            <br>
            <select name="Gender" class="form-select">
                <option value="Male" <%="Male".equals(resultSet.getString("sex")) ? "selected" : "" %>>Male</option>         
                <option value="Female" <%="Female".equals(resultSet.getString("sex")) ? "selected" : "" %> >Female</option>

            </select>
        </div>
        <button class="btn btn-primary">Update charity</button>
    </form>
</div></div>

    <%
    }
   
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

<%@include file="./partials/footer.jsp" %>