<?php include ROOT . '/views/layouts/header.php'; ?>

<div class="container h-100" style="margin-top: 15%">
    <div class="row h-100 justify-content-center align-items-center">
        <form class="form-signin" method="post" action="/user/login/">
            <h1 class="h3 mb-3 font-weight-normal">Please login</h1>
            <label for="name" class="sr-only">Name</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Name" required autofocus>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Login</button>
        </form>
    </div>
</div>
</body>
</html>