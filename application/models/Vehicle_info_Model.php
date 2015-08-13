<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 class Vehicle_info_Model extends PIXOLO_Model 
 { 
	 public $_table = 'vehicle_info';  
 
 	 //Write functions here 
 	 public function vehicleinfo($latitude,$longitude,$type)
 	 {
 	 	$lat = floatval($latitude);
 		$long = floatval($longitude);
 		$lat1 = $lat-0.50;
 		$lat2 = $lat+0.50;
 		$long1 = $long-0.50;
 		$long2 = $long+0.50;

 	 	$sql = "SELECT `register`.`id` AS `vendorid`, `register`.`firstname` AS `vendorname`, `register`.`route` AS `preferedroute`, `vehicle_details`.`id` AS `vehicleid`, `vehicle_details`.`make` AS `vehiclemake`, `vehicle_details`.`model` AS `vehiclemodel`, `vehicle_info`.`vehiclepic` AS `vehiclephoto` FROM `register`
			INNER JOIN `vehicle_details` ON `register`.`id` =`vehicle_details`.`pid` 
			INNER JOIN `vehicle_info` ON `register`.`id`=`vehicle_info`.`pid` 
			WHERE (`register`.`latitude` BETWEEN $lat1 AND $lat2) AND (`register`.`longitude` BETWEEN $long1 AND $long2) AND (`vehicle_details`.`v_type`= '$type')";
		$query = $this->db->query($sql)->result();
 		return $query;
 	 }
 } 
 
 ?>