<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 class Vehicle_detail_model extends PIXOLO_Model 
 { 

 
 	 //Write functions here 
 	public function positionofdriver($latitude,$longitude,$type)
 	{
 		$lat = floatval($latitude);
 		$long = floatval($longitude);
 		$lat1 = $lat-0.50;
 		$lat2 = $lat+0.50;
 		$long1 = $long-0.50;
 		$long2 = $long+0.50;
 		$sql = "SELECT * FROM `vehicle_details` WHERE (`latitude` BETWEEN $lat1 AND $lat2) AND (`longitude` BETWEEN $long1 AND $long2) AND (`v_type`= '$type')";
 		$query = $this->db->query($sql)->result();
 		return $query;
 		
 	}

 	public function vehicleinfo($latitude,$longitude,$type)
 	 {
 	 	$lat = floatval($latitude);
 		$long = floatval($longitude);
 		$lat1 = $lat-0.500;
 		$lat2 = $lat+0.500;
 		$long1 = $long-0.500;
 		$long2 = $long+0.500;
 	 	
			
			$sql = "SELECT `register`.`id` AS `vendorid`, `register`.`firstname` AS `vendorname`, `register`.`lastname` AS `lastname`,`register`.`route` AS `preferedroute`, `vehicle_details`.`id` AS `vehicleid`, `vehicle_details`.`make` AS `vehiclemake`, `vehicle_details`.`model` AS `vehiclemodel`, `vehicle_tempo_model`.`image` AS `vehiclephoto`, `register`.`phone` AS `phone_no`, `vehicle_details`.`latitude` AS `latitude`, `vehicle_details`.`longitude` AS `longitude`";

			if($type == "tempo")
			{
				$sql = $sql." `vehicle_details`.`trolley_length` AS `trollylength`, `vehicle_details`.`ton` AS `ton` ";
			};

			$sql = $sql."FROM `register`
			INNER JOIN `vehicle_details` ON `register`.`id` =`vehicle_details`.`pid` 
			INNER JOIN `vehicle_tempo_model` ON `vehicle_details`.`model`=`vehicle_tempo_model`.`id`			
			WHERE `register`.`latitude` BETWEEN $lat1 AND $lat2 
			AND `register`.`longitude` BETWEEN $long1 AND $long2 
			AND `vehicle_details`.`v_type`= '$type'";
		        $query = $this->db->query($sql)->result();
				return $query;
				
		
 		
 	 }
 } 
 
 ?>