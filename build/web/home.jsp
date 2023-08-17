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


<div class="row">

    <div class="col-sm-4">
        <div class="card m-3">
            <div class="card-body">
                <h3>External Links</h3>
                <div class="external-links">
                    <a href="https://www.ferwafa.rw">FERWAFA</a>
                    <a href="https://www.fifa.com">FIFA</a>
                    <a href="https://www.moh.gov.rw">MINISANTE</a>

                </div>

             <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/kaine/images/1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/kaine/images/2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/kaine/images/3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
            </div>

        </div>

    </div>
    <div class="col">
        <div class="card m-3">
            <div class="card-body">
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
            </div>
        </div>

    </div>
    <div class="col-sm-4">
        <div class="card m-3">
            <div class="card-body">
                <p class="announcement">Patients visit at CHUK on 20th July 2022.</p>
            </div>
        </div>
    </div>  
</div>


<script>
//    document.querySelector('.menu-icon').addEventListener('click', function () {
//        document.querySelector('nav').classList.toggle('active');
//    });
</script>



<%
    }
%>