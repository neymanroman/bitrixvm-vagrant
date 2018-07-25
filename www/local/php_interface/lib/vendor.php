<?php

use \Bitrix\Main\Application;

class Vendor
{
    private static $instance;
    private $documentRoot;

    private function __construct()
    {
        $this->documentRoot = Application::getDocumentRoot();
    }

    public static function getInstance()
    {
        if (!(self::$instance instanceof self))
            self::$instance = new self;

        return self::$instance;
    }

    public function autoLoad()
    {
        $vendorPath = $this->documentRoot.'/../vendor/autoload.php';

        if (file_exists($vendorPath))
            require_once $vendorPath;
    }
}
