
<?php 

    include '../controllers/login.php'

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sondyn - login</title>

    <?php include 'sections/css_files.php' ?>
   
</head>


<body>

    <header>


        <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/89.jpg'); 
            background-repeat: no-repeat; background-size: cover; background-position: center center;">

            <div class="mask rgba-indigo-strong d-flex justify-content-center align-items-center">
                <div class="container">

                    <div class="row pt-lg-5 mt-lg-5">

                        <div class="col-md-6 mb-5 mt-md-0 mt-5 white-text text-center text-md-left  fadeInLeft"
                            data-wow-delay="0.3s">

                            <h3 class="display-4 font-weight-bold">Log in to continue</h3>
                            <hr class="hr-light">
                            <h6 class="mb-3">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Rem repellendus quasi fuga nesciunt dolorum nulla magnam 
                                veniam sapiente! Commodi sequi non animi ea dolor quisquam 
                                iste.
                            </h6>

                        </div>

                        <div class="col-md-6 col-xl-5 mb-4">
                            <!--Form-->
                            <form class="card wow fadeInRight needs-validation" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" 
                                method="POST" data-wow-delay="0.3s" id="login" novalidate>
                                <div class="card-body z-depth-2">

                                    <!--Header-->
                                    <div class="text-center">
                                        <h3 class="dark-grey-text">
                                            <strong>Connexion</strong>
                                        </h3>
                                    </div>

                                    <div class="text-danger">
                                        <?php echo $error; ?>
                                    </div>

                                    <!--Body-->
                                    <div class="md-form md-outline mt-4">
                                        <i class="fas fa-envelope prefix grey-text"></i>
                                        <input type="email" id="email" name="email" class="form-control" required>
                                        <label for="email">Votre email</label>
                                        <div class="invalid-feedback">
                                            Veuillez entrer un email valide.
                                        </div>
                                    </div>

                                    <div class="md-form md-outline mt-5">
                                        <i class="fas fa-lock prefix grey-text"></i>
                                        <input type="password" id="password" name="password" class="form-control" required>
                                        <label for="password">Votre mot de passe</label>
                                        <div class="invalid-feedback">
                                            Veuillez entrer votre mot de passe.
                                        </div>
                                    </div>

                                    <div class="text-center mt-5">
                                        <input type="submit" class="btn btn-indigo btn-rounded" value="Valider">
                                    </div>

                                </div>
                            </form>
                            <!--/.Form-->
                        </div>

                    </div>
                </div>
            </div>

        </div>


    </header>

    
  <?php include 'sections/js_files.php' ?>

</body>


</html>
