<?php
require_once('mongo_config.php');
require_once('head.php');
$collection = $db->users;

error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<?php
if(!empty($_POST)){
	$count = $collection->count();
  $_POST['countId'] = $count+1;
	$collection->insert($_POST);
	echo $_POST['name'] . ' is registered!';
}

header("Location: /read.php");
die();
?>
