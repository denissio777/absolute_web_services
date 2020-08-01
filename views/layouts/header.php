<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Family Diary</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <div class="page-wrapper">
            <header id="header">
                <div class="header-middle">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="logo pull-left">
                                    <a href="/"><img src="/template/images/home/logo.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                        <?php if (User::isGuest()): ?>
                                            <a href="/user/login/" class="btn btn-primary my-2">LogIn</a>
                                            <a href="/user/register/" class="btn btn-secondary my-2">Register</a>
                                        <?php else: ?>
                                            <a href="/task/" class="btn btn-info my-2">Active Tasks</a>
                                            <a href="/task/archive/" class="btn btn-warning my-2">Archive</a>
                                            <a href="/user/logout/" class="btn btn-danger my-2">LogOut</a>
                                        <?php endif; ?>
                                        <?php if (User::isFather()): ?>
                                            <a href="/task/list/" class="btn btn-success my-2">Assign Tasks</a>
                                        <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </header>