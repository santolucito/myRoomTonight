<form action="insert_room.php" method="post">

<h1> Make new user </h1>
<p>
<label for="name">Name:</label>
<input type="text" name="name">
</p>

<h2> This room provides... </h2>
<p> (Allowances) </p>
<p>
<input type="checkbox" name="allows[]" value="pets"> A pet-friendly space<br>
<input type="checkbox" name="allows[]" value="school"> A space more than 500m from a school<br>
</p>

<h2> This room requires... </h2>
<p> (Restrictions) </p>
<p>
<input type="checkbox" name="restricts[]" value="sec8"> A Section 8 voucher<br>
</p>
<p>
<input type="submit" value="Submit">
</p>
</form>
