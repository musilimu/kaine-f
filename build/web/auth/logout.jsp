<%
session.getAttribute("user");
session.invalidate();
response.sendRedirect("index.jsp");
%>