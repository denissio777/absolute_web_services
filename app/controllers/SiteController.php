<?php
declare(strict_types=1);

/**
 * Class SiteController
 */
class SiteController
{
    /**
     * @return bool
     */
    public function index(): bool
    {
        require_once(ROOT . '/views/site/index.php');
        return true;
    }
}
