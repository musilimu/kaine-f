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

<%-- 
    Document   : template
    Created on : Aug 15, 2023, 3:53:11 PM
    Author     : Private
--%>

  
    <div class="" style=" width: 95%; margin: auto; border: 2px solid graytext; height: 550px;">
  <div class="row">
    <div class="left- col-3">
      <h3>External Links</h3>
      <div class="external-links">
        <a href="https://www.ferwafa.rw">FERWAFA</a>
        <a href="https://www.fifa.com">FIFA</a>
        <a href="https://www.moh.gov.rw">MINISANTE</a>
         
      </div>
    </div>
    <div class="middle-section col-8">
      <h1>KAINE FC</h1>
      <ul class="staff-list">
        <li><strong>President:</strong> Jeff MUHINYUZA</li>
        <li><strong>Manager:</strong> Dreck GATO</li>
        <li><strong>Secretary:</strong> Jeanne KAYITERA</li>
        <li><strong>Captain:</strong> Rico Pie</li>
        <li><strong>Accountant:</strong> Monday Chrito</li>
      </ul>
    </div>
    <div class="right-section col-1">
      <p class="announcement">Patients visit at CHUK on 20th July 2022.</p>
    </div>
  </div>
  <script>
    document.querySelector('.menu-icon').addEventListener('click', function() {
      document.querySelector('nav').classList.toggle('active');
    });
  </script>
  </div>
  
</body>
</html>


<%
    }
%>