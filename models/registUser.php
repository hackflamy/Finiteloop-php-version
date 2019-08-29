<?php
class registUser{
	   public $name;
        public $cell;
        public $email;
        public $passwd;
        public $role;

         function __construct($name, $cell,$email,$passwd,$role) {
            
            $this->name=$name;
            $this->cell=$cell;
            $this->email = $email;
            $this->passwd=$passwd;
             $this->role = $role;
        }

        public static function regist($name, $cell,$email,$passwd,$role){
          //  echo "In model";
		$sql = "INSERT INTO tblfoodcritic (Cr_Name,Cr_CellNo,Cr_emailAddr,Cr_Password,Cr_Role) VALUES ('$name', '$cell','$email','$passwd','$role')";    // semester hard coded for now
 		$db = Db::getInstance();
		$db->query($sql);
	}
}

?>