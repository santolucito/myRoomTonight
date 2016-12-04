<?php
require_once('mongo_config.php');
?>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">


<form action="create_users.php" method="post">
	<h1> Make new user </h1>
		<p>
		<label for="name">Name:</label>
		<input type="text" name="name">
		</p>

	<h2> Restrictions - I require... </h2>
		<p>
		<input type="checkbox" name="pets" value="pets"> A pet-friendly space<br>
		<input type="checkbox" name="school" value="school"> A space more than 500m from a school<br>
		</p>

	<h2> Allowances - I have... </h2>
		<p>
		<input type="checkbox" name="sec8" value="sec8"> I have a Section 8 voucher<br>
		</p>
		<p>
		<input type="submit" value="Submit">
		</p>
</form>
