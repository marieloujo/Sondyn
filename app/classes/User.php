<?php

class User {

    public $id;
    public $name;
    public $age;
    public $sexe;
    public $email;
    public $password;

    function __construct($email, $password) {
        $this->email = $email;
        $this->password = $password;
    }


    function login($con) {
        $users = $con->prepare("SELECT * FROM Users WHERE email='".$this->email."'"." and password='".$this->password."'");
        $users->execute();

        $this->email = null;
        $this->password = null;

        while ($user = $users->fetch(PDO::FETCH_OBJ)) {
            $this->id = $user->id;
            $this->name = $user->name;
            $this->sexe = $user->sexe;
            $this->age = $user->age;
            $this->email = $user->email;
            $this->password = $user->password;
            break;
        }
    }


} 

?>