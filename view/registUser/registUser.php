<html>
<head runat="server">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width = device-width, initial-scale = 1" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet" type="text/css" />
        <link href='https://fonts.googleapis.com/css?family=Limelight' rel="stylesheet" type="text/css" />
        <link href="view/css/bootstrap.css?version2.0" rel ="stylesheet" />
        <link href="view/css/error.css" rel=stylesheet />


</head>
<?php
//if ($_GET["password"] === $_GET["confirm_password"]) {
   // success!
	//echo "Correct Password";
//}
//else {
   // failed :(
//	echo "Password does not matched";
//}

?>

<h1>COMPLETE YOUR PROFILE</h1>
<form name=myform action='' method='POST' >
<input type=hidden name=controller value='registUser'>
<input type=hidden name=action value='registUser'>
<table>
<tr><td>Full Name</td><td><input type=text name="Cr_Name"></td></tr>
<tr><td>E-mail</td><td><input type=email name="Cr_emailAddr"></td></tr>
<tr><td>Cell Number</td><td><input type=text name="Cr_CellNo" minlength=10 maxlength="10"></td></tr>
<tr><td>Password</td><td><input type=password id="password" name="Cr_Password" minlength="4"></td></tr>
<tr><td>Confirm Password</td><td><input type=password id="confirm_password" name="Cr_ConPassword" minlength="4"n></td></tr>

</table>

<input type=submit name = "register" value=Submit>
</form>
</html>


