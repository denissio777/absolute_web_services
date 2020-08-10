<?php
declare(strict_types=1);

/**
 * Class ConnectToDB
 */
class ConnectToDB
{
    /**
     * @return PDO
     */
    public static function getConnection()
    {
        $paramsPath = ROOT . '/config/db.php';
        $params     = include($paramsPath);
        $dsn        = "mysql:host={$params['host']};
                       dbname={$params['dbname']}";
        $db         = new PDO($dsn,$params['user'],
                              $params['password']);
        $db->exec("set names utf8");
        return $db;
    }
}
