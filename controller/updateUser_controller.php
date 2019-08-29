<?php
	class updateUser_controller{
		public function updateUser()
		{
			session_start();
			if(isset($_POST['Cr_emailAddr']))
			{
				$name=$_POST['Cr_Name'];
				$cell=$_POST['Cr_CellNo'];
				$email=$_POST['Cr_emailAddr'];
				//$passwd=$_POST['Cr_Password']
				//$role=$_POST['Cr_Role'];
				updateUser::find($email);
				updateUser::updateU($name,$cell,$email);
				require_once("view/registUser/updateUser.php");
			} else {
				$user = updateUser::getUser();
				require_once("view/registUser/updateUser.php");
			}
		}

	}

?>