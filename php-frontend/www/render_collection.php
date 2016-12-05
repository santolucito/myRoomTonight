<?php
function render_as_json($collection){
  $items= $collection->find();
  $all = "";
  foreach($items as $v){
     $all = $all.(json_encode($v));
     //echo json_encode(array($v['name'],json_encode($v['allows']),json_encode($v['restricts'])));
     $all = $all."\n";
  }
  return $all;
}

function render_as_htmltable($collection){
$items= $collection->find();
$item_count = $items->count();
echo '
		<div class="row">';

echo $item_count . ' records found<br/>';

if($item_count > 0){

echo "
<table border=\"1\">
<thead>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Allowances</th>
		<th>Restrictions</th>
	</tr>
</thead>
<tbody>";
      foreach($items as $v){ 
	echo "<tr>
		<td>".$v['id']."</a></td>
		<td>".$v['name']."</td>
		<td>".json_encode($v['allowances'])."</td>
		<td>".json_encode($v['requirements'])."</td>
	</tr>";
	} 

echo "
		</tbody>
	</table>
</div>
";
}
}
?>
