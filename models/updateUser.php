<?php
class updateUser
{
		public $name;
        public $cell;
        public $email;
        //public $passwd;
       // public $role;

         function __construct($name, $cell,$email) {
            
            $this->name=$name;
            $this->cell=$cell;
            $this->email = $email;
            //$this->passwd=$passwd;
            // $this->role = $role;
        }

        	public static function find($email) {
      		$db = Db::getInstance();
      		$req = $db->prepare('SELECT * FROM tblfoodcritic WHERE Cr_emailAddr = :email');
      		// the query was prepared, now we replace :username with our actual $username value
          $req->bindParam(':email', $email);
      		$req->execute();
      		$userUp = $req->fetch();   // fetch; we know there is just one student

      		return new User($userUp['Cr_Name'], $userUp['Cr_CellNo']);
	     }



          public static function getUser() {
              session_start();
              $email = $_SESSION["email"];
              $db = Db::getInstance();
              $sql = "SELECT Cr_Name, Cr_CellNo, Cr_emailAddr FROM tblfoodcritic WHERE Cr_emailAddr = :email";
              $stmt = $db->prepare($sql);
              $stmt->bindParam(':email', $email);
              $stmt->execute();
              $list = $stmt->fetchAll();

              return $list;
          }

        public static function updateU($name, $cell,$email)
        {
        	$db=Db::getInstance();
        	$sql="UPDATE tblfoodcritic(Cr_Name,Cr_CellNo) SET Cr_Name = '".$name."',Cr_CellNo='".$cell."' WHERE Cr_emailAddr=$email  ";

        	$db->prepare($sql);
        	$db->query($sql);
        }

}
?>