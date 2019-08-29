<?php
    class User {
        public $email;
        public $role;

        function __construct($email, $role) {
            $this->email = $email;
            $this->role = $role;
        }

        public static function find($email, $password) {
            $sql = "SELECT Cr_Role FROM tblfoodcritic WHERE Cr_emailAddr = '$email'";
            $result = User::query($sql);
            $r = "";
            $i = 0;

            foreach($result->fetchAll() as $roleOfUser) {
                $r = $roleOfUser['Cr_Role'];
                $i++;
            }

            if($i > 0){
                if($r == "user") {
                    $list = User::user($email, $password, $r);
                    return $list;
                }
                else if ($r == "admin") {
                    $list = User::admin($email, $password, $r);
                    return $list;
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }   

        }

        public static function user($email, $password, $role){
            $sql = "SELECT Cr_emailAddr FROM tblfoodcritic WHERE Cr_emailAddr =:email AND Cr_password=:password";
            $db = Db::getInstance();
            $stmt = $db->prepare($sql);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':password', $password);
            $stmt->execute();

            while($result = $stmt->fetch(PDO::FETCH_OBJ)) {
                $list = new User($result->Cr_emailAddr, $role);
            }

            return $list;
        }

        public static function Admin($email, $password, $role){
            $sql = "SELECT Cr_emailAddr FROM tblshopmanager  WHERE Cr_emailAddr=:email AND Cr_password=:password";
            $db = Db::getInstance();
            $stmt = $db->prepare($sql);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':password', $password);
            $stmt->execute();

            while($result = $stmt->fetch(PDO::FETCH_OBJ)) {
                $list = new User($result->Cr_emailAddr, $role);
            }

            return $list;
        }

        public static function query($query){
            $db = Db::getInstance();
            $req = $db->query($query);
            return $req;
        }
    }

?>