<%@include file="./partials/header.jsp" %>
<%--<%@ include file="./connection.jsp" %>--%> 
<%@include file="./partials/footer.jsp"%>
<%    if ((sess == null) && (ss == null)) {
%>
<script>location.href = "${pageContext.request.contextPath}/auth";</script>
<%
} else {
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>kaine fc</title>
</head>
<body>
<center>
    <div class="form">
    <form method="get" action="report1.jsp">
        <input type="date" name="from">
        <input type="date" name="to">
        <input type="submit" name="report" value="report">
    </form>
        </div>
    </center>
</body>
</html>



<%
    }
%>