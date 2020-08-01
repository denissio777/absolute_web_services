<?php

/**
 * Class Task
 */
class Task
{

    /**
     * @param $data
     * @return bool
     */
    public static function importTasks($data)
    {
        $db      = Db::getConnection();
        $title   = $data[0];
        $content = $data[1];
        $sql     = 'INSERT INTO tasks (title, content) '
                 .'VALUES (:title, :content)';
        $result  = $db->prepare($sql);
        $result->bindParam(':title', $title, PDO::PARAM_STR);
        $result->bindParam(':content', $content, PDO::PARAM_STR);
        if ($result) {
            return $result->execute();
        }
        return false;
    }

    /**
     * @return array
     */
    public static function getAllTasks()
    {
        $db        = Db::getConnection();
        $result    = $db->query('SELECT id, title, content FROM tasks WHERE is_done = 0 ORDER BY id ASC');
        $tasksList = [];
        $i         = 0;
        while ($row = $result->fetch()) {
            $tasksList[$i]['id']      = $row['id'];
            $tasksList[$i]['title']   = $row['title'];
            $tasksList[$i]['content'] = $row['content'];
            $i++;
        }
        return $tasksList;
    }

    /**
     * @param $user_id
     * @return array|bool
     */
    public static function getUserTasks($user_id)
    {
        $db     = Db::getConnection();
        $sql    = 'SELECT * FROM tasks WHERE user_id = :user_id AND is_done = 0';
        $result = $db->prepare($sql);
        $result->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();
        if ($result) {
            return $result->fetchAll();
        }
        return false;
    }

    /**
     * @param $user_id
     * @return array|bool
     */
    public static function getArchiveTasks($user_id)
    {
        $db     = Db::getConnection();
        $sql    = 'SELECT * FROM tasks WHERE user_id = :user_id AND is_done = 1';
        $result = $db->prepare($sql);
        $result->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();
        if ($result) {
            return $result->fetchAll();
        }
        return false;
    }

    /**
     * @param $user_id
     * @param $id
     * @return bool
     */
    public static function assignTask($user_id, $id)
    {
        $db     = Db::getConnection();
        $sql    = "UPDATE tasks SET user_id = :user_id WHERE id = :id";
        $result = $db->prepare($sql);
        $result->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $result->bindParam(':id', $id, PDO::PARAM_INT);
        if ($result) {
            return $result->execute();
        }
        return false;
    }

    /**
     * @param $id
     * @return bool
     */
    public static function closeTask($id)
    {
        $db     = Db::getConnection();
        $sql    = "UPDATE tasks SET is_done = 1 WHERE id = :id";
        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);
        if ($result) {
            return $result->execute();
        }
        return false;
    }
}