<?php

use \Bitrix\Main\Application;

$documentRoot = Application::getDocumentRoot();

if (file_exists($documentRoot.'/local/php_interface/lib/vendor.php')) {
    require_once $documentRoot.'/local/php_interface/lib/vendor.php';

    \Vendor::getInstance()->autoLoad();
}
