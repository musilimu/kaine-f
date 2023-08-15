<%@include file="../partials/header.jsp" %>
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h2 class="card-title text-center mb-4">Login</h2>
          <form
            action="${pageContext.request.contextPath}/auth/login.jsp"
            method="post"
          >
            <div class="form-group">
              <label for="username">Username:</label>
              <input
                type="text"
                class="form-control"
                name="username"
                required
              />
            </div>
            <div class="form-group my-4">
              <label for="password">Password:</label>
              <input
                type="password"
                class="form-control"
                name="password"
                required
              />
            </div>
              <div class="d-flex gap-2 align-items-center">
                  <button type="submit" class="btn btn-primary btn-block">
              Sign in
            </button>
                  <a href="${pageContext.request.contextPath}/auth/registration.jsp">Don't have an account? register</a>
              </div>
            
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="../partials/footer.jsp" %>
