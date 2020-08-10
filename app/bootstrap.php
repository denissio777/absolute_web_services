<?php
declare(strict_types=1);

/**
 *
 */
spl_autoload_register(function (string $class) {
    $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    $paths = [
        '/models/',
        '/components/',
        '/controllers/',
    ];

    foreach ($paths as $path) {
        $path = ROOT . '/app' . $path . $class . '.php';

        if (is_readable($path)) {
            require $path;
        }
    }
});

