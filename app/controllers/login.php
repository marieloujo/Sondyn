<?php 


include '../classes/Connect.php';
include '../classes/User.php';


$error = "";

session_start();


if(isset($_SESSION["connected"])) {

  if($_SESSION["connected"]) {

    header("location: ../views/index.php");

  }

} 


validation();



function validation() {

  if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $Connect = new Connect("localhost","root","","Sondyn");
    $con = $Connect->create_connection();

    $user = new User(test_input($_POST["email"]), test_input($_POST["password"]));
    $user->login($con);

    if(is_null($user->id)) {
      
      global $error;
      $error = "email ou mot de passe invalid";
      
    } else {

      $_SESSION["connected"] = true;
      header("location: ../views/index.php");

    }

  }

}


function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}



?>
