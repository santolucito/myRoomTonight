<?php

function render_collection($collection){
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
