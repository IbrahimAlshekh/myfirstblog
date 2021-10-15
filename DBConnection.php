<?php
/**
 * Created by PhpStorm.
 * User: praktikant
 * Date: 21.05.19
 * Time: 12:50
 */

class dbConnection{
    protected $hostname = 'mysql:host=localhost;dbname=blog';
    protected $username = 'root';
    protected $password = '';
    public $connection;

    public function connect(){
        try{
            $this->connection =new PDO($this->hostname,$this->username,$this->password);
            return $this->connection;
        }catch(PDOException $e){
            echo "Connection Error" . $e->getMessage();
        }
    }
    public function disConnect(){

        $this->connection=null;
    }
}
