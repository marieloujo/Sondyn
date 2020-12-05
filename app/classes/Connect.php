<?php


class Connect {

    public $servername;
    public $username;
    public $password;
    public $dbname;


    public function __construct($servername, $username, $password, $dbname) {
        $this->servername = $servername;
        $this->username = $username;
        $this->password = $password;
        $this->dbname = $dbname;
    }

    public function create_connection() {
        try {
            $conn = new PDO(
                "mysql:host=".$this->servername.";dbname=".$this->dbname,
                $this->username, 
                $this->password
            );
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conn;
        } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
            return null;
        }
    }


}


?> 