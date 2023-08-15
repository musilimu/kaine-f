<%@ include file="../connection.jsp" %>
<section class="col">
    <h3>List of all Players</h3>
    <table class="table">
        <thead>
            <tr>
                <td><strong>N-Id</strong></td>
                <td><strong>Name</strong></td>
                <td><strong>Age</strong></td>
                <td><strong>Remove</strong></td>
            </tr>
        </thead>
        <tbody>
            <%                    Connection con = (Connection) application.getAttribute("conn");
                try {
                ResultSet resultSet = con.createStatement().executeQuery("select * from player;");
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%= resultSet.getString("nid")%></td>
                <td><%= resultSet.getString("age")%></td>
                <td><%= resultSet.getString("fullname")%></td>
                <td><button class="btn btn-danger">remove</button></td>
            </tr>
            <%
                    }
                } catch (SQLException e) {

                }
            %>

        </tbody>
    </table>
</section>