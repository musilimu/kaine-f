<%--<%@ include file="../connection.jsp" %>--%>
<section class="col mt-5">
    <h3>All charities</h3>
    <table class="table">
        <thead>
            <tr>
                <td><strong>Type</strong></td>
                <td><strong>Name</strong></td>
                <td><strong>Date</strong></td>
                <td><strong>Remove</strong></td>
            </tr>
        </thead>
        <tbody>
            <%                    
                try {
                ResultSet resultSet = con.createStatement().executeQuery("select * from charities;");
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%= resultSet.getString("type")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getString("date")%></td>
                <td><a href="${pageContext.request.contextPath}/charitiesDelete.jsp?bn_id=<%= resultSet.getString("bn_id")%>" class="btn btn-danger">remove</a></td>
            </tr>
            <%
                    }
                } catch (SQLException e) {

                }
            %>

        </tbody>
    </table>
</section>