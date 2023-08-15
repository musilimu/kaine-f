<%@ include file="../connection.jsp" %>
<section class="col">
    <h3>List of all beneficiaries</h3>
    <table class="table">
        <thead>
            <tr>
                <td><strong>First Name</strong></td>
                <td><strong>Last Name</strong></td>
                <td><strong>Gender</strong></td>
                <td><strong>Remove</strong></td>
            </tr>
        </thead>
        <tbody>
            <%                    
                try {
                ResultSet resultSet = con.createStatement().executeQuery("select * from beneficiaries;");
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%= resultSet.getString("f_name")%></td>
                <td><%= resultSet.getString("l_name")%></td>
                <td><%= resultSet.getString("sex")%></td>
                <td><a href="${pageContext.request.contextPath}/beneficiariesDelete.jsp?bn_id=<%= resultSet.getString("bn_id")%>" class="btn btn-danger">remove</a></td>
            </tr>
            <%
                    }
                } catch (SQLException e) {

                }
            %>

        </tbody>
    </table>
</section>