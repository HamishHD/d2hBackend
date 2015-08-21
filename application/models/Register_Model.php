<?php 
 defined('BASEPATH') OR exit('No direct script access allowed'); 
 
 class Register_model extends PIXOLO_Model 
 { 
	 public $_table = 'register';  
 
 	 //Write functions here 

 	 public function driverlogin($phone)
 	 {
 	 	$query = $this->db->query("SELECT * FROM `register` WHERE `phone`=$phone");
 		if ($query->num_rows() > 0)
 			{
	 				$query = $this->db->query("SELECT `register`.`firstname`, `register`.`lastname`, `register`.`phone`,`register`.`type`, `states`.`state_name`, `city_description`.`city`, `suburb`.`suburb_name`, `register`.`pincode`, `register`.`landline`, `register`.`taxi_type` FROM `register` 
	INNER JOIN `states` ON `register`.`state`=`states`.`id`
	INNER JOIN `city_description` ON `register`.`city`=`city_description`.`id`
	INNER JOIN `suburb` ON `register`.`suburb`= `suburb`.`id`
	WHERE `register`.`phone`= $phone")->result();

	 				return $query;
 		     
 			}
 		else
 		{
 			return false;
 		}

 		
 	 }
 } 
 
 ?>