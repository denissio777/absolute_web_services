<?php
declare(strict_types=1);

/**
 * Class TaskController
 */
class TaskController
{
    /**
     * @return bool
     */
    public function index(): bool
    {
        if (User::checkLogged()) {
            $userTasks = Task::getUserTasks($_SESSION['user_id']);
            require_once(ROOT . '/views/task/index.php');
            return true;
        }
        return false;
    }

    /**
     * @return bool
     */
    public function edit(): bool
    {
        if (User::checkLogged()) {
            $row = 1;
            if (($handle = fopen($_FILES['csv']['tmp_name'], "r")) !== FALSE) {
                while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                    $num = count($data);
                    $row++;
                    for ($c = 0; $c < $num; $c++) {
                        Task::importTasks($data);
                    }
                }
                fclose($handle);
            }
            header("Location: /task");
            return true;
        }
        return false;
    }

    /**
     * @return bool
     */
    public function getList(): bool
    {
        if (User::checkLogged()) {
            $tasks = Task::getAllTasks();
            $users = User::getAllUsers();
            require_once(ROOT . '/views/task/list.php');
            return true;
        }
        return false;
    }

    /**
     * @return bool
     */
    public function assign(): bool
    {
        if (User::checkLogged()) {
            $res = explode(',', $_POST['assign-to']);
            $userId = (int)$res[0];
            $taskId = (int)$res[1];
            Task::assignTask($userId, $taskId);
            header("Location: /task/list");
            return true;
        }
        return false;
    }

    /**
     * @return bool
     */
    public function done(): bool
    {
        if (User::checkLogged()) {
            $taskId    = $_POST['done'];
            $userTasks = Task::closeTask($taskId);
            header("Location: /task/index");
            return true;
        }
        return false;
    }

    /**
     * @return bool
     */
    public function archive(): bool
    {
        if (User::checkLogged()) {
            $tasks = Task::getArchiveTasks($_SESSION['user_id']);
            require_once(ROOT . '/views/task/archive.php');
            return true;
        }
        return false;
    }
}
