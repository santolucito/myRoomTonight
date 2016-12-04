<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require_once('mongo_config.php');


$people = $collection->find();
$people_count = $people->count();

echo $people_count . ' records found<br/>';

if($people_count > 0){
?>

<table border="1">
<thead>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Age</th>
		<th>Likes</th>
	</tr>
</thead>
<tbody>
	<?php foreach($people as $v){ ?>
	<tr>
		<td><a href="update_user.php?name=<?php echo $v['name']; ?>"><?php echo $v['id']; ?></a></td>
		<td><?php echo $v['name']; ?></td>
		<td><?php echo $v['age']; ?></td>
		<td><?php echo $v['likes']; ?></td>
	</tr>
	<?php } ?>
</tbody>
</table>
<?php } ?>

Optimal allocation of rooms is...

<?php
if($people_count > 0){
//convert all results to a json string
  foreach($people as $v){
     echo json_encode($v);

  }
//call haskell program on json object

//print results of haskell program

}
?>

