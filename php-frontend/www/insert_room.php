<?php
require_once('mongo_config.php');
require_once('head.php');
$collection = $db->rooms;

error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<?php
if(!empty($_POST)){
	$collection->insert(($_POST));
	echo $_POST['name']. ' is registered!';
}

header("Location: /read.php");
die();
?>
