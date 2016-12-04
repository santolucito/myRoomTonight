<?php
require_once('mongo_config.php');
?>
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
function check_empty($ar){
    $empty = 0;
    if(is_array($ar)){
        foreach($ar as $v){
            if(empty($v)){
              $empty = 1;
            }
        }
    }
return $empty;
}	
?>

<?php
if(!empty($_POST)){
	$people = $collection->find();
	$people_count = $people->count();
	
	$empty = check_empty($_POST);
	if($empty != 1){
		$id = $people_count + 1;
		$name = $_POST['name'];
		$age = $_POST['age'];
		$likes = $_POST['likes'];
		
		$person = array('id'=>$id, 'name'=>$name, 'age'=>$age, 'likes'=>$likes);
		
		$collection->insert($person);
		echo $name . ' is registered!';
	}else{
		echo 'Please fill out all the fields!';
	}
}
?>
