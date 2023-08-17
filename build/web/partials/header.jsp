<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html data-bs-theme="dark">
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/css/bootstrap.min.css"
            />
        <style>

            img {
                width: 100%;
                object-fit: cover;
            }
/*  .menu-icon {
    display: none;
    cursor: pointer;
    font-size: 24px;
  }


  .left-section,
  .right-section,
  .middle-section {
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
  }

  .left-section {
    width: 25%;
  }

  .right-section {
    width: 25%;
    text-align: right;
  }

  .middle-section {
    width: 45%;
  }

  .external-links {
    display: flex;
    flex-direction: column;
  }

  .external-links a {
    margin-bottom: 5px;
    color: #007bff;
    text-decoration: none;
  }

  .announcement {
    font-style: italic;
  }

  .staff-list {
    list-style-type: none;
    padding: 0;
  }

  .staff-list li {
    margin-bottom: 10px;
  }



  @media only screen and (max-width: 768px) {
    .menu-icon {
      display: block;
    }

  }*/
    
        </style>
    </head>
    <body>
        <!-- Navigation Menu -->
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/"
                   >KAINE-FC</a
                >
                <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div
                    class="collapse navbar-collapse"
                    style="flex-grow: unset"
                    id="navbarNav"
                    >
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="home.jsp">Home</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="dashboard.jsp">Operations</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="report.jsp">Report</a>
                        </li>
                      
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                        <li class="nav-item">
                            <%
                                String sess = (String) session.getAttribute("user");
                                String ss = (String) session.getAttribute("type");
                                if ((sess == null) && (ss == null)){
                            %>
                            <a
                                class="nav-link"
                                href="${pageContext.request.contextPath}/auth/registration.jsp"
                                >sign up</a
                            >
                            <%
                            } else {
                            %>

                            <a
                                class="nav-link"
                                href="${pageContext.request.contextPath}/auth/logout.jsp"
                                > <strong>Hello</strong> <%= session.getAttribute("user")%> <span class="badge bg-info">logout</span></a
                            >
                            <%
                                    }
                            %>

                        </li>
                    </ul>
                </div>
            </div>
        </nav>
                            
                            
                            
                            
    </body>
</html>
