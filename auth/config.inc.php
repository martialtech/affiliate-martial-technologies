<?php 
define('HOST', 'localhost'); 
define('USER', 'root'); 
define('PASSWORD', ''); 
define('DATABASE', 'affiliate'); 
//SET TO THE NAME OF THE FOLDER YOUR INSTALLATION IS INSIDE 
$INSTALL_FOLDER = 'affiliate-pro'; 
define('CAN_REGISTER', 'any'); 
define('DEFAULT_ROLE', 'member'); 
define('SECURE', FALSE); 
$DOMAIN = $_SERVER['SERVER_NAME']; 
$protocol = stripos($_SERVER['SERVER_PROTOCOL'],'https') === true ? 'https://' : 'http://'; 
$main_url = $protocol.$DOMAIN; 
$domain_path = $protocol.$DOMAIN.'/'.$INSTALL_FOLDER; 
error_reporting(0); 
