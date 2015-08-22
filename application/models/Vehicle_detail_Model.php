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

 	public function vehicleinfo($latitude1,$longitude1,$latitude2,$longitude2,$type)
 	 {
 	 		 	
			
			$sql = "SELECT `register`.`id` AS `vendorid`, `register`.`firstname` AS `vendorfirstname`, `register`.`lastname` AS `vendorlastname`,`register`.`route` AS `preferedroute`, `vehicle_details`.`id` AS `vehicleid`, `register`.`phone` AS `vendorcontact`, `vehicle_details`.`sub_vendor_contact` AS `drivercontact`, `vehicle_details`.`latitude` AS `latitude`, `vehicle_details`.`longitude` AS `longitude`,";

			if($type == "tempo")
			{
				$sql = $sql. " `vehicle_tempo_make`.`vehicle_name` AS `vehiclemake`, `vehicle_tempo_model`.`vehiclemodel_name` AS `vehiclemodel`, `vehicle_tempo_model`.`image` AS `vehiclephoto`, `vehicle_details`.`trolley_length` AS `trollylength`, `vehicle_details`.`ton` AS `ton` ";
			}elseif ($type == "tourist") {
				$sql = $sql. " `vehicle_tourist_make`.`vehicle_name` AS `vehiclemake`, `vehicle_tourist_model`.`vehiclemodel_name` AS `vehiclemodel`,`vehicle_tourist_model`.`image` AS `vehiclephoto`";
			};

			$sql = $sql." FROM `register`
			INNER JOIN `vehicle_details` ON `register`.`id` =`vehicle_details`.`pid` ";

			if($type == "tempo")
			{
				$sql = $sql."INNER JOIN `vehicle_tempo_model` ON `vehicle_details`.`model`=`vehicle_tempo_model`.`id` 
				INNER JOIN `vehicle_tempo_make` ON `vehicle_details`.`make`=`vehicle_tempo_make`.`id`";
			}elseif($type == "tourist"){
				$sql = $sql."INNER JOIN `vehicle_tourist_model` ON `vehicle_details`.`model`=`vehicle_tourist_model`.`id` 
				INNER JOIN `vehicle_tourist_make` ON `vehicle_details`.`make`=`vehicle_tourist_make`.`id`";
			};

			$sql = $sql." WHERE `vehicle_details`.`latitude` BETWEEN $latitude1 AND $latitude2 
			AND `vehicle_details`.`longitude` BETWEEN $longitude1 AND $longitude2 
			AND `vehicle_details`.`v_type`= '$type'
			AND `vehicle_details`.`activestatus`=1
			AND `vehicle_details`.`availabilitystatus`=1";
		        $query = $this->db->query($sql)->result();
				return $query;
				
		
 		
 	 }
 } 
 
 ?>