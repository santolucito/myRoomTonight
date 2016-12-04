<?php
//error_reporting(E_ALL);
//ini_set('display_errors', 1);
require_once('mongo_config.php');
require_once('render_collection.php');
require_once('head.php');

?>
<div class="container">
<h2>Users</h2>
<?php
$collection = $db->users;
render_collection($collection);

echo "<h2>Rooms</h2>";
$collection = $db->rooms;
render_collection($collection);
?>

<div class="row">
<h2>Optimal allocation of rooms is...</h2>

<?php
//convert all results to a json string
function json_render($collection){
$items= $collection->find();
  foreach($items as $v){
     echo '<p>';
     echo json_encode(array($v['name'],json_encode($v['allows']),json_encode($v['restricts'])));
     echo '</p>';
  }
}

json_render($db->users);
json_render($db->rooms);
//call haskell program on json object

//print results of haskell program
?>

</div>
</div>
