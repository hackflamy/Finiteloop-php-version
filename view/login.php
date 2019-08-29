<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
    <link href="view/css/login.css?v1" rel="stylesheet" />
    <title>Welcome to FiniteLoop</title>
</head>
<body>
    <header></header>
    <div id="main" class="form">
        <form action="" method="POST">
            <p><input type="email" name="email" placeholder="Email Address" class="form-control" ></p>
            <p><input type="password" name="pass" placeholder="Password" class="form-control"></p>
            <input type=hidden name=controller value=login ><input type=hidden name=action value=login >
            <input type="submit" name="login" value="submit" class="submit-btn"/>
            <input type="submit" name="register" value="Register" class="submit-btn"/>
        </form>
        <?php 
            require_once('routes.php');
        ?>
    </div>
    <footer></footer>
</body>
</html>