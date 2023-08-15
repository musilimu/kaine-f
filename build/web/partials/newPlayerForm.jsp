<div class="col-sm-6">
  <form
    class="form d-grid gap-2"
    action="${pageContext.request.contextPath}/newPlayer.jsp"
    method="post"
  >
    <h2>Register a new player</h2>
    <div>
      <label for="name">Player name</label>
      <input type="text" name="name" class="form-control" required />
    </div>
    <div>
      <label for="name">Player age</label>
      <input type="text" name="age" class="form-control" required />
    </div>
    <div>
      <label for="name">Player ID</label>
      <input type="text" name="id" class="form-control" required />
    </div>

    <button class="btn btn-primary">Register player</button>
  </form>
</div>
