<?php
require_once('mongo_config.php');
require_once('head.php');
?>

<form action="insert_user.php" method="post">
	<title>My Room Tonight</title>
	<div class="container">
		<div class="row">
			<div class="intro-message">
				<h1> I am looking for a place tonight... </h1>
					<p>
						<label for="name">Name:</label>
						<input type="text" name="name">
					</p>
				<hr class="intro-divider">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4">
				<h2> I require... </h2>
				<p>Restrictions</p>
				<p>
					<input type="checkbox" name="requirements[]" value="AllowPets"> A pet-friendly space<br>
					<input type="checkbox" name="requirements[]" value="NoSchool"> A space more than 500m from a school<br>
				</p>
			</div>
      <div class="col-lg-4">
				<h2>I have... </h2><p>Allowances</p>
				<p>
				<input type="checkbox" name="allowances[]" value="HasSecEight"> I have a Section 8 voucher<br>
				<input type="checkbox" name="allowances[]" value="HasRentControl"> I have rent control <br>
				</p>
		   </div>
       <div class="col-lg-4">
				<h2> I want... </h2> <p>Preferences</p>
				<p>
				<input type="checkbox" name="roommate" value="roomate"> Other roommates<br>
				<input type="checkbox" name="window" value="window"> Windows and Sunlight<br>
				</p>
			</div>
		</div>

	<br><br><br>

		<div class="row">
			<div class="col-lg-12">
				<p><input class="btn btn-default btn-lg" type="submit" value="Submit"></p>
			</div>
		</div>
	</div>
</form>
</body>
