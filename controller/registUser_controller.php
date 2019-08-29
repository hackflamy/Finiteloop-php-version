<?php
class registUserController{
	//require_once("models/registUser.php");

	public function registUser()
	{
		//echo "in regist User";
		if (isset($_POST['Cr_emailAddr'])) {
			$name = $_POST['Cr_Name'];
			$cell = $_POST['Cr_CellNo'];
			$email = $_POST['Cr_emailAddr'];
			$passwd = $_POST['Cr_Password'];
			$role = 'user'; // $_GET['Cr_Role'];

			if ($_POST["Cr_Password"] === $_POST["Cr_ConPassword"]) {
	   			// success!
				//echo "Correct Password";
				registUser::regist($name,$cell,$email,$passwd,$role);
				$_SESSION['Cr_Name'] = $name;
				$_SESSION['Cr_emailAddr'] = $email;
		  		require_once("view/home.php");
			}
			else {
	   			// failed :(
				require_once("view/registUser/registUser.php");
				echo "<p class=error>Passwords do not match</p>";
			}
	  	}	
	  	else {   
	  		require_once("view/registUser/registUser.php");
	  	}
	}
}

?>
