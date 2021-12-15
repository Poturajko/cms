<?php
ini_set('display_errors', 1);
error_reporting(E_ERROR);
//todo отключить ошибки в продакшен

define('VG_ACCESS', true);

header('Content-type: text/html;charset=utf-8');
session_start();

require_once 'libraries/functions.php';
require_once 'config.php';
require_once 'core/base/settings/internal_settings.php';

use core\base\controller\BaseRoute;
use core\base\exceptions\DbException;
use core\base\exceptions\RouteException;

try {
    BaseRoute::routeDirection();
} catch (RouteException $e) {
    exit($e->getMessage());
} catch (DbException $e) {
    exit($e->getMessage());
}
