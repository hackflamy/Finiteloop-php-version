<!DOCTYPE html>

<html>
<head runat="server">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width = device-width, initial-scale = 1" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet" type="text/css" />
        <link href='https://fonts.googleapis.com/css?family=Limelight' rel="stylesheet" type="text/css" />
        <link href="view/css/bootstrap.css?version2.0" rel ="stylesheet" />
<body>

    
        <form id="htm_holder" action="test.php" >
        <div class="container"><br />
            <nav class ="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mobile-menu" aria-expanded="false">
                            <span class ="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="pull-left" href="#"><img src="view/images/food.jpg" width="100px" height="60px" /></a>
                    </div>
                    <div class="collapse navbar-collapse" id="mobile-menu">
                        <ul class="nav navbar-nav">
                            <li><a href="home.php"><span class="glyphicon glyphicon-home"></span><span class="sr-only">(current)</span></a></li>
                            <li ><a href="#">View Review</a></li>
                            <li ><a href="#">View Reviews</a></li>
                            <li ><a href="#">Rate Restaurants</a></li>
                            <li ><a href="#">View Response</a></li>
                            <li ><a href="moreFun.php">More Fun</a></li>
                            <li ><a href='?controller=updateUser&action=updateUser&email="<?php $_SESSION["email"] ?>"'>Update Profile</a></li>
                        </ul>
                  
                    </div>
  
  
                </div>
            
                

       
      
      
         
      </div>
    </form>

      <form id="data_holder" action="test.php" >
      <div class="container">
        <ul>
            <div class="well">
                
            <?php
	            $conn= new mysqli('localhost', 'root', 'root', 'restaurant review');
	            $query="SELECT Res_Name,Res_logo FROM tblrestaurant";
	            $smt=$conn->prepare($query);
	            $smt->execute();
	            $smt->bind_result($rname,$rlogo);
	            $smt->store_result();
	            while ($smt->fetch()) {
		            echo "<li><img width='200px' height='150px' src='view/".$rlogo."' alt='' /><p>".$rname."</p></li>";
	            }
            ?>
            </div>
        </ul>
        </div>
    </form>
</body>