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
render_as_htmltable($collection);

echo "<h2>Rooms</h2>";
$collection = $db->rooms;
render_as_htmltable($collection);
?>

<div class="row">
<h2>Optimal allocation of rooms is...</h2>

<?php
//convert all results to a json string

$us = render_as_json($db->users);
$ss = render_as_json($db->rooms);

file_put_contents("/var/www/html/input.txt",$us."\n".$ss);
echo shell_exec("./myRoomTonight 2>&1");
//call haskell program on json object

//print results of haskell program
?>

</div>
</div>
