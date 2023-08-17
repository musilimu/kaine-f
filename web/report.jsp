<%@include file="./partials/header.jsp" %>
<%--<%@ include file="./connection.jsp" %>--%> 
<%@include file="./partials/footer.jsp"%>
<%    if ((sess == null) && (ss == null)) {
%>
<script>location.href = "${pageContext.request.contextPath}/auth";</script>
<%
} else {
%>
    <center>
      <div class="form">
        <form method="get" action="report1.jsp">
          <input type="date" name="from" />
          <input type="date" name="to" />
          <input type="submit" name="report" value="report" />
        </form>
      </div>
    </center>
<%
    }
%>
<%@include file="./partials/footer.jsp"%> 