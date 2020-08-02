<?php

/**
 * Class UserController
 */
class UserController
{
    /**
     * @return bool
     */
    public function actionRegister()
    {
        $name     = false;
        $role     = false;
        $password = false;

        if (isset($_POST['submit'])) {
            $name     = $_POST['name'];
            $role     = $_POST['role'];
            $password = $_POST['password'];
            $name     = trim($name);
            $name     = stripslashes($name);
            $name     = htmlspecialchars($name);
            $password = trim($password);
            $password = stripslashes($password);
            $password = htmlspecialchars($password);
            $password = password_hash($password, PASSWORD_DEFAULT);

            User::register($name, $role, $password);
            header("Location: /user/login");
        }
        require_once(ROOT . '/views/user/register.php');
        return true;
    }

    /**
     * @return bool
     */
    public function actionLogin()
    {
        $name     = false;
        $password = false;

        if (isset($_POST['submit'])) {
            $userInstance = new User();
            $name         = $_POST['name'];
            $password     = $_POST['password'];
            $name         = trim($name);
            $name         = stripslashes($name);
            $name         = htmlspecialchars($name);
            $password     = trim($password);
            $password     = stripslashes($password);
            $password     = htmlspecialchars($password);

            $user = $userInstance->checkUserData($name);
            if (password_verify($password, $user['password'])) {
                User::auth($user);
                header("Location: /task");
            }
        }
        require_once(ROOT . '/views/user/login.php');
        return true;
    }

    /**
     *
     */
    public function actionLogout()
    {
        session_start();
        unset($_SESSION["user_id"]);
        header("Location: /");
    }

}
