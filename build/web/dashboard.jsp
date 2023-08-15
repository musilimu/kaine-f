<%@include file="./partials/header.jsp" %>
<%--<%@ include file="./connection.jsp" %>--%> 
<%@include file="./partials/footer.jsp"%>
<%    if ((sess == null) && (ss == null)) {
%>
<script>location.href = "${pageContext.request.contextPath}/auth";</script>
<%
} else {
%>
<main class="container mt-4">
    <div class="row">
        <%@include file="./partials/newPlayerForm.jsp"%>   
        <%@include file="./partials/playerTable.jsp"%>
    </div>
    <%@include file="./partials/charity.jsp"%>
</main>

<%
    }
%>