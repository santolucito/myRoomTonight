<?php
require_once('mongo_config.php');
require_once('head.php');
?>

<form action="insert_room.php" method="post">
	<div class="container">
		<div class="row">
			<div class="intro-message">
				<h1> I can provide a place tonight... </h1>
					<p>
						<label for="name">Name:</label>
						<input type="text" name="name">
					</p>
				<hr class="intro-divider">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4">
				<h2> My locations requires... </h2>
				<p>Restrictions</p>
				<p>
					<input type="checkbox" name="requirements[]" value="HasSecEight"> A Section 8 voucher<br>
					<input type="checkbox" name="requirements[]" value="HasRentControl"> Rent control <br>
				</p>
			</div>
      <div class="col-lg-4">
				<h2>My location provides... </h2><p>Allowances</p>
				<p>
					<input type="checkbox" name="allowances[]" value="AllowPets"> A pet-friendly space<br>
					<input type="checkbox" name="allowances[]" value="NoSchool"> A space more than 500m from a school<br>
				</p>
		   </div>
			</div>

	<br><br><br>

		<div class="row">
			<div class="col-lg-12">
				<p><input class="btn btn-default btn-lg" type="submit" value="Submit"></p>
			</div>
	</div>
</form>
</body>
