<?php

return [
    'user/register' => 'UserController/register',
    'user/login'    => 'UserController/login',
    'user/logout'   => 'UserController/logout',
    'task/edit'     => 'TaskController/edit',
    'task/list'     => 'TaskController/getList',
    'task/done'     => 'TaskController/done',
    'task/archive'  => 'TaskController/archive',
    'task/assign'   => 'TaskController/assign',
    'task'          => 'TaskController/index',
    'index.php'     => 'SiteController/index',
    ''              => 'SiteController/index',
];
