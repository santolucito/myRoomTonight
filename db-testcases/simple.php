<?php
require_once('mongo_config.php');

error_reporting(E_ALL);
ini_set('display_errors', 1);


$c = $db->rooms;
print_r($c->drop());
$c->insert(array("name" => "New Haven Shelter", "requirements" => [ "HasSecEight" ], "allowances" => [ "AllowPets","NoSchool" ], "countId" =>  1 ));
$c->insert(array("name" => "Fair Haven Shelter", "requirements" => [ "HasSecEight" ], "allowances" => [ "AllowPets" ], "countId" =>  2 ));


$c = $db->users;
print_r($c->drop());
$c->insert(array("name" => "Sri", "requirements" => [ "AllowPets" ], "allowances" => [ "HasSecEight" ], "countId" =>  2 ));
$c->insert(array("name" => "Mark", "requirements" => [ "AllowPets","NoSchool" ], "allowances" => [ "HasSecEight" ], "countId" =>  1 ));

//$count = $c->count();
?>
