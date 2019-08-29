<?php
    function call($controller, $action) {
        require_once('controller/' . $controller . '_controller.php');
//echo "controller is ".$controller." action is ".$action;
        switch($controller){
            case 'login':
//                    echo "now to logincontroller"
            $controller = new LoginController();
            require_once('models/user.php');
            break;
            case 'registUser':
  //          echo "now to registusercontroller";
            $controller= new registUserController();
            require_once('models/registUser.php');
            break;
            case 'updateUser':
                $controller= new updateUser_controller();
                require_once('models/user.php');
                require_once('models/updateUser.php');
            default:
            break;
        }

        session_start();
        $controller->{ $action }();
    }

    $controllers = array('login' => array('login'), 'registUser'=>array('registUser'),'updateUser'=>array('updateUser'));

    if(array_key_exists($controller, $controllers)){
        if(in_array($action, $controllers[$controller])){
            call($controller, $action);
        }else {
//call($controller, $action);
            echo "some error with function name in controller...?";
        }
    }else {

    }
?>