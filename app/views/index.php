<?php

session_start();

if($_SESSION["connected"]) {
    
} else header("location: login.php");


?>


<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sondyn - Acceuil</title>

    <?php include 'sections/css_files.php' ?>

</head>


<body>
    
    <header>


        <div class="view">

            <div class="mask d-flex justify-content-center align-items-center">

                <div class="container">

                    <div class="row pt-lg-5 mt-lg-5">

                        <div class="col-md-8 mb-5 mt-md-0 mt-5 text-center text-md-left wow fadeInRight"
                            data-wow-delay="0.3s">

                            <h4 class="font-weight-bolder">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h5 >
                            <h5 class="mt-5 font-weight-light"> 1. Aimez-vous les boissons sucrées ? </h5>

                            <div class="custom-control custom-radio mt-4 ml-5">
                                <input type="radio" class="custom-control-input" id="positive_answer" name="answer">
                                <label class="custom-control-label" for="positive_answer">Oui</label>
                            </div>

                            <div class="custom-control custom-radio mt-3 ml-5">
                                <input type="radio" class="custom-control-input" id="negetive_answer" name="answer" checked>
                                <label class="custom-control-label" for="negetive_answer">Non</label>
                            </div>

                            <button type="button" class="btn btn-md mt-5 btn-primary">Suivant</button>


                        </div>

                    </div>

                </div>

            </div>

        </div> 

        <nav class="navbar navbar-dark rgba-indigo-strong fixed-bottom">
            <a class="navbar-brand ml-auto" href="#"><small>1 sur 20 questions</small></a>
        </nav>


    </header>

    <?php include 'sections/js_files.php' ?>

</body>


</html>