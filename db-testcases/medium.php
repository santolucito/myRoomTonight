<?php
require_once('mongo_config.php');

error_reporting(E_ALL);
ini_set('display_errors', 1);


$c = $db->rooms;
print_r($c->drop());
$c->insert(array("name" => "New Haven Shelter, RM1", "requirements" => [ "HasSecEight" ], "allowances" => [ "AllowPets","NoSchool" ], "countId" =>  1 ));
$c->insert(array("name" => "Fair Haven Shelter, RM1", "requirements" => [ "HasSecEight" ], "allowances" => [ "AllowPets" ], "countId" =>  2 ));
$c->insert(array("name" => "Fair Haven Shelter, RM2", "requirements" => [ ], "allowances" => [ "AllowPets","NoSchool" ], "countId" =>  3 ));
$c->insert(array("name" => "New Haven Shelter, RM2", "requirements" => [ "HasSecEight" ], "allowances" => [ "AllowPets","NoSchool" ], "countId" =>  4 ));
$c->insert(array("name" => "New Haven Shelter, RM3", "requirements" => [  ], "allowances" => [ "NoSchool" ], "countId" =>  5 ));


$c = $db->users;
print_r($c->drop());
$c->insert(array("name" => "Mark", "requirements" => [ "AllowPets","NoSchool" ], "allowances" => [ "HasSecEight" ], "countId" =>  1 ));
$c->insert(array("name" => "Sri", "requirements" => [ "AllowPets" ], "allowances" => [ "HasSecEight" ], "countId" =>  2 ));
$c->insert(array("name" => "Jack", "requirements" => [ ], "allowances" => [ ], "countId" =>  3 ));
$c->insert(array("name" => "Jane", "requirements" => [ "AllowPets","NoSchool" ], "allowances" => [ "HasSecEight" ], "countId" =>  4 ));
$c->insert(array("name" => "Jim", "requirements" => [ "NoSchool" ], "allowances" => ["HasRentControl"], "countId" =>  5 ));

//$count = $c->count();
?>
