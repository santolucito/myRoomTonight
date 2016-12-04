<?php
require_once('mongo_config.php');
?>
<form action="create_users.php" method="post">
<p>
<label for="name">Name:</label>
<input type="text" name="name">
</p>
<p>
<label for="age">Age:</label>
<input type="text" name="age">
</p>
<p>
<label for="likes">Likes:</label>
<input type="text" name="likes">
</p>
<p>
<input type="submit" value="Save">
</p>
</form>
