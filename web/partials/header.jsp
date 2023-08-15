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
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Matches</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">News</a>
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
                                > hello <%= session.getAttribute("user")%> <span class="badge bg-info">logout</span></a
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
