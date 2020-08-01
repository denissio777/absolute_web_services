<?php include ROOT . '/views/layouts/header.php'; ?>

<div class="container h-100" style="margin-top: 15%">
    <div class="row h-100 justify-content-center align-items-center">
        <form class="form-signin" method="post" action="/user/register/">
            <h1 class="h3 mb-3 font-weight-normal">Please register</h1>
            <label for="name" class="sr-only">Name</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Name" required autofocus>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
            <div class="form-group">
                <select class="form-control" id="role" name="role">
                    <option>mother</option>
                    <option>father</option>
                    <option>child</option>
                </select>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Register</button>
        </form>
    </div>
</div>
</body>
</html>