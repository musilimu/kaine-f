<div class="col-sm-6">
    <form
        class="form d-grid gap-2"
        action="${pageContext.request.contextPath}/newPlayer.jsp"
        method="post"
        >
        <h2>Record a charity</h2>
        <div>
            <label for="name">Name</label>
            <input type="text" name="name" class="form-control" required />
        </div>
        <div>
            <label for="type">Type</label>
            <input type="text" name="type" class="form-control" required />
        </div>
        <div>
            <label for="ben">Beneficiary Firstname</label>
            <input type="text" name="Firstname" class="form-control" required />
        </div>
        <div>
            <label for="ben">Beneficiary Lastname</label>
            <input type="text" name="Lastname" class="form-control" required />
        </div>
        <div>
            <label for="ben">Beneficiary Gender</label>
            <br>
            <select name="Gender" class="form-select">
                <option value="Male">Male</option>         
                <option value="Female">Female</option>
            </select>
        </div>
        <button class="btn btn-primary">Register player</button>
    </form>
</div>
