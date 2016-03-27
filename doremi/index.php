<?php
require 'vendor/autoload.php';
require 'DoReMiController.php';

$secret = json_decode(file_get_contents('secret.json'));

$router = new AltoRouter();
$controller = new DoReMiController($secret->host, $secret->user, $secret->pass, $secret->db);

$router->map('GET', '/', function(){

});

$match = $router->match();

if($match && is_callable($match['target'])){
    call_user_func_array($match['target'], $match['params']);
}else{
    // no route matched
    header($_SERVER["SERVER_PROTOCOL"] . ' 404 not found');
}

