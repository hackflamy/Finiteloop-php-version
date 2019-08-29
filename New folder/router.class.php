<?php
class Rooter{
protected  $uri;
protected  $controller;
protected $action;
protected $params;
protected $route;
protected $method_prefix;
protected $language;

//////////////////////////////////////////////////////////////////////
public function getUri()
{
	return $this->uri;
}


public function getController()
{
	return $this->controller;
}


public function getAction()
{
	return $this->action;
}


public function getParams()
{
	return $this->params;
}


//public function __construct($uri)
//{
//print_r('Ok Router was called with uri:'.$uri);
//}



public function getRoute()
{
	return $this->route;
}



public function getMethodPrefix()
{
	return $this->language;
}


public function __construct($uri)
{
$this->uri=uridecode(trim($uri,'/'));


//Get default
$routes=Config::get('routes');
$this->route=Config::get('default_route');
$this->method_prefix=isset($routes[$this->route]) ? $Rootes[$this->route]:'';
$this->language=Config::get('default_language');
$this->controller=Config::get('default_controller');
$this->action=Config::get('default_action');

$uri_parts=explode('?', $this->uri);

//Get path like /log/controller/action/param1/param2/.../...
$path=$uri_parts[0];

$uri_parts=explode('/', $path);
echo '<pre>'; print_r($path_parts);
}


}
?>