<?php
declare(strict_types=1);

class Router
{
    /**
     * @var mixed
     */
    private $routes;

    /**
     * Router constructor.
     */
    public function __construct()
    {
        $routesPath   = ROOT . '/config/routes.php';
        $this->routes = include($routesPath);
    }

    /**
     * @return string
     */
    private function getURI(): string
    {
        if (!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    /**
     *
     */
    public function run(): void
    {
        $uri = $this->getURI();

        foreach ($this->routes as $uriPattern => $path) {

            if (preg_match("~$uriPattern~", $uri)) {
                $internalRoute  = preg_replace("~$uriPattern~", $path, $uri);
                $segments       = explode('/', $internalRoute);
                $controllerName = array_shift($segments);
                $controllerName = ucfirst($controllerName);
                $actionName     = array_shift($segments);
                $parameters     = $segments;
                $controllerFile = ROOT . '/app/controllers/' .
                                        $controllerName . '.php';

                if (file_exists($controllerFile)) {
                    require_once($controllerFile);
                }
                $controllerObject = new $controllerName;
                $result           = call_user_func_array([$controllerObject, $actionName], $parameters);

                if ($result != null) {
                    break;
                }
            }
        }
    }
}
