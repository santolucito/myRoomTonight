<?php
require_once('mongo_config.php');
$collection = $db->users;

error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<?php
if(!empty($_POST)){
	$collection->insert(($_POST));
	echo $name . ' is registered!';
}
?>
