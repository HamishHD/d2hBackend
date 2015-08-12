<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 class Vehicle_detail_Model extends PIXOLO_Model 
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
 		//print_r($sql);
 	}
 } 
 
 ?>