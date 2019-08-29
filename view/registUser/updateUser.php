<html>
<head runat="server">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width = device-width, initial-scale = 1" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet" type="text/css" />
        <link href='https://fonts.googleapis.com/css?family=Limelight' rel="stylesheet" type="text/css" />
        <link href="registUser/view/css/bootstrap.css?version2.0" rel ="stylesheet" />
</head>
<input type=hidden name=controller value='updateUser' />
<input type=hidden name=action value='updateUser' />
<p>The User</p>

<form action='' method=POST>
	<p><input type=text name=Cr_Name value='<?php echo $User["Cr_Name"]; ?>'></p>
  	<p><input type=text name=Cr_CellNo value='<?php echo  $User["Cr_emailAddr"] ?>' /></p>
  	<p><input=submit value=Update name=submit /></p>
  	<?php 
  		echo $User; 
  		echo "<p>".$User["Cr_Name"]."</p>";
  	?>
</form>
</html>