<?php
declare(strict_types=1);

/**
 * Class User
 */
class User
{
    /**
     * @param $name
     * @param $role
     * @param $password
     * @return bool
     */
    public static function register($name, $role, $password)
    {
        $db     = ConnectToDB::getConnection();
        $sql    = 'INSERT INTO users (name, role, password) '
                .'VALUES (:name, :role, :password)';
        $result = $db->prepare($sql);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->bindParam(':role', $role, PDO::PARAM_STR);
        $result->bindParam(':password', $password, PDO::PARAM_STR);
        if ($result) {
            return $result->execute();
        }
        return false;
    }

    /**
     * @param $name
     * @return bool|mixed
     */
    public function checkUserData($name)
    {
        $db     = ConnectToDB::getConnection();
        $sql    = 'SELECT * FROM users WHERE name = :name';
        $result = $db->prepare($sql);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();
        if ($result) {
            return $result->fetch();
        }
        return false;
    }

    /**
     * @param $user
     */
    public static function auth($user)
    {
        $_SESSION['user_id']   = $user['id'];
        $_SESSION['user_role'] = $user['role'];
        $_SESSION['user_name'] = $user['name'];
    }

    /**
     * @return mixed
     */
    public static function checkLogged()
    {
        if (isset($_SESSION['user_id'])) {
            return [
                'user_id'   => $_SESSION['user_id'],
                'user_role' => $_SESSION['user_role'],
                'user_name' => $_SESSION['user_name'],
            ];
        }
        header("Location: /user/login");
    }

    /**
     * @return bool
     */
    public static function isGuest()
    {
        if (isset($_SESSION['user_id'])) {
            return false;
        }
        return true;
    }

    /**
     * @return bool
     */
    public static function isMother()
    {
        if (isset($_SESSION['user_id'])) {
            if ($_SESSION['user_role'] == 'mother')
            return true;
        }
        return false;
    }

    /**
     * @return bool
     */
    public static function isFather()
    {
        if (isset($_SESSION['user_id'])) {
            if ($_SESSION['user_role'] == 'father')
                return true;
        }
        return false;
    }

    /**
     * @return bool
     */
    public static function isChild()
    {
        if (isset($_SESSION['user_id'])) {
            if ($_SESSION['user_role'] == 'child')
                return true;
        }
        return false;
    }

    /**
     * @param $id
     * @return mixed
     */
    public static function getUserById($id)
    {
        $db     = ConnectToDB::getConnection();
        $sql    = 'SELECT * FROM users WHERE id = :id';
        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();
        return $result->fetch();
    }

    /**
     * @return array
     */
    public static function getAllUsers()
    {
        $db        = ConnectToDB::getConnection();
        $result    = $db->query('SELECT id, name FROM users ORDER BY id ASC');
        $usersList = [];
        $i = 0;
        while ($row = $result->fetch()) {
            $usersList[$i]['id']   = $row['id'];
            $usersList[$i]['name'] = $row['name'];
            $i++;
        }
        return $usersList;
    }

}
