<?php
require_once('mongo_config.php');
?>
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<?php
	echo json_encode($_POST);
if(!empty($_POST)){
        $people = $collection->find();
	$people_count = $people->count();
	
	$id = $people_count + 1;
	$name = $_POST['name'];
	$age = $_POST['age'];
	$likes = $_POST['likes'];
	
	$person = array('id'=>$id, 'name'=>$name, 'age'=>$age, 'likes'=>$likes);
	
	$collection->insert(($_POST));
	echo $name . ' is registered!';
}
?>
