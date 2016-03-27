<?php
// DoReMi Controller
class DoReMiController{
    private $db;


    function __construct($mysql_host, $mysql_username, $mysql_password, $database_name){
        try{
            $this->db = new PDO(sprintf('mysql:host=%s;dbname=%s', $mysql_host, $database_name), $mysql_username, $mysql_password);
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch(PDOException $e){
            echo 'ERROR: ' . $e->getMessage();
        }
    }

    function __destruct(){

    }
}


