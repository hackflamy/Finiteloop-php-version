<?php
    class LoginController {
        public function login() {
            if(isset($_POST{'register'}))   //register button has been clicked
            {

            //    require_once ('controller/registUser_controller.php');
              //   $controller = "registUser";
               //  $action = "registUser";

                 //call($controller, $action);
           //require_once('models/registUser.php');

            require_once("view/registUser/registUser.php");
        }
          /*  else
                  if(isset($_GET{'register'}))   //from register page
                  {

require_once ('controller/registUser_controller.php');
                 $controller = "registUser";
                 $action = "registUser";

                 call($controller, $action);
           require_once('models/registUser.php');

            require_once("view/registUser/registUser.php");

                  }
                  */
            else     
            {
                $email = filter_input(INPUT_POST, "email")? filter_input(INPUT_POST, "email") : '';
                $password = filter_input(INPUT_POST, "pass")? filter_input(INPUT_POST, "pass") : '';
                global $User;
                $User = User::find($email, $password);

                if(!$User) {
                    require_once("view/login.php");
                }
                else {
                    session_start();
                    //$GLOBALS['Cr_emailAddr'] = $email;
                    $_SESSION["email"] = $email;
                    if($User->role == "admin")  {
                        require_once("view/Home.php");
                    }
                    else if ($User->role = "user") {
                        require_once("view/Home.php");
                    }
                    else {
                        require_once("indexOphp.php");
                    }
                }
            }

        }
    }
?>